__background_set( e__BG.Visible, 1, 0 )
__background_set( e__BG.Visible, 2, 0 )
__background_set( e__BG.Visible, 3, 0 )
__background_set( e__BG.Visible, 4, 0 )
__background_set( e__BG.Visible, 5, 0 )
__background_set( e__BG.Visible, 6, 0 )
__background_set( e__BG.Visible, 7, 0 )
__background_set((7 << 0), 3, 0x000001 )
switch global.bg_level
{
    case "ground":
        if (global.apariencia == 3 && global.modo_noche == 0)
        {
				__background_set( e__BG.Index, 0, bg_NSMBU_overworld_0 )
                __background_set( e__BG.Index, 1, bg_NSMBU_overworld_1 )
                __background_set( e__BG.Index, 2, bg_NSMBU_overworld_2 )
                __background_set( e__BG.Index, 3, bg_NSMBU_overworld_3 )
				__background_set( e__BG.Index, 4, bg_NSMBU_overworld_4 )
				__background_set( e__BG.Index, 5, bg_NSMBU_overworld_5 )
				__background_set( e__BG.Index, 7, bg_NSMBU_overworld_6 )
                __background_set( e__BG.Visible, 1, 1 )
                __background_set( e__BG.Visible, 2, 1 )
                __background_set( e__BG.Visible, 3, 1 )
                __background_set( e__BG.Visible, 4, 1 )
                __background_set( e__BG.Visible, 5, 1 )
                __background_set( e__BG.Visible, 7, 1 )
				__background_set((7 << 0), 3, c_black)
        }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_ground( ))
        obj_levelmanager.levelmusic = scr_snd_ground()
        break
    case "underground":
        __background_set( e__BG.Index, (0 << 0), scr_bg_underground( ))
        obj_levelmanager.levelmusic = scr_snd_underground()
        break
    case "castle":
        if (global.apariencia == 3 && global.modo_noche == 0)
        {
            __background_set( e__BG.Index, 0, bg_NSMBU_castle_1 )
            __background_set( e__BG.Index, 1, bg_NSMBU_castle_2 )
            __background_set( e__BG.Index, 2, bg_NSMBU_castle_3 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
        }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_castle( ))
        obj_levelmanager.levelmusic = scr_snd_castle()
        break
    case "underwater":
        __background_set( e__BG.Index, (0 << 0), scr_bg_underwater( ))
        obj_levelmanager.levelmusic = scr_snd_underwater()
        break
    case "ghost":
            if (global.apariencia == 3)
			{
            if (global.modo_noche == 0)
            {
                __background_set( e__BG.Index, 0, bg_NSMBU_ghost_house_1 )
                __background_set( e__BG.Index, 1, bg_NSMBU_ghost_house_2 )
                __background_set( e__BG.Visible, 1, 1 )
            }
			else
            __background_set( e__BG.Index, (0 << 0), scr_bg_ghost_house())
			}
			else
            __background_set( e__BG.Index, (0 << 0), scr_bg_ghost_house())
        obj_levelmanager.levelmusic = scr_snd_ghost_house()
        break
    case "airship":
    if (global.apariencia == 3)
        {
            if (global.modo_noche == 0)
            {
                __background_set( e__BG.Index, 0, bg_NSMBU_airship_0 )
                __background_set( e__BG.Index, 1, bg_NSMBU_airship_1 )
                __background_set( e__BG.Index, 2, bg_NSMBU_airship_2 )
                __background_set( e__BG.Index, 3, bg_NSMBU_airship_3 )
                __background_set( e__BG.Index, 4, bg_NSMBU_airship_4 )
                __background_set( e__BG.Index, 5, bg_NSMBU_airship_5 )
				__background_set( e__BG.Index, 7, bg_NSMBU_airship_6 )
                __background_set( e__BG.Visible, 4, 1 )
                __background_set( e__BG.Visible, 5, 1 )
                __background_set( e__BG.Visible, 7, 1 )
            }
            else
            {
                __background_set( e__BG.Index, 0, bg_NSMBU_airship_night_0 )
                __background_set( e__BG.Index, 1, bg_NSMBU_airship_night_1 )
                __background_set( e__BG.Index, 2, bg_NSMBU_airship_night_2 )
                __background_set( e__BG.Index, 3, bg_NSMBU_airship_night_3 )
                __background_set( e__BG.Index, 4, bg_NSMBU_airship_night_4 )
                __background_set( e__BG.Index, 5, bg_NSMBU_airship_night_5 )
                __background_set( e__BG.Index, 7, bg_NSMBU_airship_night_6 )
            }
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
			__background_set( e__BG.Visible, 5, 1 )
			__background_set( e__BG.Visible, 7, 1 )
        }
        else
        __background_set( e__BG.Index, (0 << 0), scr_bg_airship( ))
        obj_levelmanager.levelmusic = scr_snd_airship()
        break
    case "sky":
    if (global.apariencia == 3 && global.modo_noche == 0)
        {
			__background_set( e__BG.Index, 0, bg_NSMBU_sky_0 )
            __background_set( e__BG.Index, 1, bg_NSMBU_sky_1 )
            __background_set( e__BG.Index, 2, bg_NSMBU_sky_2 )
            __background_set( e__BG.Index, 3, bg_NSMBU_sky_3 )
            __background_set( e__BG.Index, 4, bg_NSMBU_sky_4 )
            __background_set( e__BG.Index, 5, bg_NSMBU_sky_5 )
			__background_set( e__BG.Index, 7, bg_NSMBU_sky_6 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
            __background_set( e__BG.Visible, 5, 1 )
			__background_set( e__BG.Visible, 7, 1 )
        }
        else
        __background_set( e__BG.Index, (0 << 0), scr_bg_sky( ))
        obj_levelmanager.levelmusic = scr_snd_sky()
        break
    case "forest":
    if (global.apariencia == 3 && global.modo_noche == 0)
        {
            __background_set( e__BG.Index, 0, bg_NSMBU_forest_1 )
            __background_set( e__BG.Index, 1, bg_NSMBU_forest_2 )
            __background_set( e__BG.Index, 2, bg_NSMBU_forest_3 )
            __background_set( e__BG.Index, 3, bg_NSMBU_forest_4 )
            __background_set( e__BG.Index, 4, bg_NSMBU_forest_5 )
            __background_set( e__BG.Index, 5, bg_NSMBU_forest_6 )
            __background_set( e__BG.Index, 7, bg_NSMBU_forest_7 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
            __background_set( e__BG.Visible, 5, 1 )
            __background_set( e__BG.Visible, 7, 1 )
        }
        else
        __background_set( e__BG.Index, (0 << 0), scr_bg_forest( ))
        obj_levelmanager.levelmusic = scr_snd_forest()
        break
    case "desert":
        if (global.apariencia == 3 && global.modo_noche == 0)
        {
            __background_set( e__BG.Index, 0, bg_NSMBU_desert_1 )
            __background_set( e__BG.Index, 1, bg_NSMBU_desert_2 )
            __background_set( e__BG.Index, 2, bg_NSMBU_desert_3 )
            __background_set( e__BG.Index, 3, bg_NSMBU_desert_4 )
            __background_set( e__BG.Index, 4, bg_NSMBU_desert_5 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
        }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_desert( ))
        obj_levelmanager.levelmusic = scr_snd_desert()
        break
    case "snow":
        if (global.apariencia == 3)
        {
            if (global.modo_noche == 0)
            {
                __background_set( e__BG.Index, 0, bg_NSMBU_snow_0 )
                __background_set( e__BG.Index, 1, bg_NSMBU_snow_1 )
                __background_set( e__BG.Index, 2, bg_NSMBU_snow_2 )
                __background_set( e__BG.Index, 3, bg_NSMBU_snow_3 )
                __background_set( e__BG.Index, 4, bg_NSMBU_snow_4 )
                __background_set( e__BG.Index, 5, bg_NSMBU_snow_5 )
                __background_set( e__BG.Visible, 4, 1 )
                __background_set( e__BG.Visible, 5, 1 )
            }
            else
            {
                __background_set( e__BG.Index, 0, bg_NSMBU_snow_night_1 )
                __background_set( e__BG.Index, 1, bg_NSMBU_snow_night_2 )
                __background_set( e__BG.Index, 2, bg_NSMBU_snow_night_3 )
                __background_set( e__BG.Index, 3, bg_NSMBU_snow_night_4 )
                __background_set( e__BG.Index, 4, bg_NSMBU_snow_night_5 )
            }
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
        }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_snow( ))
        obj_levelmanager.levelmusic = scr_snd_snow()
        break
    case "fall":
        if (global.apariencia == 3 && global.modo_noche == 0)
        {
            __background_set( e__BG.Index, 0, bg_NSMBU_autumn_1 )
            __background_set( e__BG.Index, 1, bg_NSMBU_autumn_2 )
            __background_set( e__BG.Index, 2, bg_NSMBU_autumn_3 )
            __background_set( e__BG.Index, 3, bg_NSMBU_autumn_4 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
        }
        else
			__background_set( e__BG.Index, (0 << 0), scr_bg_fall())
        obj_levelmanager.levelmusic = scr_snd_autumn()
        break
    case "beach":
        if (global.apariencia == 3 && global.modo_noche == 0)
        {
            __background_set( e__BG.Index, 0, bg_NSMBU_beach_0 )
            __background_set( e__BG.Index, 1, bg_NSMBU_beach_1 )
            __background_set( e__BG.Index, 2, bg_NSMBU_beach_2 )
            __background_set( e__BG.Index, 3, bg_NSMBU_beach_3 )
            __background_set( e__BG.Index, 4, bg_NSMBU_beach_4 )
            __background_set( e__BG.Index, 5, bg_NSMBU_beach_5 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
            __background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
            __background_set( e__BG.Visible, 5, 1 )
        }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_beach( ))
        obj_levelmanager.levelmusic = scr_snd_beach()
        break
    case "mountain":
        if (global.apariencia == 3)
        {
            if (global.modo_noche == 0)
            {
            __background_set( e__BG.Index, 0, bg_NSMBU_mountain_0 )
            __background_set( e__BG.Index, 1, bg_NSMBU_mountain_1 )
            __background_set( e__BG.Index, 2, bg_NSMBU_mountain_2 )
			__background_set( e__BG.Index, 3, bg_NSMBU_mountain_3 )
			__background_set( e__BG.Index, 4, bg_NSMBU_mountain_4 )
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
			__background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
            }
            else
            {
            __background_set( e__BG.Index, 0, bg_NSMBU_volcano_0 )
            __background_set( e__BG.Index, 1, bg_NSMBU_volcano_1 )
            __background_set( e__BG.Index, 2, bg_NSMBU_volcano_2 )
			__background_set( e__BG.Index, 3, bg_NSMBU_volcano_3 )
			__background_set( e__BG.Index, 4, bg_NSMBU_volcano_4 )
			__background_set( e__BG.Index, 5, bg_NSMBU_volcano_5 )
			__background_set( e__BG.Index, 7, bg_NSMBU_volcano_6 )
         
            __background_set( e__BG.Visible, 1, 1 )
            __background_set( e__BG.Visible, 2, 1 )
			__background_set( e__BG.Visible, 3, 1 )
            __background_set( e__BG.Visible, 4, 1 )
			__background_set( e__BG.Visible, 5, 1 )
            __background_set( e__BG.Visible, 7, 1 )
		}
            }
        else
            __background_set( e__BG.Index, (0 << 0), scr_bg_mountain( ))
        obj_levelmanager.levelmusic = scr_snd_mountain()
        break
}

obj_levelmanager.levelmusic_original = obj_levelmanager.levelmusic
if (room == rm_title)
{
    if ((global.bg_level != "mountain") && (global.modo_noche == 1))
        obj_levelmanager.levelmusic = snd_titlemusic_night
    else if (global.apariencia == 3)
        obj_levelmanager.levelmusic = snd_titlemusic_modern
    else if (global.apariencia == 2)
        obj_levelmanager.levelmusic = snd_titlemusic_smw
    else
        obj_levelmanager.levelmusic = snd_titlemusic
}
if (global.bg_level == "castle")
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (pos_y + 12), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_lava
                break
            case 1:
                sprite_index = spr_SMB3_lava
                break
            case 2:
                sprite_index = spr_lava
                break
            case 3:
                sprite_index = spr_NSMBU_lava
                break
            case 4:
                sprite_index = spr_SMB2_lava
                break
        }

        pos_y = other.pos_y
        pos_y_limit = other.pos_y_limit
    }
}
else if (global.bg_level == "forest" && global.modo_noche == 1)
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (pos_y + 12), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_lava_purple
                break
            case 1:
                sprite_index = spr_SMB3_lava_purple
                break
            case 2:
                sprite_index = spr_lava_purple
                break
            case 3:
                sprite_index = spr_NSMBU_lava
                break
            case 4:
                sprite_index = spr_SMB2_lava_purple
                break
        }

        pos_y = other.pos_y
        pos_y_limit = other.pos_y_limit
    }
}
else if ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (pos_y + 12), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_water
                break
            case 1:
                if (global.bg_level == "beach")
                    sprite_index = spr_SMB3_water_b
                else
                    sprite_index = spr_SMB3_water
                break
            case 2:
                sprite_index = spr_water
                break
            case 3:
                sprite_index = spr_NSMBU_water
                break
            case 4:
                sprite_index = spr_SMB2_water
                break
        }

        pos_y = other.pos_y
        pos_y_limit = other.pos_y_limit
    }
}
else if !instance_exists(obj_lava_water) && ((global.bg_level == "mountain") && (global.modo_noche == 1))
{
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_lava
                break
            case 1:
                sprite_index = spr_SMB3_lava
                break
            case 2:
                sprite_index = spr_lava
                break
            case 3:
                sprite_index = spr_NSMBU_lava
                break
        }
        
        pos_y = other.pos_y
        pos_y_limit = other.pos_y_limit
    }
}
else if instance_exists(obj_lava_water) && ((global.bg_level == "mountain") && (global.modo_noche == 0))
{
    with (obj_lava_water)
        instance_destroy()
}
else if instance_exists(obj_lava_water)
{
    with (obj_lava_water)
        instance_destroy()
}
scr_create_bg_anim()

