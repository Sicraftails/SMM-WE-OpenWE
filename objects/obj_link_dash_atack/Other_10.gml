if instance_exists(obj_mario)
{
    var oneway_left = collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_onewaygate_left, 0, 0)
    var oneway_right = collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_onewaygate_right, 0, 0)
    if (obj_mario.hspeed > 0 && (collision_rectangle((bbox_right - 4), bbox_top, (bbox_right - 3), bbox_bottom, obj_solid, 0, 0) || collision_rectangle((bbox_right - 4), bbox_top, (bbox_right - 3), bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle((bbox_right - 4), bbox_top, (bbox_right - 3), bbox_bottom, obj_bullebill_base, 0, 0) || (oneway_left && oneway_left.object_index != obj_shield_left)))
    {
        audio_play_sound(snd_SMB3_thwomp_original, 0, false)
        with (obj_mario)
        {
            hspeed = -2
            dash_atack = 0
            dash_cont = 0
        }
    }
    else if (obj_mario.hspeed < 0 && (collision_rectangle((bbox_left + 3), bbox_top, (bbox_left + 4), bbox_bottom, obj_solid, 0, 0) || collision_rectangle((bbox_left + 3), bbox_top, (bbox_left + 4), bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle((bbox_left + 3), bbox_top, (bbox_left + 4), bbox_bottom, obj_bullebill_base, 0, 0) || (oneway_right && oneway_right.object_index != obj_shield_right)))
    {
        audio_play_sound(snd_SMB3_thwomp_original, 0, false)
        with (obj_mario)
        {
            hspeed = 2
            dash_atack = 0
            dash_cont = 0
        }
    }
}


