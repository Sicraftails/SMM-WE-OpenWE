if ((other.y - 16) > (y + 32))
{
    audio_stop_sound(snd_SMB_link_dead_enemigo)
    audio_play_sound(snd_SMB_link_dead_enemigo, 0, false)
    with (instance_create(x, (y + 34), obj_smoke))
        sprite_index = spr_boltspark
    with (obj_mario)
    {
        vspeed = (-((4 - (2.5 * isswim))))
        event_user(1)
        down_atack = 0
        down_cont = 0
    }
}


