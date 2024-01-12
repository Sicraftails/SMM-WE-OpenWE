audio_play_sound(scr_snd_kick(), 0, false)
if (other.x >= x)
{
    with (other.id)
    {
        fisica = 1
        vspeed = -2
        hspeed = 1.2
    }
}
else
{
    with (other.id)
    {
        fisica = 1
        vspeed = -2
        hspeed = -1.2
    }
}

