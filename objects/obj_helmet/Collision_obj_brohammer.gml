if (object_index == obj_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
else
{
    audio_stop_sound(snd_helmet)
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
}
with (other.id)
    event_user(0)

