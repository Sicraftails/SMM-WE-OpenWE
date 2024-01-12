if instance_exists(obj_mario)
{
    with (other.id)
    {
        if (object_index != obj_noteblock && object_index != obj_musicblock && object_index != obj_noteblock_s && ready == 0)
        {
            if (object_index == obj_flipblock)
            {
                if (global.powerup == 0)
                {
                    event_user(3)
					expand = 1
                    with (obj_groundpount)
                        instance_destroy()
                }
                else
                {
                    alarm[2] = 1
                    spd_temp = (obj_mario.vspeed + 0.5)
                    with (obj_mario)
                        vspeed = 0
                    with (other.id)
                        alarm[0] = 2
                    if (!keyboard_check(global.abajo))
                    {
                        with (obj_groundpount)
                            instance_destroy()
                    }
                    else
                    {
                        audio_stop_sound(snd_NSMBU_groundpount_stop)
                        audio_play_sound(snd_NSMBU_groundpount_stop, 0, false)
                    }
                }
            }
            else if (object_index == obj_block_multicoin)
            {
                if (!keyboard_check(global.abajo))
                {
                    with (obj_groundpount)
                        instance_destroy()
                }
                if (global.powerup == 0)
                {
                    event_user(3)
					expand = 1
                    if (cointime == 2)
                    {
                        with (obj_groundpount)
                            instance_destroy()
                    }
                }
                else
				{
					expand = 1
                    event_user(3)
				}
            }
            else
            {
                event_user(3)
				expand = 1
                with (obj_groundpount)
                    instance_destroy()
            }
        }
        else
        {
            with (obj_groundpount)
                instance_destroy()
        }
    }
}
else
{
    with (obj_groundpount)
        instance_destroy()
}

