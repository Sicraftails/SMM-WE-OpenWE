if (other.bbox_bottom < ((bbox_top - vvelocidad) + 8) && other.vspeed >= 0 && obj_levelmanager.editor == 0)
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    with (instance_create(x, y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
}
