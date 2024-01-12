sprite_index = spr_NSMBU_boomboom
image_speed = 0.5
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
alarm[10] = 20

