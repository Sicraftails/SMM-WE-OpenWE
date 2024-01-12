if (held == 0 && other.vspeed < 0 && kickme == 1)
{
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky"))
        vspeed = -1.8
    else
        vspeed = -3
    y--
    kickme = 0
    alarm[2] = 4
}
else if (held == 0 && other.vspeed < 0 && vspeed < 0)
    event_user(1)
