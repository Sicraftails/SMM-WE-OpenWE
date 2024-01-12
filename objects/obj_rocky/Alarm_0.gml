if ((!place_meeting(x, (y - 16), obj_solid)) && (!place_meeting(x, (y - 16), obj_physicssolid)) && (!place_meeting(x, (y - 16), obj_bullebill_base)))
    ready2 = 1
else
    alarm[0] = 10

