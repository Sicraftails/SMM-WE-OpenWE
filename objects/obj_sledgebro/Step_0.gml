if (global.apariencia == 3)
{
    if (sprite_index == spr_NSMBU_sledgebro_throw)
    {
        if (image_index >= 13 && image_index < 13.5)
            alarm[4] = 1
    }
    else if (sprite_index == spr_NSMBU_sledgebro_jump)
    {
        if (image_index >= 3 && image_index < 3.5)
            alarm[2] = 1
        else if (image_index >= 11 && vspeed != 0 && image_speed != 0)
        {
            image_speed = 0
            image_index = 11
        }
        else if (vspeed == 0 && image_index > 3.5)
        {
            if (image_index <= 11)
            {
                image_index = 12
                image_speed = 0.5
            }
        }
    }
}
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (vspeed == 0 && hspeed <= 0 && x <= (xstart - 16) && paracaidas == 0)
{
    if (swimming == 1)
        hspeed = 0.2
    else
        hspeed = 0.4
}
else if (vspeed == 0 && hspeed >= 0 && x >= (xstart + 16) && paracaidas == 0)
{
    if (swimming == 1)
        hspeed = -0.2
    else
        hspeed = -0.4
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
{
    if (hspeed > 0.3)
    {
        hspeed -= 0.08
        if (hspeed <= 0.3)
            hspeed = 0.3
    }
    else if (hspeed < -0.3)
    {
        hspeed += 0.08
        if (hspeed >= -0.3)
            hspeed = -0.3
    }
}
else if (hspeed > 0.4)
{
    hspeed -= 0.08
    if (hspeed <= 0.4)
        hspeed = 0.4
}
else if (hspeed < -0.4)
{
    hspeed += 0.08
    if (hspeed >= -0.4)
        hspeed = -0.4
}
event_user(3)
if (volar == 0)
    event_user(4)
else if (volar == 1)
{
    if (y > (ystart + 8))
    {
        if (vspeed < -0.2)
            vspeed = -0.2
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 8))
    {
        if (vspeed > 0.2)
            vspeed = 0.2
        else
            vspeed += 0.085
    }
}
if (gravity > 0)
{
    if (jumping == 1 && vspeed > 0)
    {
        jumping = 2
        if (wings == 1)
        {
            vspeed = 0
            gravity = 0
            volar = 1
            alarm[6] = 60
        }
    }
}
else if (gravity == 0)
{
    if (jumping == 2 && volar == 0)
    {
        audio_play_sound(scr_snd_thwomp(), 0, false)
        if instance_exists(obj_levelmanager)
        {
            with (obj_levelmanager)
                alarm[11] = 1
        }
        if instance_exists(obj_mario)
        {
            if (obj_mario.state < 2)
            {
                with (obj_mario)
                {
                    if (global.apariencia == 3)
                        audio_play_sound(snd_NSMBU_stun, 0, false)
                    else
                    {
                        if (!instance_exists(obj_shake_mario))
                            instance_create(x, (y + 5), obj_shake_mario)
                        
                    }
                    stuntime = 80
                    hspeed = 0
                    disablecontrols = 1
                }
            }
        }
        jumping = 0
        if (global.apariencia != 3)
            alarm[5] = 15
        instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
        instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
    }
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (wings == 1 && (!instance_exists(obj_deadmario)))
{
    if (volar == 1 || gravity > 0)
        wings_anim += 0.18
    else
        wings_anim += 0.12
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        alarm[10] = 10
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}

