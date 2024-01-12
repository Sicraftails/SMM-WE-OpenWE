if (!held)
{
    if ((other.bbox_bottom < (yprevious + 6) || other.groundpount != 0) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0)) && (!collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)) && other.vspeed > 0 && ready == 0)
    {
        image_speed = 0.3
        with (other.id)
        {
            hspeed = 0
            vspeed = 0
            stompstyle = 0
            state = 0
            jumping = 0
            if (object_index == obj_marioU)
            {
                triple_jump = 0
                triple_count = 0
                airspin = 0
                airspin_count = 0
                groundpount = 0
                walljump = 0
                helice_fly = 0
                disablecontrols = 0
            }
            if keyboard_check(global.abajo)
            {
                if (global.apariencia == 1 || global.apariencia == 3)
                {
                    if (holding != 2)
                        isduck = 1
                }
                else if (global.apariencia == 2)
                {
                    if (holding == 2)
                    {
                        isduck = 1
                        isduckhold = 1
                    }
                    else
                        isduck = 1
                }
            }
        }
        ready = 1
        ready2 = 1
    }
}

