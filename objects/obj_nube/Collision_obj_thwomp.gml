if (other.ready == 1 && y > other.y && other.direct_t == 1 && obj_levelmanager.editor == 0)
{
    audio_play_sound(scr_snd_thwomp(), 0, false)
    with (other.id)
    {
        vspeed = 0
        gravity = 0
        ready = 2
        alarm[0] = 60
    }
    instance_create(x, y, obj_smoke)
    instance_destroy()
}

