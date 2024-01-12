var spd;
if (hold == 0 && ready == 0 && other.object_index != obj_grinder && other.visible == true && (other.hardness < 99 || other.object_index == obj_podoboo || other.object_index == obj_podoboo_b || other.object_index == obj_buzzy_ceiling) && other.stomp != 5 && (other.object_index != obj_buzzybeetle || (other.object_index == obj_buzzybeetle && other.inup == 0)) && (other.object_index != obj_buzzybeetle_b || (other.object_index == obj_buzzybeetle_b && other.inup == 0)) && (other.object_index != obj_spiny || (other.object_index == obj_spiny && other.inup == 0)) && (other.object_index != obj_jumppiranha || (other.object_index == obj_jumppiranha && other.inup == 0)) && other.object_index != obj_bulletbill && other.object_index != obj_bulletbull_red && other.object_index != obj_cannonball && other.object_index != obj_cannonball_red && other.object_index != obj_pokey && other.object_index != obj_foo && other.object_index != obj_piranhaplant && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    hold_obj = other.id
    hold_speed = 0
    enemy = 1
    if (other.object_index == obj_rocangrejo)
        other.claw = 1
    if (other.paracaidas == 1)
    {
        other.paracaidas = 0
        if (other.object_index == obj_galoomba || other.object_index == obj_galoomba2 || other.object_index == obj_koopa || other.object_index == obj_koopa_red || other.object_index == obj_koopa_b || other.object_index == obj_koopa_red_b || other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
        {
            with (other.id)
                event_user(7)
        }
    }
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
    {
        gravity = 0
        speed = 0
    }
}


