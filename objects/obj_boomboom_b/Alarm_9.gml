image_speed = (0.2 * increment)
vspeed = (-(6 - (4 * swimming)))
y--
alarm[1] = 120
alarm[11] = 60
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    hspeed = -2
else
    hspeed = 2

