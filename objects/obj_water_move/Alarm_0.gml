if (drag == 1)
{
    image_index = 1
    if (y <= obj_water_move_limit.y)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
        y = obj_water_move_limit.y
    }
    else
        y = (floor((mouse_y / 16)) * 16)
    if (y != prev_y)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        prev_y = y
    }
    alarm[0] = 1
}
else
{
    audio_play_sound(snd_colocar_objectos, 0, false)
    image_index = 0
    obj_cursor.move = 0
    if (y >= room_height)
    {
        y = (room_height - 16)
        obj_lava_water.y = (y + 12)
    }
    else if (y < 0)
    {
        y = 0
        obj_lava_water.y = (y + 12)
    }
    if instance_exists(obj_card_bout)
        obj_card_bout.pos_y = y
    global.editor_lock = 0
    global.resource_block = 0
}

