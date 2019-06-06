################################################################################
#                                                                              #
# This file is part of Mold project.                                           #
# Copyright (C) 2015, 2019 Sylwester Wysocki (sw143@wp.pl)                     #
#                                                                              #
# This program is free software: you can redistribute it and/or modify         #
# it under the terms of the GNU General Public License as published by         #
# the Free Software Foundation, either version 3 of the License, or            #
# (at your option) any later version.                                          #
#                                                                              #
# This program is distributed in the hope that it will be useful,              #
# but WITHOUT ANY WARRANTY; without even the implied warranty of               #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                #
# GNU General Public License for more details.                                 #
#                                                                              #
# You should have received a copy of the GNU General Public License            #
# along with this program. If not, see <http://www.gnu.org/licenses/>          #
#                                                                              #
################################################################################

fs      = require('fs')
path    = require('path')
should  = require('should')
exec    = require('child_process').exec
process = require('process')

g_testSingleFileOnly = null
g_binaryPath = 'mold'

for idx in [2...process.argv.length]
  if (process.argv[idx] == '--testName')
    g_testSingleFileOnly = process.argv[idx + 1] + '.mold.test'
    idx++

  else if (process.argv[idx] == '--binaryPath')
    g_binaryPath = process.argv[idx + 1]
    idx++
    
filterResult = (text, options) ->
  rv = text
  
  if options.ignoreWhiteSpaces or options.ignoreEmptyLines
    rv    = ''
    lines = text.split(/\r?\n/)
    
    for line in lines
      if options.ignoreWhiteSpaces
        line = line.trim()

      if !options.ignoreEmptyLines or ((line isnt '') and (line isnt '\n') and (line isnt '\r') and (line isnt '\r\n'))
        rv += line
    
  return rv   

createInputOutputFilesPairSuite = (options) =>
  binaryPath = if options.binaryPath? then options.binaryPath else g_binaryPath
  
  suite options.title, ->
    arrayOfFiles = fs.readdirSync(options.examplesPath)

    extraParametersPattern = if options.extraParameters? then options.extraParameters else ''
    
    _createTest = (testData) ->
      test testData['title'], (done) ->
        @timeout(60000)

        extraParameters = extraParametersPattern.replace('${testGroupId}', testData.groupId)
        
        # Run mold interpreter on test source file.
        fs.writeFileSync('./temp/source.mold', testData['source'])
        cmd = binaryPath + ' ' + extraParameters + ' ./temp/source.mold'
        exec cmd, (error, stdout, stderr) =>
        
          filteredStdout = filterResult(stdout, options)
          filteredStderr = filterResult(stderr, options)
          expectedOutput = filterResult(testData['expectedOutput'], options)
          expectedError  = filterResult(testData['expectedError'], options)
        
          # Check stdout.
          if (filteredStdout isnt expectedOutput)
            console.log("ERROR! Bad stdout detected for test '" + testData['title'] + "'.")

            console.log("SOURCE:\r\n" + testData['source'])
            console.log('---')

            console.log("OUTPUT:\r\n" + stdout)
            console.log('---')

            console.log("EXPECTED_OUTPUT:\r\n" + testData['expectedOutput'])
            console.log('---')
            process.exit()

          # Check stderr.
          if (filteredStderr isnt expectedError)
            console.log("ERROR! Bad stderr detected for test '" + testData['title'] + "'.")

            console.log("SOURCE:\r\n" + testData['source'])
            console.log('---')

            console.log("ERROR:\r\n" + stderr)
            console.log('---')

            console.log("EXPECTED_ERROR:\r\n" + testData['expectedError'])
            console.log('---')
            process.exit()

          done()

    for file in arrayOfFiles
      if (g_testSingleFileOnly?) and (file isnt g_testSingleFileOnly)
        continue
      
      if file.indexOf('.mold.test') isnt -1
        suite file, () ->
          idx       = -1
          tests     = []
          inp       = fs.readFileSync(options.examplesPath + '/' + file).toString()
          lines     = inp.split(/\r?\n/)
          sectionId = 'head'

          groupId = path.basename(file, '.mold.test');
          sepIdx  = groupId.indexOf('-');

          if sepIdx isnt -1
            groupId = groupId.substr(sepIdx + 1)

          # Parse tests file into separated tests.
          for line in lines
            if line.substr(0, 3) is '---'
              # Test separator - do nothing.
              sectionId = 'head'

            else if line.substr(0, 5) is 'TEST '
              title     = line.substr(5).replace(/"/g, '')
              sectionId = 'source'

              idx++
              tests[idx] = {
                title: title
                source: ''
                expectedOutput: ''
                expectedError: ''
              }

            else if line.indexOf('EXPECTED_OUTPUT') is 0
              sectionId = 'expectedOutput'

            else if line.indexOf('EXPECTED_ERROR') is 0
              sectionId = 'expectedError'

            else
              tests[idx][sectionId] += line + "\r\n"

          # Create tests.
          for testData in tests
            testData.groupId = groupId
            _createTest(testData)

# Exports.
exports.createInputOutputFilesPairSuite = createInputOutputFilesPairSuite