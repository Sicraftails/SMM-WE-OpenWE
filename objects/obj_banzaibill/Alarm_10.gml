var vel;
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky"))
    vel = 0.6
else
    vel = 1
switch direct_t
{
    case 1:
        hspeed = (-vel)
        break
    case 2:
        vspeed = vel
        break
    case 3:
        hspeed = vel
        break
    case 4:
        vspeed = (-vel)
        break
}


