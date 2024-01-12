sprite_index = s_boomboom
image_speed = (0.2 * increment)
stomp = 4
ready = 0
vspeed = (-(6 - (4 * swimming)))
alarm[11] = 60
alarm[3] = 120
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    hspeed = (-1.5 * increment)
else
    hspeed = (1.5 * increment)

