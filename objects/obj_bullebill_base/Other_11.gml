var sprite, x_pos, y_pos, spd_h, spd_v;
if (sprout == 0)
{
    with (instance_create(x, y, obj_bulletbill))
    {
        hspeed = (-(1 - (0.5 * other.swimming)))
        direct = -1
    }
    alarm[0] = 192
}
else
{
    sprite = scr_constant_get_sprite(sprout)
    x_pos = (x - 16)
    y_pos = y
    if (sprout == -1)
    {
        for (i = 0; i < 10; i++)
        {
            with (instance_create(x_pos, y_pos, obj_coin_pow))
            {
                spd_h = random_range(1.6, 4)
                spd_v = random_range(1, 1.5)
                hspeed = (-(spd_h - (1.5 * other.swimming)))
                vspeed = (-(spd_v - (1 * other.swimming)))
            }
        }
    }
    else if (sprout == -69 || sprout == -70)
    {
        shoot_left = instance_create(x_pos, y_pos, obj_shell_held)
        shoot_left.mytopid = 1
        shoot_left.sprite_index = sprite
        shoot_left.hspeed = (-(2.9 - (1 * other.swimming)))
    }
    else
    {
        shoot_left = scr_sprite_make_object(x_pos, y_pos, sprite)
        with (shoot_left)
        {
            if (object_index == obj_cheepcheep || object_index == obj_cheepcheep2 || object_index == obj_mushroom || object_index == obj_1up || object_index == obj_star || object_index == obj_hen_mushroom || object_index == obj_megamushroom)
                alarm[10] = -1
            if (object_index == obj_cheepcheep || object_index == obj_cheepcheep2)
                direct = -1
            if (object_index == obj_1up)
                alarm[11] = 4
            hspeed = (-(3.5 - (2 * other.swimming)))
        }
    }
    alarm[0] = 192
}

