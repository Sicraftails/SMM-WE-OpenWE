if (gravity == 0)
{
    if (wings == 0 && paracaidas == 0)
    {
        alarm[10] = -1
        hspeed = 0
    }
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        var dark = 1
    else
        dark = 0
    if (global.bg_level == "snow")
        sprite_index = s_spike_throw3
    else if (dark == 1)
        sprite_index = s_spike_throw2
    else
        sprite_index = s_spike_throw
    switch global.apariencia
    {
        case 2:
            image_speed = 0.3
            break
        case 3:
            image_speed = 0.5
            break
        default:
            image_speed = 0.2
            break
    }

}
else
    alarm[0] = 1
