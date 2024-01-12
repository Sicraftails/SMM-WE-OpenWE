if (global.apariencia == 3)
{
    audio_stop_sound(snd_rocangrejo_throw)
    audio_play_sound(snd_rocangrejo_throw, 0, false)
    with (instance_create((x + (8 * direct)), (y - 12), obj_rorock))
        hspeed = ((1 - (0.5 * other.swimming)) * other.direct)
}
else
{
    with (instance_create((x + (14 * direct)), y, obj_rorock))
        hspeed = ((1 - (0.5 * other.swimming)) * other.direct)
}

