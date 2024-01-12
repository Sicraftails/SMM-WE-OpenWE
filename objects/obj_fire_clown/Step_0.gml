if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base) || place_meeting(x, y, obj_solidphy))
    event_user(0)
if ((place_meeting(x, y, obj_onewaygate_right) && hspeed < 0) || (place_meeting(x, y, obj_onewaygate_left) && hspeed > 0))
    event_user(0)
gravity = 0
if (global.apariencia == 3)
    rotacion -= (12 * sign(hspeed))
if outside_view()
    instance_destroy()
