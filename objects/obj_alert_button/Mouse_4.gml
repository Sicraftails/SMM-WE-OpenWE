if (canpress == 1)
{
    audio_stop_sound(snd_guardabot)
    audio_play_sound(snd_inventory, 0, false)
    image_index = 1
    global.postnivel = 1
	global.verpub = 1
    room_goto(rm_guardabot_play)
}

