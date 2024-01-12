switch inup
{
    case 1:
        if ((hspeed < 0 && (!position_meeting(bbox_left, (y - 12), obj_solid))) || (hspeed > 0 && (!position_meeting(bbox_right, (y - 12), obj_solid))))
            hspeed = (-hspeed)
        if (cankill == 1 && (!place_meeting(x, (y - 12), obj_solid)) && (!place_meeting(x, (y - 12), obj_physicssolid)))
            event_user(0)
        break
    case 2:
        event_user(6)
        if (cankill == 1 && (!place_meeting(x, (y + 12), obj_solidtop)) && (!place_meeting(x, (y + 12), obj_physicssolid)))
            event_user(0)
        break
    default:
        if (boo_huida == 1)
        {
            vspeed = -2
            hspeed = choose(2, -2)
            boo_huida = 0
            break
        }
        else
        {
            event_user(8)
            if (wings == 0)
            {
                velocity = 0.015
                if (speed > 0.4)
                    speed = 0.4
                break
            }
            else
            {
                if (global.apariencia == 3)
                    wings_anim += 1
                else
                    wings_anim += 0.12
                velocity = 0.1
                if (speed > 0.8)
                    speed = 0.8
            }
        }
}


