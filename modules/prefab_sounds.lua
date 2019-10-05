------------------------------------------------------------------------
--  MODULE: Prefab Sounds
------------------------------------------------------------------------
--
--  Copyright (C) 2019 Frozsoul
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-------------------------------------------------------------------

-- This addon adds sounds to various ObAddon prefabs.
-- To use it, simply select it along with ObAddon in the Oblige addons and check 
-- the "Prefab Sounds" option.

-- Known Issues:
-- - Assumes that Armaetus Texture Pack is enabled (for custom fan textures)
-- - Not all machine textures and liquids have streaming sounds - need to identify 
--   all of them among the various prefabs and add the proper sound things

--[[ 
TO DO:
- Rename MEGATEST etc. below
--]]

MEGATEST = { }

function MEGATEST.testload()

	gui.wad_insert_file("games/doom/data/ARCTIC.ogg",   "ARCTIC"  )	
	gui.wad_insert_file("games/doom/data/BATHFAN.ogg",  "BATHFAN" )	
	gui.wad_insert_file("games/doom/data/COMPY1.ogg",   "COMPY1"  )
	gui.wad_insert_file("games/doom/data/DESERT.ogg",   "DESERT"  )		
	gui.wad_insert_file("games/doom/data/FANSND.ogg",   "FANSND"  )
	gui.wad_insert_file("games/doom/data/HELLAMB.ogg",  "HELLAMB" )	
	gui.wad_insert_file("games/doom/data/MACHNAIR.ogg", "MACHNAIR")
	gui.wad_insert_file("games/doom/data/MACHVENT.ogg", "MACHVENT")
	gui.wad_insert_file("games/doom/data/RAINAMB.ogg",  "RAINAMB" )	
	gui.wad_insert_file("games/doom/data/SKLLCHNT.ogg", "SKLLCHNT")
	gui.wad_insert_file("games/doom/data/SPARKING.ogg", "SPARKING")	
	gui.wad_insert_file("games/doom/data/STATIC.ogg",   "STATIC"  )
	gui.wad_insert_file("games/doom/data/STREETAM.ogg", "STREETAM")
	gui.wad_insert_file("games/doom/data/TECHAMB.ogg",  "TECHAMB" )	
	gui.wad_insert_file("games/doom/data/TOILETRN.ogg", "TOILETRN")
	gui.wad_insert_file("games/doom/data/VENDHUM.ogg",  "VENDHUM" )
	gui.wad_insert_file("games/doom/data/WATDRAIN.ogg", "WATDRAIN")
	gui.wad_insert_file("games/doom/data/WATFALL.ogg",  "WATFALL" )
	gui.wad_insert_file("games/doom/data/WATSTRM.ogg",  "WATSTRM" )
	gui.wad_insert_file("games/doom/data/WATTANK.ogg",  "WATTANK" )	
	
	gui.wad_insert_file("games/doom/data/SNDINFO",      "SNDINFO" )
	gui.wad_insert_file("games/doom/data/DECORATE",     "DECORATE")
end

OB_MODULES["Testtest"] =
{
  label = _("Prefab Sounds")

  side = "left"
  priority = 70

  game = "doomish"

  hooks =
  {
    all_done = MEGATEST.testload
  }

  tooltip = "Enhances various prefabs with sounds!"}
