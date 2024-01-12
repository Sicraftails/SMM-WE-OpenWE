if (hspeed == 0)
{
    if (paracaidas == 1)
        hspeed = -0.5
    else if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
            hspeed = -0.3
        else
            hspeed = -0.4
    }
    else if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
        hspeed = 0.3
    else
        hspeed = 0.4
}


