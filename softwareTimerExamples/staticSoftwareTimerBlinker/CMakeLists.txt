#
# file: CMakeLists.txt
#
# author: Copyright (C) 2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
#
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
# distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

#-----------------------------------------------------------------------------------------------------------------------
# staticSoftwareTimerBlinker application
#-----------------------------------------------------------------------------------------------------------------------

add_executable(staticSoftwareTimerBlinker
		staticSoftwareTimerBlinker.cpp)
set_target_properties(staticSoftwareTimerBlinker PROPERTIES
		CXX_STANDARD 11
		CXX_STANDARD_REQUIRED ON)
target_link_libraries(staticSoftwareTimerBlinker PRIVATE
		distortos::distortos
		distortos::allCxxFlags
		-Xlinker -Map="${CMAKE_CURRENT_BINARY_DIR}/staticSoftwareTimerBlinker.map")
distortosTargetLinkerScripts(staticSoftwareTimerBlinker $ENV{DISTORTOS_LINKER_SCRIPT})

distortosBin(staticSoftwareTimerBlinker staticSoftwareTimerBlinker.bin)
distortosDmp(staticSoftwareTimerBlinker staticSoftwareTimerBlinker.dmp)
distortosHex(staticSoftwareTimerBlinker staticSoftwareTimerBlinker.hex)
distortosLss(staticSoftwareTimerBlinker staticSoftwareTimerBlinker.lss)
distortosSize(staticSoftwareTimerBlinker)
