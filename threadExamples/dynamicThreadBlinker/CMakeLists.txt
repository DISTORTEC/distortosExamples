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
target_link_libraries(dynamicThreadBlinker PRIVATE
		distortos::distortos)
distortosTargetLinkerScripts(dynamicThreadBlinker $ENV{DISTORTOS_LINKER_SCRIPT})

distortosBin(dynamicThreadBlinker dynamicThreadBlinker.bin)
distortosDmp(dynamicThreadBlinker dynamicThreadBlinker.dmp)
distortosHex(dynamicThreadBlinker dynamicThreadBlinker.hex)
distortosLss(dynamicThreadBlinker dynamicThreadBlinker.lss)
distortosMap(dynamicThreadBlinker dynamicThreadBlinker.map)
distortosSize(dynamicThreadBlinker)
