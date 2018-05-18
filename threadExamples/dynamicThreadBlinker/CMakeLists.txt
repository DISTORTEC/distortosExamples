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
target_link_libraries(dynamicThreadBlinker PRIVATE
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/dynamicThreadBlinker.map")
distortosTargetLinkerScripts(dynamicThreadBlinker $ENV{DISTORTOS_LINKER_SCRIPT})

distortosBin(dynamicThreadBlinker dynamicThreadBlinker.bin)
distortosDmp(dynamicThreadBlinker dynamicThreadBlinker.dmp)
distortosHex(dynamicThreadBlinker dynamicThreadBlinker.hex)
distortosLss(dynamicThreadBlinker dynamicThreadBlinker.lss)
distortosSize(dynamicThreadBlinker)
