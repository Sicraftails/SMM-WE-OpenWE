if ((!audio_is_playing(snd_SMB_course_clear_castle)) && (!audio_is_playing(snd_SMB_clear_castle_link)) && (!audio_is_playing(snd_SMB3_course_clear_castle)) && (!audio_is_playing(bgm_smwclear_castle)) && (!audio_is_playing(snd_NSMBU_clear_castle)))
{
    if instance_exists(obj_editormanager)
    {
        with (obj_creator_jugar_editar)
            event_user(2)
    }
    else if (room == rm_title)
        scr_restart()
    else if (global.level_g == 1)
        room_goto(rm_guardabot)
    else
        instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_superado_bg)
}
else
    alarm[3] = 10