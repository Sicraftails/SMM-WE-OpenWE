if (global.apariencia == 2)
{
    audio_play_sound(snd_remove_hongo_enemigos, 0, false)
    with (instance_create(x, y, obj_enemy_dead))
    {
        girar = 1
        sprite_index = spr_mushroon_deads
        image_index = global.apariencia
        hspeed = 1
    }
    global.yoshi_egg = 0
    with (instance_create(x, y, obj_egg_res))
    {
        wings = other.wings
        paracaidas = other.paracaidas
    }
    if instance_exists(obj_card_item)
    {
        with (obj_card_item)
        {
            if (obj == obj_egg_red_res)
            {
                obj = obj_egg_res
                obj_draw = 59
            }
        }
    }
    instance_destroy()
}
