if (drag == 1)
{
    if place_meeting(x, y, obj_arrow_lock)
        drop_lock = 1
    else
        drop_lock = 0
    depth = -19
    x_draw = (mouse_x + xx)
    y_draw = (mouse_y + yy)
    x = (mouse_x + xx)
    y = (mouse_y + yy)
    move_snap(16, 16)
    if (play_sound == 0 && (x != x_start || y != y_start))
    {
        audio_play_sound(snd_drag, 0, false)
        play_sound = 1
    }
    if (obj_persistent.modo_android == 1 && obj_cursor.move_view == 0)
    {
        obj_cursor.move_view = 1
        obj_editormanager.expand_open = 2
    }
    if (x != prev_x || y != prev_y)
    {
        audio_stop_sound(snd_move_object)
        audio_play_sound(snd_move_object, 0, false)
        prev_x = x
        prev_y = y
        if instance_exists(obj_ventana)
        {
            with (obj_ventana)
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
    alarm[0] = 1
}
else
{
    if (drop_lock == 1)
    {
        audio_play_sound(snd_ground_bomb, 0, false)
        x = x_start
        y = y_start
    }
    else if (x != x_start || y != y_start)
        audio_play_sound(snd_mario_add, 0, false)
    move_snap(16, 16)
    drop_lock = 0
    ventana = 0
    if (obj_persistent.modo_android == 1)
    {
        obj_cursor.move_view = 0
        obj_editormanager.speed = 0
        obj_editormanager.expand_open = 0
    }
    depth = laller
    play_sound = 0
    event_user(5)
    x_draw = x
    y_draw = y
    global.editor_lock = 0
    global.resource_block = 0
}
