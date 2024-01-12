if (obj_levelmanager.editor == 0)
{
    audio_stop_sound(snd_stomp)
    audio_play_sound(snd_stomp, 0, false)
    if (rot == 0)
        rot = 1
    hspeed = lengthdir_x(3, point_direction(other.x, other.y, x, y))
}
