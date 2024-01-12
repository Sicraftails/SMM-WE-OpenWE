if (fire != 3)
{
    if (global.apariencia == 1)
    {
        audio_stop_sound(snd_SMB3_bowser_fire)
        audio_play_sound(snd_SMB3_bowser_fire, 0, false)
    }
    else
    {
        audio_stop_sound(snd_flames)
        audio_play_sound(snd_flames, 0, false)
    }
    if (direct == 1)
        instance_create((x + 13), (y + 3), obj_bowserjr_fire)
    else
        instance_create((x - 13), (y + 3), obj_bowserjr_fire)
}
switch fire
{
    case 2:
        fire = 3
        break
    default:
        fire++
}


