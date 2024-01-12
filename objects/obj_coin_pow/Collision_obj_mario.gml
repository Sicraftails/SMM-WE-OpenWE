if (sprite_index == spr_coin || sprite_index == spr_SMB3_coin || sprite_index == spr_SMB3_coin_night || sprite_index == spr_SMB3_coin_dark || sprite_index == spr_SMB_coin || sprite_index == spr_SMB_coin_night || sprite_index == spr_SMB_coin_dark || sprite_index == spr_NSMBU_coin)
{
    audio_stop_sound(scr_snd_coin())
    audio_play_sound(scr_snd_coin(), 0, false)
    global.coins++
    with (instance_create(x, y, obj_score))
        event_user(12)
    if (global.apariencia != 0)
        instance_create(x, y, obj_sparkles_coin)
    instance_destroy()
}
else
{
    switch global.apariencia
    {
        case 2:
            audio_stop_sound(snd_coin10)
            audio_play_sound(snd_coin10, 0, false)
            break
        case 3:
            audio_stop_sound(snd_NSMBU_coin10)
            audio_play_sound(snd_NSMBU_coin10, 0, false)
            break
        default:
            audio_stop_sound(snd_SMB3_coin10)
            audio_play_sound(snd_SMB3_coin10, 0, false)
    }

    switch type
    {
        case 50:
            global.coins += 50
            break
        case 30:
            global.coins += 30
            break
        default:
            global.coins += 10
    }

    with (instance_create(x, y, obj_score))
        event_user(12)
    if (global.apariencia != 0)
        instance_create(x, y, obj_sparkles_coin)
    instance_destroy()
}
