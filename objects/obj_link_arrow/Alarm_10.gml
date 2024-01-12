if (direct == 1)
{
    switch type
    {
        case 1:
            rot = 60
            break
        case 2:
            rot = 0
            break
        case 3:
            rot = 330
            break
    }

}
else
{
    switch type
    {
        case 1:
            rot = 120
            break
        case 2:
            rot = 180
            break
        case 3:
            rot = 210
            break
    }

}
direction = rot
if ((instance_exists(obj_mario) && obj_mario.isswim == 1) || (global.bg_level == "sky" && global.modo_noche == 1))
    spd = 2
motion_add(direction, spd)
spd = 0


