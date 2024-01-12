image_speed = (0.2 * increment)
stomp = 4
ready = 0
vspeed = (-(3 - (2 * swimming)))
y--
alarm[11] = 60
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    hspeed = (-1.2 * increment)
else
    hspeed = (1.2 * increment)

