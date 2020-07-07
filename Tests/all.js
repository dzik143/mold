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

const fs    = require('fs')
const Mocha = require('mocha')

// Make sure temp directory exists.
if (!fs.existsSync('./temp')) {
  fs.mkdirSync('./temp')
}

// Register general suites.
const mocha = new Mocha({ui: 'tdd', reporter: 'spec', bail: 'yes'})

mocha.addFile('./general.js')
// mocha.addFile('./astOptimization.js')

// Run registered test.
mocha.run()
