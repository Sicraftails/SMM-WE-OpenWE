var new_dir, diff;
if (homing == 1)
{
    if instance_exists(obj_mario)
    {
        new_dir = point_direction(x, y, obj_mario.x, (obj_mario.y + 16))
        diff = angle_difference(direction, new_dir)
        direction -= min((1 * sign(diff)), abs(diff))
        lastdir = direction
    }
    else
        direction = lastdir
}
else if (homing == 2)
    direction = lastdir
if (global.apariencia == 3 && (!instance_exists(obj_deadmario)))
    anim += 0.3

