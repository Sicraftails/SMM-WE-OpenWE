if (global.apariencia == 0)
{
    sprite_index = spr_SMB3_explotion
    image_speed = 0.4
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_explotion
    image_speed = 0.4
}
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_explotion
    image_speed = 0.5
}
else
    image_speed = 0.45
if (!outside_view())
{
    if (global.powerup == -85)
    {
        audio_stop_sound(snd_SMB_link_explosion)
        audio_play_sound(snd_SMB_link_explosion, 0, false)
    }
    else
    {
        audio_stop_sound(scr_snd_explode())
        audio_play_sound(scr_snd_explode(), 0, false)
    }
}
alarm[0] = 30
big = 0
active_block = 0
hitpoint = 0
ready = 0

