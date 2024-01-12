audio_play_sound(snd_SMB3_bowser_fire, 0, false)
if (direct == 1)
{
    with (instance_create((x + 20), (y - 11), obj_bowser_fire))
    {
        hspeed = (1.5 * other.direct)
        direct = other.direct
        if (vspeed == 0)
            decender = 1
    }
}
else
{
    with (instance_create((x - 20), (y - 11), obj_bowser_fire))
    {
        hspeed = (1.5 * other.direct)
        direct = other.direct
        if (vspeed == 0)
            decender = 1
    }
}
alarm[3] = 20

