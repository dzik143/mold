################################################################################
#                                                                              #
# This file is part of Mold project.                                           #
# Copyright (c) 2015, 2018 Sylwester Wysocki (sw143@wp.pl).                    #
#                                                                              #
# The Mold code and any derived work however based on this software are        #
# copyright of Sylwester Wysocki. Redistribution and use of the present        #
# software is allowed according to terms specified in the file LICENSE         #
# which comes in the source distribution.                                      #
#                                                                              #
# All rights reserved.                                                         #
#                                                                              #
################################################################################

fs      = require('fs')
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

suite 'General', ->

  arrayOfFiles = fs.readdirSync('./examples/')

  _createTest = (testData) ->
    test testData['title'], (done) ->
      @timeout(60000)

      # Run mold interpreter on test source file.
      fs.writeFileSync('./temp/source.mold', testData['source'])
      cmd = g_binaryPath + ' ./temp/source.mold'
      exec cmd, (error, stdout, stderr) =>

        # Check stdout.
        if (stdout isnt testData['expectedOutput'])
          console.log("ERROR! Bad stdout detected for test '" + testData['title'] + "'.")

          console.log("SOURCE:\r\n" + testData['source'])
          console.log('---')

          console.log("OUTPUT:\r\n" + stdout)
          console.log('---')

          console.log("EXPECTED_OUTPUT:\r\n" + testData['expectedOutput'])
          console.log('---')
          process.exit()

        # Check stderr.
        if (stderr isnt testData['expectedError'])
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
        inp       = fs.readFileSync('./examples/' + file).toString()
        lines     = inp.split(/\r?\n/)
        sectionId = 'head'

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
          _createTest(testData)
