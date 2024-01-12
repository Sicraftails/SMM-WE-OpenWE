if (can_anim == 1)
{
    if (anim < 1)
        anim += 0.08
    else
    {
        switch number
        {
            case 1:
                event_user(9)
                break
            case 2:
                event_user(3)
                break
            case 2.1:
                event_user(5)
                break
            case 3:
                event_user(1)
                break
            case 3.1:
                event_user(2)
                break
            case 3.2:
                event_user(8)
                break
            case 4:
                event_user(4)
                break
            case 6:
                event_user(6)
                break
            case 7:
                event_user(7)
                break
            case 9:
                event_user(9)
                break
            case 10:
                event_user(10)
                break
            case 11:
                event_user(11)
                break
            case 12:
                event_user(12)
                break
			case 13:
                event_user(13)
                break
			case 14:
                event_user(14)
                break
            default:
                event_user(0)
        }

        anim = 1
        can_anim = 0
    }
    image_xscale = anim
    image_yscale = anim
}
if (can_anim2 == 1)
{
    if instance_exists(obj_window_button)
    {
        with (obj_window_button)
            instance_destroy()
    }
    if instance_exists(obj_button_wings)
    {
        with (obj_button_wings)
            instance_destroy()
    }
    if (anim > 0.6)
        anim -= 0.1
    else
        instance_destroy()
    image_xscale = anim
    image_yscale = anim
}

