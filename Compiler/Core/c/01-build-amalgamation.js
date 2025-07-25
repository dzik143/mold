const fs = require('fs');

const arrayOfSources = [
  'MoldCore.c',
  'MoldError.c',
  'MoldForDriver.c',
  'MoldMemory.c',
  'MoldPrint.c',
  'MoldVariantArray.c',
  'MoldVariantMap.c',
  'MoldVariantObject.c',
  'MoldVariantString.c',
];

const isFileProcessed = {};

const warning = '// File generated by 01-build-amalgamation.js from original *.c and *.h files.\n'
              + '// DO NOT EDIT THIS FILE MANUALLY, IT WILL GO AWAY!\n\n'
              + '// Generated on: ' + new Date().toISOString() + '\n\n';

let finalHeaders = warning;
let finalSources = warning;

function _emitOneLine(oneLine, isHeader) {
  if (isHeader) {
    finalHeaders += oneLine + '\n';
  } else {
    finalSources += oneLine + '\n';
  }
}

function _processOneFile(path, isHeader) {
  if (!isFileProcessed[path]) {
    console.log('Processing', path, '...');

    isFileProcessed[path] = true;

    _emitOneLine('// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@', isHeader);
    _emitOneLine('// Original file: >>> ' + path + ' <<<', isHeader);
    _emitOneLine('// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@', isHeader);
    _emitOneLine('', isHeader);

    const source = fs.readFileSync(path).toString();
    lines = source.split(/\r?\n/);

    lines.forEach((oneLine) => {
      const matchIncludeResult = oneLine.match(/#include "(.*)"/);

      if (matchIncludeResult) {
        _processOneFile(matchIncludeResult[1], true);

      } else {
        _emitOneLine(oneLine, isHeader);
      }
    });
  }
}

arrayOfSources.forEach((fname) => {
  _processOneFile(fname);
});

fs.writeFileSync('_libmold-amalgamation_.h', finalHeaders + finalSources);
