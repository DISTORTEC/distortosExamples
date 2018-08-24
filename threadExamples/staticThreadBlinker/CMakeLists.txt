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
target_link_libraries(staticThreadBlinker PRIVATE
		distortos::distortos)
distortosTargetLinkerScripts(staticThreadBlinker $ENV{DISTORTOS_LINKER_SCRIPT})

distortosBin(staticThreadBlinker staticThreadBlinker.bin)
distortosDmp(staticThreadBlinker staticThreadBlinker.dmp)
distortosHex(staticThreadBlinker staticThreadBlinker.hex)
distortosLss(staticThreadBlinker staticThreadBlinker.lss)
distortosMap(staticThreadBlinker staticThreadBlinker.map)
distortosSize(staticThreadBlinker)
