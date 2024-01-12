if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base) || place_meeting(x, y, obj_modelbgo))
{
    alarm[1] = 2
    exit
}
else
{
    if (global.apariencia == 3)
        image_speed = -0.3
    else
        image_speed = -0.15
    hspeed = 0
    visible = true
    stretch = 2
}

