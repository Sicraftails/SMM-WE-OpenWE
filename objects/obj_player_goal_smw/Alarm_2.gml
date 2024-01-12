if (instance_exists(obj_ground3) && x >= (obj_ground3.x + 104))
    pose = 1
else
{
    hspeed = 0
    can_walk = 0
    sprite_index = scr_marioidle()
    image_speed = 0
    image_index = 0
    alarm[3] = 30
}

