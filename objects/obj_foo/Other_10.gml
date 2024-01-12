if (global.apariencia == 3)
{
    if (dead == 0)
    {
        dead = 1
        sprite_index = spr_NSMBU_foo_deads
        image_speed = 0.5
        image_index = 0
    }
    else
    {
        audio_stop_sound(snd_foo_dead)
        audio_play_sound(snd_foo_dead, 0, false)
        with (instance_create(x, (y + 8), obj_smoke))
            sprite_index = spr_NSMBU_smoke_foo
        instance_destroy()
    }
}
else
{
    repeat (2)
    {
        with (instance_create(x, y, obj_foo_fog))
        {
            motion_set(random(360), random_range(0.25, 0.5))
            scale = 0.5
        }
    }
    instance_destroy()
}

