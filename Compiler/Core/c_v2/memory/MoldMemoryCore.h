#ifndef _MoldMemoryCore_H
#define _MoldMemoryCore_H

#include <windows.h>

void *__MOLD_Memory_reserveRawBuffer(SIZE_T size);
void  __MOLD_Memory_releaseRawBuffer(void *ptr);

#endif /* _MoldMemoryCore_H */
