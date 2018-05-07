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

add_executable(dynamicThreadBlinker.elf
		dynamicThreadBlinker.cpp)
set_target_properties(dynamicThreadBlinker.elf PROPERTIES
		CXX_STANDARD 11
		CXX_STANDARD_REQUIRED ON)
target_link_libraries(dynamicThreadBlinker.elf
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/dynamicThreadBlinker.map")

bin(dynamicThreadBlinker.elf dynamicThreadBlinker.bin)
dmp(dynamicThreadBlinker.elf dynamicThreadBlinker.dmp)
hex(dynamicThreadBlinker.elf dynamicThreadBlinker.hex)
lss(dynamicThreadBlinker.elf dynamicThreadBlinker.lss)
size(dynamicThreadBlinker.elf)
