image_speed = 0
image_index = 0
rain = obj_lighting
if instance_exists(obj_rainmaker)
{
    with (obj_rainmaker)
    {
        other.rain = object_index
        instance_destroy()
    }
}
music = obj_levelmanager.levelmusic
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
instance_deactivate_all(true)
/*
audio_bus_main.effects[0] = undefined;
/**/
instance_activate_object(obj_persistent)
if audio_is_playing(music)
    audio_pause_sound(music)
if audio_is_playing(scr_snd_starman())
    audio_pause_sound(scr_snd_starman())
if audio_is_playing(scr_music_link())
    audio_pause_sound(scr_music_link())
if audio_is_playing(scr_snd_switchsong())
    audio_pause_sound(scr_snd_switchsong())
if audio_is_playing(scr_snd_dead())
    audio_pause_sound(scr_snd_dead())
if audio_is_playing(scr_snd_dead())
    audio_pause_sound(scr_snd_dead())
if audio_is_playing(scr_snd_hurryup())
    audio_pause_sound(scr_snd_hurryup())
if audio_is_playing(bgm_sm1clear)
    audio_pause_sound(bgm_sm1clear)
if audio_is_playing(snd_n64)
    audio_pause_sound(snd_n64)
if audio_is_playing(snd_SMB_clear_superball)
    audio_pause_sound(snd_SMB_clear_superball)
if audio_is_playing(snd_SMB3_course_clear)
    audio_pause_sound(snd_SMB3_course_clear)
if audio_is_playing(bgm_smwclear)
    audio_pause_sound(bgm_smwclear)
if audio_is_playing(snd_SMB_course_clear_castle)
    audio_pause_sound(snd_SMB_course_clear_castle)
if audio_is_playing(snd_SMB3_course_clear_castle)
    audio_pause_sound(snd_SMB3_course_clear_castle)
if audio_is_playing(bgm_smwclear_castle)
    audio_pause_sound(bgm_smwclear_castle)
if audio_is_playing(scr_snd_skid())
    audio_pause_sound(scr_snd_skid())
if audio_is_playing(snd_pmeter)
    audio_pause_sound(snd_pmeter)
if audio_is_playing(snd_boomboom_ruleta)
    audio_pause_sound(snd_boomboom_ruleta)
audio_stop_sound(scr_snd_bowserjr_shell())
audio_stop_sound(snd_skewer1)
audio_stop_sound(snd_skewer2)
audio_stop_sound(snd_skewer3)
audio_stop_sound(snd_skewer4)
audio_stop_sound(snd_skewer5)
audio_stop_sound(snd_NSMBU_desllizarse_walljump);
audio_stop_sound(snd_NSMBU_helice_planear)
audio_stop_sound(snd_NSMBU_squirrel_plan)
audio_stop_sound(snd_NSMBU_vine_up)
audio_play_sound(snd_pausa, 0, false)

if (global.postnivel == 0)
{
    instance_create((camera_get_view_x(view_get_camera(0)) + 255), (camera_get_view_y(view_get_camera(0)) + 81), obj_pausa_button)
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 255), (camera_get_view_y(view_get_camera(0)) + 107), obj_pausa_button))
    {
        type = 1
		text = scr_language(150)
        sprite_index = spr_bt_parent
    }
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 255), (camera_get_view_y(view_get_camera(0)) + 133), obj_pausa_button))
    {
        type = 2
		text = scr_language(161)
        sprite_index = spr_bt_parent
    }
}
else
{
    instance_create((camera_get_view_x(view_get_camera(0)) + 255), (camera_get_view_y(view_get_camera(0)) + 94), obj_pausa_button)
    with (instance_create((camera_get_view_x(view_get_camera(0)) + 255), (camera_get_view_y(view_get_camera(0)) + 120), obj_pausa_button))
    {
        type = 2
		text = scr_language(161)
        sprite_index = spr_bt_parent
    }
}
with (instance_create((camera_get_view_x(view_get_camera(0)) + 352), (camera_get_view_y(view_get_camera(0)) + 183), obj_settings_button))
{
    image_index = 2
    x = (camera_get_view_x(view_get_camera(0)) + 352)
    y = (camera_get_view_y(view_get_camera(0)) + 183)
    depth = -17
}
if global.dsm = 1
	instance_create_depth(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)),0, obj_skip_control)
if instance_exists(obj_persistent)
{
    if (obj_persistent.modo_android == 0)
        instance_create((x + 100), (y + 100), obj_cursor)
    else
    {
        with (instance_create((x + 100), (y + 100), obj_cursor))
            visible = false
    }
}
textcnd[0] = scr_language(46)
textcnd[1] = scr_language(47)
textcnd[2] = scr_language(48)
textcnd[3] = scr_language(49)
