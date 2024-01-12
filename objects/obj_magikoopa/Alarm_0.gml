if (!outside_view())
{
    switch global.apariencia
    {
        case 0:
            audio_stop_sound(snd_SMB3_magicbean)
            audio_play_sound(snd_SMB3_magicbean, 0, false)
            break
        case 1:
            audio_stop_sound(snd_SMB3_magicbean)
            audio_play_sound(snd_SMB3_magicbean, 0, false)
            break
        case 2:
            audio_stop_sound(snd_magicbean)
            audio_play_sound(snd_magicbean, 0, false)
            break
        case 3:
            audio_stop_sound(snd_NSMBU_magic)
            audio_play_sound(snd_NSMBU_magic, 0, false)
            break
    }

    if (direct == 1)
        instance_create((x + 14), (y + 5), obj_magic)
    else
        instance_create((x - 14), (y + 5), obj_magic)
}
if (global.apariencia != 3)
    image_speed = 0.09
alarm[1] = 70

