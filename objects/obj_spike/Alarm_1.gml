if (global.bg_level == "snow")
    ball = instance_create(x, (y - 16), obj_snow_ball)
else
    ball = instance_create(x, (y - 16), obj_spike_ball)
ball.visible = false
