var index, index2;
switch global.apariencia
{
    case 2:
        index = 8.1
        index2 = 8.4
        break
    case 3:
        index = 8
        index2 = 8.5
        break
    default:
        index = 8
        index2 = 8.2
        break
}

if (sprite_index == s_spike_throw || sprite_index == s_spike_throw2 || sprite_index == s_spike_throw3)
{
    if (image_index >= index && image_index < index2)
        alarm[1] = 1
    else if (global.apariencia == 3 && image_index >= 24 && image_index <= 24.5)
        alarm[2] = 1
}

