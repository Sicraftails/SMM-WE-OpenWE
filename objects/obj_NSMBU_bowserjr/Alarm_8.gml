if (fire != 3)
{
    audio_stop_sound(snd_NSMBU_bowserjr_fire)
    audio_play_sound(snd_NSMBU_bowserjr_fire, 0, false)
    if (direct == 1)
        instance_create((x + 13), (y + 3), obj_NSMBU_bowserjr_fire)
    else
        instance_create((x - 13), (y + 3), obj_NSMBU_bowserjr_fire)
}
switch fire
{
    case 2:
        fire = 3
        break
    default:
        fire++
}

