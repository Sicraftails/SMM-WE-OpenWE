if (drag == 0 && other.drag == 0)
{
    if (other.object_index == obj_mushroom_res || other.object_index == obj_fireflower_res || other.object_index == obj_superflower_res || other.object_index == obj_hen_mushroom_res || other.object_index == obj_cap_res || other.object_index == obj_star_res)
    {
        audio_play_sound(snd_colocar_item_bloque, 0, false)
        sprout = scr_sprite_get_constant_res(other.sprite_index)
        with (other.id)
            instance_destroy()
    }
}

