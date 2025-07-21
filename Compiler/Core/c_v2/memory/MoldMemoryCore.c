#include <stdio.h>
#include "MoldMemoryCore.h"

// -----------------------------------------------------------------------------
//                   Private constants and typedefs
// -----------------------------------------------------------------------------

#define MAX_NUMBER_OF_RESERVED_BUFFERS 16

typedef enum {
  RESERVE_PAGES_ERROR = 0,
  COMMIT_PAGE_ERROR,
  TOO_MANY_BUFFERS_ERROR,
  BUFFER_SIZE_EXCEEDED_ERROR,
  RELEASE_BUFFER_ERROR,
} ErrorId_t;

typedef struct {
  PVOID startAddress;
  SIZE_T size;
} ReservedBufferEntry_t;

// -----------------------------------------------------------------------------
//                            Global variables
// -----------------------------------------------------------------------------

static int g_pageSize           = 0;
static int g_reservedBuffersCnt = 0;

static ReservedBufferEntry_t
       g_reservedBuffers[MAX_NUMBER_OF_RESERVED_BUFFERS] = { 0 };

// -----------------------------------------------------------------------------
//                          Internal helpers
// -----------------------------------------------------------------------------

static void _reportError(ErrorId_t errorId) {
  const char *msg = "unknown error";

  switch (errorId) {
    case BUFFER_SIZE_EXCEEDED_ERROR: msg = "reserved buffer size exceeded"; break;
    case COMMIT_PAGE_ERROR:          msg = "commit page(s) failed"; break;
    case RESERVE_PAGES_ERROR:        msg = "reserve page(s) failed"; break;
    case TOO_MANY_BUFFERS_ERROR:     msg = "too many buffers reserved"; break;
    case RELEASE_BUFFER_ERROR:       msg = "cannot to release page(s)"; break;
  }

  fprintf(stderr, "runtime error: %s\n"
                  "Last WINAPI error is %ld.\n", msg, GetLastError());
  exit(-1);
}

// Exception filter called when access violation is generated.
// In this way we can:
// - commit page into the physical memory on the first access,
// - detect out of memory error, when the last reserved page is reserved.
// Possible improvement: Reuse
static LONG WINAPI _exceptionHandler(struct _EXCEPTION_POINTERS *ExceptionInfo) {
  LONG rv = EXCEPTION_EXECUTE_HANDLER;

  if (ExceptionInfo -> ExceptionRecord -> ExceptionCode == STATUS_ACCESS_VIOLATION) {
    // Access violation.
    // Check out is a hit inside one of reserved buffer.
    void *ptr = (void *) ExceptionInfo -> ExceptionRecord -> ExceptionInformation[1];

    // Possible improvement: Use binary search?
    for (int i = 0; i < g_reservedBuffersCnt; i++) {
      // Precalculate reserved buffer range in the virtual space.
      void *reservedBufferStartPtr = g_reservedBuffers[i].startAddress;
      void *reservedBufferEndPtr   = reservedBufferStartPtr + g_reservedBuffers[i].size;

      if ((ptr >= reservedBufferStartPtr) &&
          (ptr <  reservedBufferEndPtr)) {
        // We're trying to access one of our reserved buffer, but at
        // region, which is not commited yet (not mapped to the physical
        // memory).

        // Fail if it's the last page in the buffer.
        // No more pages to commit.
        if (ptr >= reservedBufferEndPtr - g_pageSize) {
          _reportError(BUFFER_SIZE_EXCEEDED_ERROR);
        }

        // Commit next page from the reserved buffer.
        if (VirtualAlloc(ptr, g_pageSize, MEM_COMMIT, PAGE_READWRITE)) {
          // Success - next page was commited into the physical memory.
          rv = EXCEPTION_CONTINUE_EXECUTION;

        } else {
          // Error - something wrong while commiting the page into the
          // physical memory.
           _reportError(COMMIT_PAGE_ERROR);
        }
      }
    }
  }

  return rv;
}

// Getch page size and set up exception handler needed for other
// __MOLD_Memory_xxx() calls.
// Possible improvement: Reuse main exception handler ?
static void __initOnceIfNeeded() {
  if (g_pageSize == 0) {
    // Get page size on the running maching.
    SYSTEM_INFO sSysInfo;
    GetSystemInfo(&sSysInfo);
    g_pageSize = sSysInfo.dwPageSize;

    // Set up exception handler to catch page fault and commit reserved
    // pages on demand.
    AddVectoredExceptionHandler(1, _exceptionHandler);
  }
}

// -----------------------------------------------------------------------------
//                            Public API
// -----------------------------------------------------------------------------

void *__MOLD_Memory_reserveRawBuffer(SIZE_T size) {
  __initOnceIfNeeded();

  if (g_reservedBuffersCnt > MAX_NUMBER_OF_RESERVED_BUFFERS) {
    _reportError(TOO_MANY_BUFFERS_ERROR);
  }

  // 1. Align desired max. buffer size to page size.
  // 2. Add extra page guard at the end to detect "out of memory".
  size = ((size + 2*g_pageSize - 1) & (-g_pageSize));

  // Reserve the whole buffer in virtual process space (virtual memory),
  // but do *NOT* commit pages into physical space yet.
  void *ptr = VirtualAlloc(NULL, size, MEM_RESERVE, PAGE_READWRITE);

  if (ptr == NULL) {
    _reportError(RESERVE_PAGES_ERROR);
  }

  // Save meta data of allocated buffer to handle commit reserved
  // pages during page fault exceptions.
  g_reservedBuffers[g_reservedBuffersCnt].startAddress = ptr;
  g_reservedBuffers[g_reservedBuffersCnt].size         = size;
  g_reservedBuffersCnt++;

  return ptr;
}

void __MOLD_Memory_releaseRawBuffer(void *ptr) {
  /*
  // TODO
  if (!VirtualFree(ptr, size, freeType)) {
    _reportError(RELEASE_BUFFER_ERROR);
  } */
}
