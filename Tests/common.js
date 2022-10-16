/******************************************************************************/
/*                                                                            */
/* This file is part of Mold project.                                         */
/* Copyright (C) 2015, 2020 Sylwester Wysocki (sw143@wp.pl)                   */
/*                                                                            */
/* This program is free software: you can redistribute it and/or modify       */
/* it under the terms of the GNU General Public License as published by       */
/* the Free Software Foundation, either version 3 of the License, or          */
/* (at your option) any later version.                                        */
/*                                                                            */
/* This program is distributed in the hope that it will be useful,            */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of             */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              */
/* GNU General Public License for more details.                               */
/*                                                                            */
/* You should have received a copy of the GNU General Public License          */
/* along with this program. If not, see <http://www.gnu.org/licenses/>        */
/*                                                                            */
/******************************************************************************/

const fs      = require('fs')
const path    = require('path')
const should  = require('should')
const exec    = require('child_process').exec
const process = require('process')

let g_testSingleFileOnly = null
let g_binaryPath         = 'mold'

for (let idx = 2; idx < process.argv.length; idx++) {
  if (process.argv[idx] === '--testName') {
    g_testSingleFileOnly = process.argv[idx + 1] + '.mold.test'
    idx++

  } else if (process.argv[idx] === '--binaryPath') {
    g_binaryPath = process.argv[idx + 1]
    idx++
  }
}

const filterResult = function(text, options) {
  let rv = text

  if (options.ignoreWhiteSpaces || options.ignoreEmptyLines) {
    rv = ''

    const lines = text.split(/\r?\n/)

    for (let line of lines) {
      if (options.ignoreWhiteSpaces) {
        line = line.trim()
      }

      if (!options.ignoreEmptyLines || ((line !== '') && (line !== '\n') && (line !== '\r') && (line !== '\r\n'))) {
        rv += line
      }
    }
  }

  return rv
}

const createInputOutputFilesPairSuite = options => {
  const binaryPath = options.binaryPath || g_binaryPath

  suite(options.title, function() {
    const arrayOfFiles           = fs.readdirSync(options.examplesPath)
    const extraParametersPattern = options.extraParameters || ''

    const _createTest = testData => test(testData['title'], function(done) {
      this.timeout(60000)

      const extraParameters = extraParametersPattern.replace('${testGroupId}', testData.groupId)

      // Run mold interpreter on test source file.
      fs.writeFileSync('./temp/source.mold', testData['source'])
      const cmd = binaryPath + ' ' + extraParameters + ' ./temp/source.mold'

      exec(cmd, (error, stdout, stderr) => {
        const filteredStdout = filterResult(stdout, options)
        const filteredStderr = filterResult(stderr, options)
        const expectedOutput = filterResult(testData['expectedOutput'], options)
        const expectedError  = filterResult(testData['expectedError'], options)

        // Check stdout.
        if (filteredStdout !== expectedOutput) {
          console.log('ERROR! Bad stdout detected for test \'' + testData['title'] + '\'.')

          console.log('SOURCE:\r\n' + testData['source'])
          console.log('---')

          console.log('OUTPUT:\r\n' + stdout)
          console.log('---')

          console.log('EXPECTED_OUTPUT:\r\n' + testData['expectedOutput'])
          console.log('---')
          process.exit()
        }

        // Check stderr.
        if (filteredStderr !== expectedError) {
          console.log('ERROR! Bad stderr detected for test \'' + testData['title'] + '\'.')

          console.log('SOURCE:\r\n' + testData['source'])
          console.log('---')

          console.log('ERROR:\r\n' + stderr)
          console.log('---')

          console.log('EXPECTED_ERROR:\r\n' + testData['expectedError'])
          console.log('---')
          process.exit()
        }

        done()
      })
    })

    for (let file of arrayOfFiles) {
      if ((g_testSingleFileOnly != null) && (file !== g_testSingleFileOnly)) {
        continue
      }

      if (file.indexOf('.mold.test') !== -1) {
        suite(file, function() {
          let idx = -1

          const tests     = []
          const inp       = fs.readFileSync(options.examplesPath + '/' + file).toString()
          const lines     = inp.split(/\r?\n/)
          let   sectionId = 'head'

          let groupId = path.basename(file, '.mold.test')
          const sepIdx  = groupId.indexOf('-')

          if (sepIdx !== -1) {
            groupId = groupId.substr(sepIdx + 1)
          }

          // Parse tests file into separated tests.
          for (let line of lines) {
            if (line.substr(0, 3) === '---') {
              // Test separator - do nothing.
              sectionId = 'head'

            } else if (line.substr(0, 5) === 'TEST ') {
              const title     = line.substr(5).replace(/"/g, '')
              sectionId = 'source'

              idx++

              tests[idx] = {
                title,
                source: '',
                expectedOutput: '',
                expectedError: ''
              }

            } else if (line.substr(0, 6) === 'xTEST ') {
              const title     = line.substr(6).replace(/"/g, '')
              sectionId = 'source'

              idx++

              tests[idx] = {
                title,
                source: '',
                expectedOutput: '',
                expectedError: '',
                isDisabled: true
              }

            } else if (line.indexOf('EXPECTED_OUTPUT') === 0) {
              sectionId = 'expectedOutput'

            } else if (line.indexOf('EXPECTED_ERROR') === 0) {
              sectionId = 'expectedError'

            } else {
              tests[idx][sectionId] += line + '\r\n'
            }
          }

          // Create tests.
          for (let testData of tests) {
            testData.groupId = groupId

            if (testData.isDisabled) {
              test('DISABLED: ' + testData.title, () => {});

            } else {
              _createTest(testData)
            }
          }
        })
      }
    }
  })
}

// Exports.
exports.createInputOutputFilesPairSuite = createInputOutputFilesPairSuite
