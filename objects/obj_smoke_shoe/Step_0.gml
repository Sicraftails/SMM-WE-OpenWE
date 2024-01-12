hspeed = (max(0, (abs(hspeed) - 0.05)) * sign(hspeed))
if (hspeed < 0.05 && hspeed > -0.05)
    instance_destroy()

