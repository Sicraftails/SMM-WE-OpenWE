if (gravity > 0 || (!instance_exists(obj_mario)))
{
    alarm[10] = 1
    exit
}
sprite_index = s_charginchuck_walk
friction = 0
alarm[0] = 6
if (obj_mario.bbox_bottom < (y - 16))
{
    image_speed = 0.6
    lookout = 0
    alarm[1] = 120
    if (obj_mario.x < x)
        hspeed = -1
    else
        hspeed = 1
}
else
{
    image_speed = 0.9
    lookout = 1
    if (obj_mario.x < x)
        hspeed = -1.75
    else
        hspeed = 1.75
}