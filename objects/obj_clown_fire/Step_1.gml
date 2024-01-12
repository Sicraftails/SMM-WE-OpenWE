if (carga == 1)
    anim_fire_charge += 0.15
if (inmario == 1 && carga == 0 && keyboard_check(global.lanzar_agarrar))
{
    if (global.apariencia == 3)
        audio_play_sound(snd_NSMBU_clown_charge_start, 0, false)
    else
        audio_play_sound(scr_snd_clown_fire_charge(), 0, false)
    carga = 1
}
if (inmario == 1)
{
    if (carga == 1)
    {
        if instance_exists(obj_mario)
        {
            if keyboard_check(global.lanzar_agarrar)
            {
                if (global.apariencia == 3 && (!audio_is_playing(snd_NSMBU_clown_charge_start)) && (!audio_is_playing(snd_NSMBU_clown_charge_end)))
                    audio_play_sound(snd_NSMBU_clown_charge_end, 1, true)
                if (fire > 120)
                    sprite_index = s_clown_evil
                else
                {
                    fire += 2
                    if (x_scale < 1.2)
                    {
                        x_scale += 0.002
                        y_scale += 0.002
                    }
                    else
                    {
                        x_scale = 1.2
                        y_scale = 1.2
                    }
                }
            }
            else
            {
                carga = 0
                audio_charge = 0
                sprite_index = s_clown
                audio_stop_sound(scr_snd_clown_fire_charge())
                audio_stop_sound(snd_NSMBU_clown_charge_start)
                audio_stop_sound(snd_NSMBU_clown_charge_end)
                if (fire > 120)
                {
                    if (global.powerup == 2)
                    {
                        if (instance_number(obj_fire_clown) < 3)
                        {
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = -0.5
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = 0
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            with (instance_create(x, y, obj_fire_clown))
                            {
                                vspeed = 0.5
                                hspeed = (3 * other.direct)
                                direct = other.direct
                            }
                            fire = 0
                        }
                    }
                    else if (instance_number(obj_fire_clown) < 2)
                    {
                        with (instance_create(x, y, obj_fire_clown))
                        {
                            hspeed = (3 * other.direct)
                            direct = other.direct
                            vspeed = 0
                        }
                        fire = 0
                    }
                }
                else if (global.powerup == 2)
                {
                    if (instance_number(obj_fire_clown_small) < 6)
                    {
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = -0.5
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = 0
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        with (instance_create(x, y, obj_fire_clown_small))
                        {
                            vspeed = 0.5
                            hspeed = (3 * other.direct)
                            gravity = 0
                        }
                        fire = 0
                    }
                }
                else if (instance_number(obj_fire_clown_small) < 2)
                {
                    with (instance_create(x, y, obj_fire_clown_small))
                    {
                        hspeed = (3 * other.direct)
                        gravity = 0
                        vspeed = 0
                    }
                    fire = 0
                }
            }
        }
    }
}
if (carga == 0)
{
    if (x_scale > 1)
    {
        x_scale -= 0.02
        y_scale -= 0.02
    }
    else
    {
        x_scale = 1
        y_scale = 1
    }
}
