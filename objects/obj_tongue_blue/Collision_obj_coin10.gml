if (!hunger)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    foodsprite = other.sprite_index
    foodoffset = 8
    audio_stop_sound(snd_coin10)
    audio_play_sound(snd_coin10, 0, false)
    if (other.object_index == obj_coin50)
        global.coins += 50
    else if (other.object_index == obj_coin30)
        global.coins += 30
    else
        global.coins += 10
    with (instance_create(other.x, other.y, obj_score))
        event_user(0)
    if (global.apariencia != 0)
        instance_create((other.x + 8), other.y, obj_sparkles_coin)
    with (other.id)
        instance_destroy()
}

