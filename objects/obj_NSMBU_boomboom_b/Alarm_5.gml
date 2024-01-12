sprite_index = spr_NSMBU_boomboom_fly_b
image_speed = 0.5
stomp = 4
ready = 0
fly = 1
vspeed = (-(6.125 - (4 * swimming)))
alarm[6] = 10
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    hspeed = (-1.2 * increment)
else
    hspeed = (1.2 * increment)

