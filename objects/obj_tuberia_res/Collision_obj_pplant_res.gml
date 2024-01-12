if (drag == 0 && other.drag == 0 && plant == 0 && warp == 0)
{
    audio_play_sound(scr_snd_powerdown(), 0, false)
    plant = 1
    with (other.id)
        instance_destroy()
}

