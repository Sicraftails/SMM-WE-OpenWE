if (obj_mario.visible == true)
{
    x = obj_mario.x
    y = (obj_mario.y + 16)
    obj_mario.holding = 3
    audio_play_sound(snd_shell_drybones_in, 0, false)
    instance_create(obj_mario.x, obj_mario.y, obj_kuribo_drybones)
    with (obj_mario)
    {
        dash_atack = 0
        dash_cont = 0
        arrow = 0
        arrow_ready = 0
        event_user(15)
    }
    instance_destroy()
}
