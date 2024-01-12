if (drag == 0 && other.drag == 0)
{
    if (object_index == obj_bowser_res || object_index == obj_bowserjr_res || object_index == obj_koopa_res || object_index == obj_koopa_red_res || object_index == obj_koopa_b_res || object_index == obj_koopa_red_b_res || object_index == obj_goomba_res || object_index == obj_goomba_b_res || object_index == obj_goombrat_res || object_index == obj_boomboom_res || object_index == obj_boomboom_b_res)
    {
        audio_play_sound(snd_SMB3_getkey, 0, false)
        with (instance_create(x, y, obj_smoke))
        {
            image_speed = 0.21
            if (global.apariencia < 2)
                sprite_index = spr_SMB3_sparkles_keys
            else
                sprite_index = spr_sparkles_keys
        }
        key = 1
        with (other.id)
            instance_destroy()
    }
    else if (object_index == obj_qblock_res || object_index == obj_block_hidden_res || object_index == obj_block_res || object_index == obj_noteblock_res)
    {
        audio_play_sound(snd_colocar_item_bloque, 0, false)
        sprout = scr_sprite_get_constant_res(other.sprite_index)
        with (other.id)
            instance_destroy()
    }
}

