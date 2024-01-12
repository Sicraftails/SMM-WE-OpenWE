if (canpress == 1)
{
    audio_play_sound(snd_item_select, 0, false)
    obj_guardabot.active = 1
    with (obj_alert_message)
        instance_destroy()
}

