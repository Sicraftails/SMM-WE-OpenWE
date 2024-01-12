if (editor == 0)
{
    if (dead_bowser == 1)
    {
        audio_stop_sound(scr_snd_thwomp())
        audio_play_sound(scr_snd_thwomp(), 0, false)
        dead_bowser = 0
    }
    switch shake_time
    {
        case 0:
            y -= (8 * shake_long)
            break
        case 1:
            y += (1 * shake_long)
            break
        case 2:
            y += (7 * shake_long)
            break
        case 3:
            y -= (4 * shake_long)
            break
        case 4:
            y += (1 * shake_long)
            break
        case 5:
            y += (3 * shake_long)
            break
        case 6:
            y -= (2 * shake_long)
            break
        case 7:
            y += (2 * shake_long)
            break
        case 8:
            y -= (1 * shake_long)
            break
        case 9:
            y += (1 * shake_long)
            break
    }

    if (shake_time == 9)
    {
        shake_time = 0
        shake_long = 1
    }
    else
    {
        shake_time++
        alarm[11] = 2
    }
}
else
{
    shake_time = 0
    shake_long = 1
    dead_bowser = 0
}

