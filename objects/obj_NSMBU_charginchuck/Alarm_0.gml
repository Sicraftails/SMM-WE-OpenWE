alarm[0] = 7
if (lookout == 1 && gravity == 0)
{
    if (sprite_index == s_charginchuck_walk)
    {
        audio_stop_sound(snd_bump)
        audio_play_sound(snd_bump, 0, false)
        if (hspeed > 0)
			instance_create((x - 16), y, obj_smoke_steps)
        else if (hspeed < 0)
            instance_create((x), y, obj_smoke_steps)
    }
}

