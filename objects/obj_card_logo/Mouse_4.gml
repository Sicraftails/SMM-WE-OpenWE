if (obj_levelmanager.editor == 1 && instance_exists(obj_card_logo))
{
    __background_set( e__BG.Visible, 1, 0 )
    __background_set( e__BG.Visible, 2, 0 )
    __background_set( e__BG.Visible, 3, 0 )
    __background_set( e__BG.Visible, 4, 0 )
    __background_set( e__BG.Visible, 5, 0 )
    __background_set( e__BG.Visible, 6, 0 )
	__background_set( e__BG.Visible, 7, 0 )
	__background_set((7 << 0), 3, 0x000001 )
    audio_play_sound(snd_seleccion_entorno1, 0, false)
    switch global.bg_level
    {
        case "ground":
            event_user(0)
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
            s_music_editor = scr_snd_editor_ground()
            break
        case "underground":
            event_user(0)
            __background_set( e__BG.Index, (0 << 0), scr_bg_underground( ))
            obj_levelmanager.levelmusic = scr_snd_underground()
            s_music_editor = scr_snd_editor_underground()
            break
        case "castle":
            event_user(0)
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
            s_music_editor = scr_snd_editor_castle()
            break
        case "underwater":
            event_user(0)
            __background_set( e__BG.Index, (0 << 0), scr_bg_underwater())
            obj_levelmanager.levelmusic = scr_snd_underwater()
            s_music_editor = scr_snd_editor_underwater()
            break
        case "ghost":
            event_user(0)
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
            s_music_editor = scr_snd_editor_ghost()
            break
        case "airship":
            event_user(0)
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
            s_music_editor = scr_snd_editor_airship()
            break
        case "sky":
            event_user(0)
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
            s_music_editor = scr_snd_editor_sky()
            break
        case "forest":
            event_user(0)
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
			s_music_editor = scr_snd_editor_forest()
            break
        case "desert":
            event_user(0)
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
            s_music_editor = scr_snd_editor_desert()
            break
        case "snow":
            event_user(0)
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
            s_music_editor = scr_snd_editor_snow()
            break
        case "fall":
            event_user(0)
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
			s_music_editor = scr_snd_editor_forest()
            break
        case "beach":
            event_user(0)
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
            s_music_editor = scr_snd_editor_ground()
            break
        case "mountain":
        event_user(0)
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
        {
            __background_set( e__BG.Index, (0 << 0), scr_bg_mountain( ))
        }
        obj_levelmanager.levelmusic = scr_snd_mountain()
        s_music_editor = scr_snd_editor_mountain()
        break
    }

    obj_levelmanager.levelmusic_original = obj_levelmanager.levelmusic
    if (global.apariencia != 0 && instance_exists(obj_card_item))
    {
        global.flower = 0
        with (obj_card_item)
        {
            if (obj == obj_superflower_res)
            {
                obj = obj_fireflower_res
                obj_draw = 61
            }
        }
    }
    scr_create_bg_anim()
    audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_play_sound(s_music_editor, 99, true)
    obj_creator_jugar_editar.music_editor = s_music_editor
    instance_activate_object(obj_player_trail)
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    with (obj_apariencia)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
	with (obj_ground)
		alarm[3] = 1
	with (obj_ground2)
		alarm[3] = 1
	with (obj_ground3)
		alarm[3] = 1
}