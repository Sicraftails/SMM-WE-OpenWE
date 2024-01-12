var new_dir, diff;
image_speed = 0.5
direct = -1
decender = 0
gravity = 0
if instance_exists(obj_mario)
{
    move_towards_point(obj_mario.x, (obj_mario.y + 16), 0.6)
    new_dir = point_direction(x, y, obj_mario.x, (obj_mario.y + 16))
    diff = angle_difference(direction, new_dir)
    direction -= min((1 * sign(diff)), abs(diff))
}
else
{
    move_towards_point(obj_levelmanager.x, obj_levelmanager.y, 0.6)
    new_dir = point_direction(x, y, obj_levelmanager.x, obj_levelmanager.y)
    diff = angle_difference(direction, new_dir)
    direction -= min((1 * sign(diff)), abs(diff))
}

