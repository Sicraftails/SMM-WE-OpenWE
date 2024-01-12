event_inherited()
if (instance_exists(obj_mario) && held == 0 && ready2 == 1)
{
    if (image_index >= 2.7)
    {
        ready2 = 2
        if (global.apariencia == 3)
        {
            if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
                audio_play_sound(snd_NSMBU_spring_high, 0, false)
            else
            {
                audio_stop_sound(snd_NSMBU_spring)
                audio_play_sound(snd_NSMBU_spring, 0, false)
            }
        }
        else
        {
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
        }
        with (obj_mario)
        {
            if (disablecontrols == 0)
            {
                jump_type = choose(1, 2, 3)
                event_user(1)
            }
            if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16)))
                vspeed = -3.625
            else
                vspeed = -5.225
        }
    }
    if (ready2 == 1)
    {
        obj_mario.state = 0
        obj_mario.jumpnow = 0
        obj_mario.y = ((y + (image_index * 4)) - 31)
    }
}

