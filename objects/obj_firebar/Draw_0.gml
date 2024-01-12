var i;
draw_sprite(spr_firebar_base, global.apariencia, (x - 8), (y - 8))
for (i = 0; i < fireballs; i++)
{
    xExtra = lengthdir_x((i * 8), direction)
    yExtra = lengthdir_y((i * 8), direction)
    draw_sprite_ext(spr_firebar, global.apariencia, (x + xExtra), (y + yExtra), 1, 1, spin_angle, c_white, 1)
    if (instance_exists(obj_mario) && (!instance_exists(obj_invincibility)) && (position_meeting(((x - 4) + xExtra), ((y - 4) + yExtra), obj_mario) || position_meeting(((x + 4) + xExtra), ((y + 4) + yExtra), obj_mario)))
    {
        with (obj_mario)
            event_user(0)
    }
}

