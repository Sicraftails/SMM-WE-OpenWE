prevhspeed = hspeed
event_inherited()
if (hspeed != prevhspeed)
    event_user(0)
gravity = 0
if outside_view()
    instance_destroy()
