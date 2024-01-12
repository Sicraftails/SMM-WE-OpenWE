if (drag == 1)
{
    image_index = 1
    if (y > obj_water_move.y)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
        y = obj_water_move.y
    }
    else if (y < 32)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
        y = 32
    }
    else
        y = (floor((mouse_y / 16)) * 16)
    if (can_cont == 1)
    {
        cont += 0.5
        if instance_exists(obj_ventana_water)
        {
            with (obj_ventana_water)
                can_anim2 = 1
            can_cont = 0
            cont = 0
        }
        else if (cont >= 15)
        {
            instance_create(x, y, obj_ventana_water)
            can_cont = 0
            cont = 0
        }
    }
    if (y != prev_y)
    {
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_rieles, 0, false)
        prev_y = y
        can_cont = 0
        cont = 0
        if instance_exists(obj_ventana_water)
        {
            with (obj_ventana_water)
                can_anim2 = 1
        }
    }
    alarm[0] = 1
}
else
{
    audio_play_sound(snd_colocar_objectos, 0, false)
    image_index = 0
    obj_cursor.move = 0
    if instance_exists(obj_card_bout)
        obj_card_bout.pos_y_limit = y
    if (y >= room_height)
        y = (room_height - 16)
    else if (y < 0)
        y = 0
    global.editor_lock = 0
    global.resource_block = 0
}

