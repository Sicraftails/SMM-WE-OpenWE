if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_castle
    if (global.bg_level == "ground")
					image_index = 0
				else if (global.bg_level == "underground")
					image_index = 1
				else if (global.bg_level == "sky")
					image_index = 2
				else if (global.bg_level == "airship")
					image_index = 3
				else if (global.bg_level == "ghost")
					image_index = 4
				else if (global.bg_level == "underwater")
					image_index = 5
				else if (global.bg_level == "desert")
					image_index = 6
				else if (global.bg_level == "forest")
					image_index = 7
				else if (global.bg_level == "snow")
					image_index = 10
				else if (global.bg_level == "mountain")
				{
				if (global.modo_noche == 0)
					image_index = 2
				else
					image_index = 8
				}
				else if (global.modo_noche == 1)
					image_index = 9
				else
					image_index = 0
}
else if (global.bg_level == "snow")
    image_index = 1
else
    image_index = 0
active = 0
image_speed = 0
instance_create((x + 40), y, obj_SMB_castle_front)
