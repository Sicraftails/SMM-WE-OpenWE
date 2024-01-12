if (other.vspeed < 0 && groundpount == 0 && groundpount_cont == 0)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
        vspeed = -0.5
    else
        vspeed = -1.5
}

