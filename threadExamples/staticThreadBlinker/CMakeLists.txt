#
# file: CMakeLists.txt
#
# author: Copyright (C) 2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
#
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
# distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

#-----------------------------------------------------------------------------------------------------------------------
# staticThreadBlinker application
#-----------------------------------------------------------------------------------------------------------------------

add_executable(staticThreadBlinker.elf
		staticThreadBlinker.cpp)
set_target_properties(staticThreadBlinker.elf PROPERTIES
		CXX_STANDARD 11
		CXX_STANDARD_REQUIRED ON)
target_link_libraries(staticThreadBlinker.elf
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/staticThreadBlinker.map")

bin(staticThreadBlinker.elf staticThreadBlinker.bin)
dmp(staticThreadBlinker.elf staticThreadBlinker.dmp)
hex(staticThreadBlinker.elf staticThreadBlinker.hex)
lss(staticThreadBlinker.elf staticThreadBlinker.lss)
size(staticThreadBlinker.elf)
