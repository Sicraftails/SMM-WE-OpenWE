image_speed = 0
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    var dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            index = 1
        else
            index = 0
        break
    case 1:
        if (dark == 1)
            index = 3
        else
            index = 2
        break
    case 2:
        index = 4
        break
    case 3:
        index = 5
        break
}

posx = 0
posy = 0
direct_t = 1
rotacion = 0

