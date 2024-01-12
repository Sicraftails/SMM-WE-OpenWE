var spd;
if (hold == 0 && ready == 0 && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    hold_obj = instance_create(other.x, other.y, obj_shell_drybones)
    posx = 0
    posy = 9
    release = 1
    alarm[1] = 30
    if (other.hspeed > 3)
        spd = 3
    else if (other.hspeed < -3)
        spd = -3
    else
        spd = other.hspeed
    knopen_xspeed[segmenten] = spd
    with (other.id)
        instance_destroy()
}


