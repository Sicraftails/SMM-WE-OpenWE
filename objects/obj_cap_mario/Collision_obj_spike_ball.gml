if instance_exists(obj_mario)
{
    if (sprite_index == spr_cap_spinjump && (obj_mario.caped == 1 || obj_mario.stompstyle == 1))
    {
        audio_stop_sound(scr_snd_kick())
        audio_play_sound(scr_snd_kick(), 0, false)
        if (obj_mario.x < other.x)
        {
            with (other.id)
            {
                vspeed = (-((2 - (1 * swimming))))
                hspeed = 1.2
            }
        }
        else
        {
            with (other.id)
            {
                vspeed = (-((2 - (1 * swimming))))
                hspeed = -1.2
            }
        }
    }
}
