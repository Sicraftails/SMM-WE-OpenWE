if (sprout != -1)
{
    if (sprout == -28)
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(x, ystart, obj_beanstalk))
        {
            ready = 0
            downwards = 1
            alarm[2] = 60
        }
        sprout = -1
    }
    else
    {
        with (instance_create(x, y, obj_powerupsprout_note))
        {
            sprite_index = scr_constant_get_sprite(other.sprout)
            downwards = 1
            wings = other.wings
            s_sprout = other.sprout
        }
        sprout = -1
    }
}

