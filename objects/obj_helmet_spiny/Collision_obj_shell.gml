if (other.bbox_bottom < ((bbox_top - vvelocidad) + 5) && other.vspeed >= 0 && (!keyboard_check(global.lanzar_agarrar)) && other.inmune == 0)
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    with (instance_create(x, y, obj_score))
        event_user(0)
    with (other.id)
        event_user(0)
}
