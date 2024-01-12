/// @description Set Cap sprite
turning = 0
caped = 0
if (global.powerup != 3)
    exit
if (global.powerup == 3 && obj_mario.state == 2 && instance_exists(obj_cap_mario))
    obj_cap_mario.sprite_index = spr_cap_fall
else if (global.powerup == 3 && obj_mario.state == 1 && instance_exists(obj_cap_mario) && obj_mario.hspeed != 0)
    obj_cap_mario.sprite_index = spr_cap_run
else if (global.powerup == 3 && obj_mario.state == 1 && instance_exists(obj_cap_mario) && obj_mario.hspeed == 0)
{
    obj_cap_mario.sprite_index = spr_cap_start_stay
    obj_cap_mario.image_speed = 0.1
}


