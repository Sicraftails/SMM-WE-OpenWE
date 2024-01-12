if (drag == 1)
{
    depth = -19
    x_draw = (mouse_x + xx)
    y_draw = (mouse_y + yy)
    x = (mouse_x + xx)
    y = (mouse_y + yy)
    move_snap(16, 16)
    if (x != prev_x || y != prev_y)
    {
        audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = x
        prev_y = y
        if instance_exists(obj_ventana_mario)
        {
            with (obj_ventana_mario)
                can_anim2 = 1
        }
    }
    if (ventana > 0 && x == x_start && y == y_start)
    {
        ventana += 0.5
        if (ventana >= 14)
        {
            event_user(0)
            ventana = 0
        }
    }
    else
        ventana = 0
    global.editor_lock = 1
    obj_cursor.move_view = 1
    alarm[0] = 1
}
else
{
    if (x != x_start || y != y_start)
        audio_play_sound(snd_mario_add, 0, false)
    move_snap(16, 16)
    drop_lock = 0
    ventana = 0
    depth = laller
    x_draw = x
    y_draw = y
    x_start = x
    y_start = y
    global.editor_lock = 0
    global.resource_block = 0
}

