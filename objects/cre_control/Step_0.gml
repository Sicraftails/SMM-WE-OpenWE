switch ready
{
    case 1:
        alpha += 0.015
        if (alpha > 1)
        {
            alpha = 1
            ready = 2
        }
        break
    case 2:
        yy += 0.4
        if (yy > 1400)
            ready = 3
        break
    case 3:
        alpha -= 0.015
        if (alpha < 0)
        {
            alpha = 0
            ready = 4
            room_goto(rm_title)
        }
        break
}

index += 1


