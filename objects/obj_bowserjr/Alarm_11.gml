var x_pos;
if (fire == 3 && hitpoints == 1)
{
    if (direct == 1)
        x_pos = (x + 10)
    else
        x_pos = (x - 10)
    with (instance_create(x_pos, (y - 5), obj_shell_held))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_shell
                break
            case 1:
                sprite_index = spr_SMB3_shell
                break
            case 2:
                sprite_index = spr_shell
                break
            case 3:
                sprite_index = spr_NSMBU_shell
                break
        }

        prevhspeed = (2.8 * other.direct)
        hspeed = (2.8 * other.direct)
        vspeed = -1.5
        inmune = 1
        alarm[2] = 15
    }
}
else if (fire != 4)
{
    if (direct == 1)
    {
        with (instance_create((x + 5), (y - 5), obj_brohammer))
        {
            hspeed = 1.5
            direct = 1
        }
    }
    else
    {
        with (instance_create((x - 5), (y - 5), obj_brohammer))
        {
            hspeed = -1.5
            direct = -1
        }
    }
}
switch fire
{
    case 4:
        fire = 0
        if (global.apariencia == 0)
        {
            sprite_index = spr_SMB_bowserjr_walk
            image_speed = 0.1
        }
        alarm[1] = choose(60, 120, 90, 180)
        break
    case 3:
        fire = 4
        fire_anim = 0
        if (global.apariencia == 0)
        {
            sprite_index = spr_SMB_bowserjr_walk
            image_speed = 0.1
        }
        alarm[11] = 15
        break
    default:
        fire++
        alarm[11] = 15
}


