event_inherited()
if (wings == 0)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
    {
        if (hspeed > 1)
        {
            hspeed -= 0.08
            if (hspeed <= 0.5)
                hspeed = 0.5
        }
        else if (hspeed < -1)
        {
            hspeed += 0.08
            if (hspeed > -0.5)
                hspeed = -0.5
        }
    }
    else if (hspeed > 1)
    {
        hspeed -= 0.08
        if (hspeed < 1)
            hspeed = 1
    }
    else if (hspeed < -1)
    {
        hspeed += 0.08
        if (hspeed > -1)
            hspeed = -1
    }
}
if (global.modo_noche == 1 && global.bg_level == "ground" && wings == 0 && gravity == 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        if (jump == 0 && (!(place_meeting(x, (y - 16), obj_solid))))
        {
            audio_stop_sound(snd_rotten)
            audio_play_sound(snd_rotten, 0, false)
            vspeed = -2
            y--
            jump = 1
        }
        jump2 = 0
        hspeed = 1
    }
    else
    {
        if (jump2 == 0 && (!(place_meeting(x, (y - 16), obj_solid))))
        {
            audio_stop_sound(snd_rotten)
            audio_play_sound(snd_rotten, 0, false)
            vspeed = -2
            y--
            jump2 = 1
        }
        jump = 0
        hspeed = -1
    }
    audio_stop_sound(snd_rotten)
    audio_play_sound(snd_rotten, 0, false)
    vspeed = -3
    if (delay > 0)
        delay--
}
