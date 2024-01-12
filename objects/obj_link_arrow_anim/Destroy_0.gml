audio_stop_sound(snd_SMB_link_charge2)
audio_play_sound(snd_SMB_link_charge2, 0, false)
if (!instance_exists(obj_mario_transform2))
{
    with (obj_mario)
    {
        arrow_ready = other.ready_arrow
        visible = true
        if (image_alpha != 1)
            image_alpha = 1
        if (!instance_exists(obj_effect_link))
            instance_create(x, (y + 16), obj_effect_link)
    }
}


