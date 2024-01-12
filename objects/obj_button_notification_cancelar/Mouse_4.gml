if ((!instance_exists(obj_toast)) && (!instance_exists(obj_load_image)))
{
    if instance_exists(obj_window_alert)
    {
        audio_play_sound(snd_item_select, 0, false)
        with (obj_window_alert)
            instance_destroy()
        with (obj_persistent)
            alarm[8] = 2
    }
}
