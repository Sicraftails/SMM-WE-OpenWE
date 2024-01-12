if (hspeed != 0 && fly == 0 && sprite_index != spr_NSMBU_boomboom_standup_b)
{
    prevhspeed = hspeed
    if (hspeed != prevhspeed)
    {
        hspeed = (sign(hspeed) * 4)
        if (gravity == 0)
            vspeed = -2
    }
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        hspeed -= 0.0448
        if (hspeed < (-1.8 * increment))
            hspeed = (-1.8 * increment)
        if (polvo < 7)
            polvo++
        else
        {
            with (instance_create(x, (y + 16), obj_smoke))
			{
                image_speed = 0.8
				image_xscale = 2
				image_yscale = 2
			}
            polvo = 0
        }
        if (hspeed <= -0.9)
            sprite_index = spr_NSMBU_boomboom_run_b
        else
            sprite_index = spr_NSMBU_boomboom_b
    }
    else
    {
        hspeed += 0.0448
        if (hspeed > (1.8 * increment))
            hspeed = (1.8 * increment)
        if (polvo < 7)
            polvo++
        else
        {
            with (instance_create(x, (y + 16), obj_smoke))
			{
                image_speed = 0.8
				image_xscale = 2
				image_yscale = 2
			}
            polvo = 0
        }
        if (hspeed >= 1.8)
            sprite_index = spr_NSMBU_boomboom_run_b
        else
            sprite_index = spr_NSMBU_boomboom_b
    }
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        if (grito == 0 && (!outside_view()))
        {
            audio_stop_sound(snd_boomboom_grito1)
            audio_stop_sound(snd_boomboom_grito2)
            audio_play_sound(snd_boomboom_grito1, 0, false)
            grito = 1
        }
        direct = -1
    }
    else
    {
        if (grito == 1 && (!outside_view()))
        {
            audio_stop_sound(snd_boomboom_grito1)
            audio_stop_sound(snd_boomboom_grito2)
            audio_play_sound(snd_boomboom_grito2, 0, false)
            grito = 0
        }
        direct = 1
    }
}
if (sprite_index == spr_NSMBU_boomboom_fly_b && (!audio_is_playing(snd_boomboom_ruleta)))
    audio_play_sound(snd_boomboom_ruleta, 1, true)
else if (sprite_index != spr_NSMBU_boomboom_fly_b || outside_view())
    audio_stop_sound(snd_boomboom_ruleta)
if (gravity == 0 && sprite_index == spr_NSMBU_boomboom_standup_b)
{
    hspeed = (max(0, (abs(hspeed) - 0.24)) * sign(hspeed))
    if (abs(hspeed) < 0.24)
        hspeed = 0
}

