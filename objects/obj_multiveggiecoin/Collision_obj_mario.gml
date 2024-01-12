if (vspeed >= 0)
{
    audio_play_sound(snd_coin, 0, false)
    global.coins++
    with (instance_create(x, y, obj_score))
        event_user(0)
    instance_create((x + 8), (y - 8), obj_sparkletrail)
    instance_destroy()
}

