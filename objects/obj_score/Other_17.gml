image_index = 8
if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_1up_coins)
    audio_play_sound(snd_NSMBU_1up_coins, 0, false)
}
if (room != rm_editor && room != rm_title and global.dsm = 1)
{
    if (global.liveleves < 3)
        global.liveleves++
}

