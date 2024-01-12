if obj_input.new_texto != ""
and obj_input_desc.new_texto != "" {
    if (global.etiqueta1 == -1 && global.etiqueta2 == -1)
        audio_play_sound(snd_wrong, 0, false)
    else if (!instance_exists(obj_load_image))
    {
        audio_play_sound(snd_aceptar, 0, false)
        if file_exists(((global.directorio + obj_input.new_texto) + ".swe"))
            scr_toast(1, scr_language(93))
        else
        {
            with (instance_create((camera_get_view_x(view_get_camera(0)) + 357), (camera_get_view_y(view_get_camera(0)) + 192), obj_load_image))
                pos = 1
            global.instance_deactivate = 0
            alarm[0] = 12
        }
    }
}
else if obj_input.new_texto == "" 
{
    audio_play_sound(snd_wrong, 0, false)
    scr_toast(1, scr_language(94))
}
else if obj_input_desc.new_texto == ""
{
    audio_play_sound(snd_wrong, 0, false)
    scr_toast(1, scr_language(200))
}