function scr_snd_pink_coins()
{
if global.apariencia == 2{
    switch global.pink_coins
    {
        case 1:
            audio_play_sound(snd_pink_coin1, 0, false)
            break
        case 2:
            audio_play_sound(snd_pink_coin2, 0, false)
            break
        case 3:
            audio_play_sound(snd_pink_coin3, 0, false)
            break
        case 4:
            audio_play_sound(snd_pink_coin4, 0, false)
            break
        case 5:
            audio_play_sound(snd_pink_coin5, 0, false)
            break
    }
}
else if global.apariencia == 3{
    switch global.pink_coins
    {
        case 1:
            audio_play_sound(snd_NSMBU_pink_coin1, 0, false)
            break
        case 2:
            audio_play_sound(snd_NSMBU_pink_coin2, 0, false)
            break
        case 3:
            audio_play_sound(snd_NSMBU_pink_coin3, 0, false)
            break
        case 4:
            audio_play_sound(snd_NSMBU_pink_coin4, 0, false)
            break
        case 5:
            audio_play_sound(snd_NSMBU_pink_coin5, 0, false)
            break
    }
}
else{
    switch global.pink_coins
    {
        case 1:
            audio_play_sound(snd_SMB_pink_coin1, 0, false)
            break
        case 2:
            audio_play_sound(snd_SMB_pink_coin2, 0, false)
            break
        case 3:
            audio_play_sound(snd_SMB_pink_coin3, 0, false)
            break
        case 4:
            audio_play_sound(snd_SMB_pink_coin4, 0, false)
            break
        case 5:
            audio_play_sound(snd_SMB_pink_coin5, 0, false)
            break
    }
}
}

