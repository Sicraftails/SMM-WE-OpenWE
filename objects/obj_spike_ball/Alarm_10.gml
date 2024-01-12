if (spike_alone == 0)
{
    if (global.apariencia == 2)
    {
        if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
            vspeed = -1
        else
            vspeed = -2.5
    }
}
else if (paracaidas == 1)
{
    hspeed = -0.5
    ready = 1
    fisica = 1
}
else
{
    ready = 1
    fisica = 1
    alarm[0] = 10
}
