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

common = require('./common.coffee')
common.createInputOutputFilesPairSuite({
  title: 'General',
  examplesPath: './examples'})
