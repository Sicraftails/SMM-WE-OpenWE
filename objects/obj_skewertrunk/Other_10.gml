if (groundpount_cont > 0)
{
    groundpount_cont--
    switch direct_t
    {
        case 1:
            var rock = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_rockparent, 0, 0)
            var block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, 0, 0)
            break
        case 2:
            rock = collision_rectangle((bbox_right + 2), bbox_top, ((bbox_right + hspeed) + 2), bbox_bottom, obj_rockparent, 0, 0)
            block = collision_rectangle((bbox_right + 2), bbox_top, ((bbox_right + hspeed) + 2), bbox_bottom, obj_blockparent, 0, 0)
            break
        case 3:
            rock = collision_rectangle(bbox_left, ((bbox_bottom + vspeed) - 2), bbox_right, (bbox_top - 2), obj_rockparent, 0, 0)
            block = collision_rectangle(bbox_left, ((bbox_bottom + vspeed) - 2), bbox_right, (bbox_top - 2), obj_blockparent, 0, 0)
            break
        case 4:
            rock = collision_rectangle(((bbox_left + hspeed) - 2), bbox_top, bbox_left, bbox_bottom, obj_rockparent, 0, 0)
            block = collision_rectangle(((bbox_left + hspeed) - 2), bbox_top, bbox_left, bbox_bottom, obj_blockparent, 0, 0)
            break
    }

    if rock
    {
        with (rock)
            alarm[0] = 1
    }
    if block
    {
        if (block.object_index == obj_noteblock || block.object_index == obj_musicblock || block.object_index == obj_noteblock_s || block.object_index == obj_onoffblock)
        {
            with (block)
                event_user(3)
        }
        else
        {
            with (block)
                alarm[2] = 1
        }
    }
}


