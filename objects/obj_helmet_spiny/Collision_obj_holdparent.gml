if (other.bbox_bottom < ((bbox_top - vvelocidad) + 5) && other.vspeed >= 0 && (!keyboard_check(global.lanzar_agarrar)))
{
    audio_stop_sound(snd_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
    other.hspeed = lengthdir_x(1.5, point_direction(x, y, other.x, other.y))
    if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -1.5)
}
