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

add_executable(staticThreadBlinker
		staticThreadBlinker.cpp)
set_target_properties(staticThreadBlinker PROPERTIES
		CXX_STANDARD 11
		CXX_STANDARD_REQUIRED ON)
target_link_libraries(staticThreadBlinker
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/staticThreadBlinker.map")

bin(staticThreadBlinker staticThreadBlinker.bin)
dmp(staticThreadBlinker staticThreadBlinker.dmp)
hex(staticThreadBlinker staticThreadBlinker.hex)
lss(staticThreadBlinker staticThreadBlinker.lss)
size(staticThreadBlinker)
