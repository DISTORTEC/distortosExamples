--
-- file: Tupfile.lua
--
-- author: Copyright (C) 2014-2017 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
--
-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
-- distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
--

if CONFIG_DYNAMICTHREADBLINKER_ENABLE == "y" then

	CXXFLAGS += STANDARD_INCLUDES
	CXXFLAGS += CHIP_INCLUDES
	CXXFLAGS += BOARD_INCLUDES
	
	tup.include(DISTORTOS_TOP .. "compile.lua")
	
	local filename = OUTPUT .. tup.getrelativedir(TOP) .. "/dynamicThreadBlinker"
	local elfFilename = filename .. ".elf"
	local hexFilename = filename .. ".hex"
	local binFilename = filename .. ".bin"
	local dmpFilename = filename .. ".dmp"
	local lssFilename = filename .. ".lss"
	
	link(elfFilename, OUTPUT .. "libdistortos.a", "<objects>", table.unpack(LDSCRIPTS))
	size(elfFilename)
	hex(elfFilename, hexFilename)
	bin(elfFilename, binFilename)
	dmp(elfFilename, dmpFilename)
	lss(elfFilename, lssFilename)

end	-- if CONFIG_DYNAMICTHREADBLINKER_ENABLE == "y" then
