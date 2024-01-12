if (enemy == 1)
{
    if (obj == obj_snow_ball_held)
    {
        with (instance_create(x, (y - 8), obj_snow_ball_held))
        {
            alarm[0] = 5
            fisica = 1
            hspeed = other.hspeed
            vspeed = other.vspeed
        }
        instance_destroy()
    }
    else if (obj == obj_koopa || obj == obj_shell_held)
    {
        with (instance_create((x - 8), (y - 8), obj_shell_held))
        {
            vspeed = 0.1
            sprite_index = other.sprite_index
            if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
            {
                prevhspeed = (2.5 * sign(obj_mario.direct))
                hspeed = (2.5 * sign(obj_mario.direct))
            }
            else
            {
                prevhspeed = ((2.6 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
                hspeed = ((2.6 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
            }
            inmune = 1
            alarm[2] = 15
        }
        instance_destroy()
    }
    inmune = 0
}
else if (hold == 1)
{
    if (obj == obj_block_pow_hold)
    {
        with (instance_create((x - 8), (y - 8), obj_block_pow_hold))
        {
            hspeed = other.hspeed
            vspeed = other.vspeed
            explode = 1
            inmune = 1
            alarm[1] = 15
        }
        instance_destroy()
    }
}
else if (snowball == 1)
{
    with (instance_create(x, (y - 8), obj_snow_ball_held))
    {
        alarm[0] = 5
        fisica = 1
        hspeed = other.hspeed
        vspeed = other.vspeed
    }
    instance_destroy()
}
else
    inmune = 0
