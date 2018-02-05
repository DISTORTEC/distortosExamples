#
# file: CMakeLists.txt
#
# author: Copyright (C) 2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
#
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
# distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

cmake_minimum_required(VERSION 3.1)
project(distortosExamples)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/distortos/cmake)
include(distortos-utilities)

#-----------------------------------------------------------------------------------------------------------------------
# distortos library
#-----------------------------------------------------------------------------------------------------------------------

add_subdirectory(distortos)

#-----------------------------------------------------------------------------------------------------------------------
# distortosExamples applications
#-----------------------------------------------------------------------------------------------------------------------

add_subdirectory(softwareTimerExamples/staticSoftwareTimerBlinker)
add_subdirectory(threadExamples/dynamicThreadBlinker)
add_subdirectory(threadExamples/staticThreadBlinker)
