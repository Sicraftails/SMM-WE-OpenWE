if (instance_exists(obj_mario) && obj_mario.x > x)
    hspeed = 0.2
else
    hspeed = -0.2
alarm[0] = choose(30, 20, 30)
alarm[1] = 90
alarm[11] = 30
alarm[3] = choose(360, 660, 600, 360)

