if (disabled == 0 && press == 1 && (!instance_exists(obj_settings_panel)) && sprite_index == spr_buttons_plays)
{
    if instance_exists(obj_creator_jugar_editar)
        audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_stop_sound(snd_titlemusic)
    audio_stop_sound(snd_titlemusic_modern)
    audio_stop_sound(snd_titlemusic_night)
	audio_stop_sound(snd_titlemusic_smw)
    audio_stop_sound(snd_super_experto)
    audio_stop_sound(snd_guardabot)
    audio_stop_sound(snd_music_mario_land)
    audio_stop_sound(snd_SMB_master_sword)
    audio_stop_sound(snd_SMB_master_sword_underground)
    audio_stop_sound(snd_SMB_master_sword_castle)
    scr_stop_effect_sounds()
    press = 0
    if instance_exists(obj_cursor)
        obj_cursor.active_menu = 1
    global.type_consult = -4
    global.map_consult = -4
    switch image_index
    {
        case 0:
            audio_play_sound(snd_modo_historia, 0, false)
            sprite_index = spr_buttons_plays_press
            alarm[1] = 15
            break
        case 1:
            if (global.my1 == 0 || global.my2 == 0 || global.my3 == -1 || global.my4 == -1 || global.my5 == 0 || global.my6 == -1)
            {
                if instance_exists(obj_cursor)
                    obj_cursor.active_menu = 0
                press = 1
                instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 12), obj_iname_control2)
            }
            else
            {
            }
            break
        case 2:
            if (global.my1 == 0 || global.my2 == 0 || global.my3 == -1 || global.my4 == -1 || global.my5 == 0 || global.my6 == -1)
            {
                if instance_exists(obj_cursor)
                    obj_cursor.active_menu = 0
                press = 1
                instance_create((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 12), obj_iname_control2)
            }
            else
            {
            }
            break
        case 3:
		    audio_play_sound(snd_modo_historia, 0, false)
            sprite_index = spr_buttons_plays_press
            alarm[1] = 15
            break
            break
    }

}
