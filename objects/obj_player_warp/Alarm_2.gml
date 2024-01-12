switch direction
{
    case 90:
        if (collision_rectangle((x - 8), (y - 8), (x + 8), (y - 4), obj_solid, 0, 0) || collision_rectangle((x - 8), (y - 8), (x + 8), (y - 4), obj_physicssolid, 0, 0) || collision_rectangle((x - 8), (y - 8), (x + 8), (y - 4), obj_bullebill_base, 0, 0) || collision_rectangle((x - 8), (y - 8), (x + 8), (y - 4), obj_onewaygate_bottom, 0, 0))
        {
            alarm[0] = -1
            alarm[1] = 120
        }
        break
    case 0:
        if (collision_rectangle((x + 20), (y + 8), (x + 28), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((x + 20), (y + 8), (x + 28), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((x + 20), (y + 8), (x + 28), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((x + 18), (y + 8), (x + 28), (bbox_bottom - 4), obj_onewaygate_left, 0, 0))
        {
            alarm[0] = -1
            alarm[1] = 120
        }
        break
    case 270:
        if (collision_rectangle((x - 8), (y + 40), (x + 8), (y + 44), obj_solid, 0, 0) || collision_rectangle((x - 8), (y + 40), (x + 8), (y + 44), obj_physicssolid, 0, 0) || collision_rectangle((x - 8), (y + 40), (x + 8), (y + 44), obj_bullebill_base, 0, 0) || collision_rectangle((x - 8), (y + 40), (x + 8), (y + 44), obj_onewaygate_top, 0, 0))
        {
            alarm[0] = -1
            alarm[1] = 120
        }
        break
    case 180:
        if (collision_rectangle((x - 28), (y + 8), (x - 20), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((x - 28), (y + 8), (x - 20), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((x - 28), (y + 8), (x - 20), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((x - 28), (y + 8), (x - 18), (bbox_bottom - 4), obj_onewaygate_right, 0, 0))
        {
            alarm[0] = -1
            alarm[1] = 120
        }
        break
}


