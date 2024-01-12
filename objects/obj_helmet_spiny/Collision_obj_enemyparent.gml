if (other.object_index != obj_egg && other.object_index != obj_egg_red && other.object_index != obj_grinder && other.visible == true && other.bbox_bottom < (bbox_top + 10))
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    with (instance_create(x, y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
}
