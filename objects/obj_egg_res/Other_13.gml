if (global.apariencia == 2)
{
    audio_play_sound(scr_snd_powerup(), 0, false)
    global.yoshi_egg = 1
    with (instance_create(x, y, obj_egg_red_res))
    {
        wings = other.wings
        paracaidas = other.paracaidas
    }
    if instance_exists(obj_card_item)
    {
        with (obj_card_item)
        {
            if (obj == obj_egg_res)
            {
                obj = obj_egg_red_res
                obj_draw = 60
            }
        }
    }
    instance_destroy()
}

