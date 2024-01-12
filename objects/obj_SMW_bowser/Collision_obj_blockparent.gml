if (other.vspeed < 0 && bbox_bottom < (other.yprevious + 5))
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
        vspeed = -0.5
    else
        vspeed = -1
}

