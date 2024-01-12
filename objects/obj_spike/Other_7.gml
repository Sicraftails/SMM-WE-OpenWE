if (sprite_index == s_spike_throw || sprite_index == s_spike_throw2 || sprite_index == s_spike_throw3)
{
    sprite_index = s_spike
    image_index = 0
    if (global.apariencia != 3)
    {
        image_speed = 0.15
        alarm[2] = 1
    }
    else
        image_speed = 0.5
}
