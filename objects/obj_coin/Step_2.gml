if (convertirse == 1 && wings == 0 && paracaidas == 0)
{
    if audio_is_playing(scr_snd_switchsong())
    {
        event_user(0)
        with (instance_create(x, y, obj_flipblock))
            convertirse = 0
        instance_destroy()
    }
}
else if (convertirse == 0 && wings == 0 && paracaidas == 0)
{
    if (!audio_is_playing(scr_snd_switchsong()))
    {
        event_user(0)
        with (instance_create(x, y, obj_flipblock))
            convertirse = 1
        instance_destroy()
    }
}
if (paracaidas == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
}
if (wings == 1)
{
    if (!instance_exists(obj_deadmario))
    {
        if (global.apariencia == 3)
            wings_anim += 0.5
        else
            wings_anim += 0.12
    }
}
if (wings == 1 && paracaidas == 0)
{
    if (y > (ystart + 16))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 16))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
}
