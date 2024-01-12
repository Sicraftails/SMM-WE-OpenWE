event_inherited()
if (fallow_chomp == 1)
{
    oldx[0] = x
    oldy[0] = y
    for (i = amount_previous; i > 0; i -= 1)
    {
        oldx[i] = oldx[(i - 1)]
        oldy[i] = oldy[(i - 1)]
    }
}
if (gravity == 0)
{
    if (object_index == obj_chain_chomp_free_b)
        vspeed = (-((3 - (1 * swimming))))
    else
        vspeed = (-((2 - (0.5 * swimming))))
    y--
}
else
    gravity = 0.125
if (global.apariencia != 3)
    exit
if (!outside_view())
{
    if (sound == 0)
    {
        audio_stop_sound(snd_NSMBU_chomp)
        audio_play_sound(snd_NSMBU_chomp, 0, false)
        sound = 1
    }
}
else
    sound = 0
