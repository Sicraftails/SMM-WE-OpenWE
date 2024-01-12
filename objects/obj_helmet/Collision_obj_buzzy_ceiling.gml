if (other.bbox_bottom < ((bbox_top - vvelocidad) + 8) && other.vspeed >= 0)
{
    audio_stop_sound(snd_helmet)
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
    with (other.id)
        event_user(1)
}

