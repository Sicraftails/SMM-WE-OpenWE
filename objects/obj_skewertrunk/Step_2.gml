switch direct_t
{
    case 1:
        player = collision_rectangle((bbox_left + 3), parent_y, (bbox_right - 3), bbox_bottom, obj_mario, 1, 0)
        if player
        {
            with (player)
                event_user(0)
        }
        break
    case 2:
        player = collision_rectangle(parent_y, (bbox_top + 5), bbox_right, (bbox_bottom - 5), obj_mario, 0, 1)
        if player
        {
            with (player)
                event_user(0)
        }
        break
    case 3:
        player = collision_rectangle((bbox_left + 3), bbox_top, (bbox_right - 3), parent_y, obj_mario, 1, 0)
        if player
        {
            with (player)
                event_user(0)
        }
        break
    case 4:
        player = collision_rectangle(bbox_left, (bbox_top + 5), parent_y, (bbox_bottom - 5), obj_mario, 0, 0)
        if player
        {
            with (player)
                event_user(0)
        }
        break
}

event_user(0)

