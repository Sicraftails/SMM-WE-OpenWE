var spd;
if (hold == 0 && ready == 0 && other.object_index != obj_cap && other.object_index != obj_propellershroom && other.object_index != obj_pballon && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    hold_obj = other.id
    hold_speed = 0
    if (other.object_index != obj_superflower && other.object_index != obj_fireflower && other.object_index != obj_link_res)
        enemy = 1
    if (other.paracaidas == 1)
        other.paracaidas = 0
    if (other.object_index == obj_megamushroom)
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


