--
-- file: Tuprules.lua
--
-- author: Copyright (C) 2016 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
--
-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
-- distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
--

------------------------------------------------------------------------------------------------------------------------
-- path to distortos subfolder
------------------------------------------------------------------------------------------------------------------------

local DISTORTOS_PATH = "distortos"

------------------------------------------------------------------------------------------------------------------------
-- reuse Tuprules.lua from distortos subfolder
------------------------------------------------------------------------------------------------------------------------

TOP = tup.getcwd() .. "/"
TOP_NODE = tup.nodevariable(".")
tup.include(DISTORTOS_PATH .. "/Tuprules.lua")

------------------------------------------------------------------------------------------------------------------------
-- start group of <objects> for template application
------------------------------------------------------------------------------------------------------------------------

startObjectsGroup()
