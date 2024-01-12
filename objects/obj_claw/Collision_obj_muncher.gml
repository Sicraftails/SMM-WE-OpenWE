var muncher, spd;
muncher = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0)
if (muncher && muncher.object_index != other.object_index)
exit
if (hold == 0 && ready == 0 && other.mebelow == -4 && other.vspeed != 0 && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    hold_obj = other.id
    hold_speed = 0
    posx = sprite_get_xoffset(hold_obj.sprite_index)
    if (posx != 0)
        posx = 0
    else
        posx = 8
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
    {
        gravity = 0
        speed = 0
    }
}


