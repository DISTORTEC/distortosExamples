#
# file: CMakeLists.txt
#
# author: Copyright (C) 2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
#
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
# distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

#-----------------------------------------------------------------------------------------------------------------------
# dynamicThreadBlinker application
#-----------------------------------------------------------------------------------------------------------------------

add_executable(dynamicThreadBlinker
		dynamicThreadBlinker.cpp)
set_target_properties(dynamicThreadBlinker PROPERTIES
		CXX_STANDARD 11
		CXX_STANDARD_REQUIRED ON)
target_link_libraries(dynamicThreadBlinker
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/dynamicThreadBlinker.map")

bin(dynamicThreadBlinker dynamicThreadBlinker.bin)
dmp(dynamicThreadBlinker dynamicThreadBlinker.dmp)
hex(dynamicThreadBlinker dynamicThreadBlinker.hex)
lss(dynamicThreadBlinker dynamicThreadBlinker.lss)
size(dynamicThreadBlinker)
