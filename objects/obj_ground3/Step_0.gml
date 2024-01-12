sprite_index = scr_tiles_ground_start()
image_yscale = size_y
if (obj_levelmanager.editor == 1)
{
    if (poder_girar == 1)
        anim += 0.06
    else
        anim = 0
    if (crecer_h == 1)
    {
        event_user(0)
        x += 16
        room_width += 16
        can_up = 1
        crecer_h = 0
        alarm[0] = 2
    }
    else if (crecer_h == 2)
    {
        event_user(0)
        x -= 16
        room_width -= 16
        can_up = 1
        crecer_h = 0
        alarm[0] = 2
    }
    if (crecer_v == 1)
    {
        event_user(0)
        size_y++
        y -= 16
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    else if (crecer_v == 2)
    {
        event_user(0)
        size_y--
        y += 16
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 1 && crecer_h == 0 && crecer_v == 0)
    {
        if (mouse_x > (x + 16) && can_up == 0 && room_width < 9216)
            crecer_h = 1
        else if (mouse_x < x && can_up == 0 && ((room_width > 384 && global.bg_level != "castle" && obj_editormanager.zoom == 0) || (room_width > 496 && global.bg_level == "castle" && obj_editormanager.zoom == 0) || (room_width > 768 && global.bg_level != "castle" && obj_editormanager.zoom != 0) || (room_width > 992 && global.bg_level == "castle" && obj_editormanager.zoom != 0)))
            crecer_h = 2
        if (mouse_y < y && size_y < (size_limit_y + 1) && can_up == 0)
            crecer_v = 1
        else if (mouse_y > (y + 16) && can_up == 0 && size_y > 1)
            crecer_v = 2
    }
    else if (mouse_check_button_released(mb_left) && obj_levelmanager.editor == 1 && poder_girar == 1)
    {
        poder_girar = 0
        draw_p = 0
        obj_cursor.move_tuberia = 0
        pos_cal = 1
        alarm[2] = 5
        audio_stop_sound(snd_rieles)
        audio_play_sound(snd_colocar_objectos, 0, false)
    }
}

