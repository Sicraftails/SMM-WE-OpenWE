if (ready == 0)
{
    if (global.apariencia < 2)
        audio_play_sound(snd_SMB3_bumper1, 0, false)
    else if (global.apariencia == 2)
        audio_play_sound(snd_bumper1, 0, false)
    else if (global.apariencia == 3)
        audio_play_sound(snd_NSMBU_bumper1, 0, false)
    ready = 1
}
other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, (other.y + 16)))
if ((other.y + 16) < (y - 12))
{
    with (other.id)
        event_user(1)
    if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
    {
        if (global.apariencia < 2)
        {
            audio_stop_sound(snd_SMB3_bumper1)
            audio_play_sound(snd_SMB3_bumper2, 0, false)
        }
        else if (global.apariencia == 2)
        {
            audio_stop_sound(snd_bumper1)
            audio_play_sound(snd_bumper2, 0, false)
        }
        else if (global.apariencia == 3)
        {
            audio_stop_sound(snd_NSMBU_bumper1)
            audio_play_sound(snd_NSMBU_bumper2, 0, false)
        }
    }
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
        other.vspeed = -2.125
    else
        other.vspeed = -5
}
else if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
    other.vspeed = 1.125
else
    other.vspeed = 3.125

