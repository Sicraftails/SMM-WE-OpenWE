if (global.bg_level != "underwater" && modo_water == 0)
{
    if (act_modo_vuelo == 1 && place_free(x, (y + 1)) && vspeed > 0)
    {
        modo_vuelo = 1
        alarm[0] = 120
        act_modo_vuelo = 0
    }
    if (paracaidas == 1)
    {
        gravity = 0.1
        if (vspeed > 0.4)
            vspeed = 0.4
    }
    else if (modo_vuelo == 0)
    {
        gravity = 0.12
        if (direct == 1 && hspeed > 0.5)
        {
            hspeed -= 0.08
            if (hspeed <= 0.5)
                hspeed = 0.5
        }
        else if (direct == -1 && hspeed < -0.5)
        {
            hspeed += 0.08
            if (hspeed >= -0.5)
                hspeed = -0.5
        }
        if (vspeed > 4)
            vspeed = 4
    }
    else if (modo_vuelo == 1)
    {
        gravity = 0
        vspeed -= 0.03
        hspeed = (0.2 * direct)
        if (vspeed < 0.3)
            vspeed = -0.3
    }
    if ((instance_exists(obj_lava_water) && y >= obj_lava_water.y) || (global.bg_level != "forest" && global.bg_level != "castle" && y >= (room_height - 16)))
    {
        if (paracaidas == 1)
        {
            instance_create((x + (3 * direct)), y, obj_paracaidas_go)
            paracaidas = 0
            hspeed = 0
            alarm[10] = 10
        }
        if (direct == 1)
        {
            if (wings == 1)
                hspeed = 1
            else
                hspeed = 0.8
        }
        else if (wings == 1)
            hspeed = -1
        else
            hspeed = -0.8
        if (global.bg_level == "castle")
        {
            if (lava == 0)
            {
                lava = 1
                alarm[1] = 8
            }
        }
        else if (global.bg_level == "forest" && global.modo_noche == 1)
            lava = 1
        switch jump
        {
            case 0:
                jump = 1
                vspeed = -3
                break
            case 1:
                jump = 2
                vspeed = -3
                break
            case 2:
                vspeed = -5
                if (wings == 1)
                    act_modo_vuelo = 1
                jump = 0
        }

        if (global.bg_level != "castle")
        {
            with (instance_create((x - 13), (y - 6), obj_spinthump))
                sprite_index = spr_cheepcheep_bubble
        }
    }
    if (paracaidas == 1)
    {
        direct = -1
        if (x > (xstart + 16))
        {
            if (hspeed < -0.5)
                hspeed = -0.5
            else
                hspeed -= 0.015
        }
        else if (x < (xstart - 16))
        {
            if (hspeed > 0.5)
                hspeed = 0.5
            else
                hspeed += 0.015
        }
    }
}
if (lava == 1)
{
    if (global.apariencia == 3)
        anim += 0.5
    else
        anim += 0.15
}
if (paracaidas == 0)
{
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
}
if (wings == 1)
{
    if (modo_vuelo == 1)
        wings_anim += 0.25
    else
        wings_anim += 0.12
    if (global.bg_level == "underwater" || modo_water == 1)
    {
        if (y > (ystart + 16))
        {
            if (vspeed < -0.5)
                vspeed = -0.5
            else
                vspeed -= 0.015
        }
        else if (y < (ystart - 16))
        {
            if (vspeed > 0.5)
                vspeed = 0.5
            else
                vspeed += 0.015
        }
    }
    if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 16) && obj_lava_water.vspeed > 0 && modo_water == 1)
        y = (obj_lava_water.y + 16)
}
if (paracaidas == 1 && (global.bg_level == "underwater" || (global.bg_level != "forest" && global.bg_level != "castle" && y >= (room_height - 16))))
{
    instance_create((x + (3 * direct)), y, obj_paracaidas_go)
    paracaidas = 0
    alarm[10] = 10
}

