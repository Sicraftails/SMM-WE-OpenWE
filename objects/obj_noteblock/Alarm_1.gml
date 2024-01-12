vspeed = 0
y = ystart
event_user(downwards)
if (ready2 == 1 && instance_exists(obj_mario) && place_meeting(x, (y - 16), obj_mario))
{
    ready2 = 0
    with (obj_mario)
    {
        audio_stop_sound(other.sound_block)
        audio_play_sound(other.sound_block, 0, false)
        vspeed = (-(5 - (2 * isswim)))
        y--
        state = 2
        helice_fly = 0
        if keyboard_check(global.saltar)
            jumpnow = 1
        else if (keyboard_check(global.saltar_spin) && holding == 0 && global.apariencia > 1)
        {
            if (global.apariencia == 3)
            {
                audio_stop_sound(snd_NSMBU_spinjump)
                audio_play_sound(snd_NSMBU_spinjump, 0, false)
            }
            else
            {
                audio_stop_sound(snd_spin)
                audio_play_sound(snd_spin, 0, false)
            }
            stompstyle = 1
        }
        else
            jumpnow = 2
    }
}
ready2 = 0
alarm[4] = 2

