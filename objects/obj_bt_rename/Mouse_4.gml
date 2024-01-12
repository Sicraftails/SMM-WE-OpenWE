if disabled = 0{
if (global.levelguardabot != "" && press == 1 && image_index == 0 && obj_guardabot.active == 1)
{
    audio_play_sound(snd_aceptar, 0, false)
    instance_create_depth((camera_get_view_x(view_get_camera(0)) + 112), (camera_get_view_y(view_get_camera(0)) + 12),-22, obj_rename_control)
}
}


