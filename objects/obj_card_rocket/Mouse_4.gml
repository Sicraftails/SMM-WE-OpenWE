if (obj_levelmanager.editor == 1 && obj_cursor.item_add == 0 && obj_cursor.move == 0 && obj_erase.active == 0 && obj_editormanager.expand_open == 0 && obj_creator_jugar_editar.image_speed == 0 && ready == 0)
{
    if (counter_draw == 0 && (!audio_is_playing(snd_rocket_count)))
        audio_play_sound(snd_rocket_count, 0, false)
    counter_draw = 1
    sprite_index = spr_rocket_go
    image_speed = 0.15
}

