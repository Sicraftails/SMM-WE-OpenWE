sprite_index = scr_tiles_ground_start()
if (global.apariencia == 3)
{
    switch global.bg_level
    {
        case "snow":
            if (global.modo_noche == 1)
                arrow_image = 11
            else
                arrow_image = 10
            break
        case "airship":
            arrow_image = 3
            break
        case "sky":
            arrow_image = 2
            break
        case "mountain":
        if (global.modo_noche == 1)
                arrow_image = 8
            else
                arrow_image = 2
            break
        case "ghost":
            arrow_image = 4
            break
        case "underwater":
            arrow_image = 5
            break
        case "castle":
            if (global.modo_noche == 1)
                arrow_image = 13
            else
                arrow_image = 14
            break
        case "underground":
            arrow_image = 1
            break
        default:
            if (global.modo_noche == 1)
            {
                arrow_image = 9
                break
            }
            else
                arrow_image = 0
    }

}
else if (global.bg_level == "snow")
    arrow_image = 1
else
    arrow_image = 0
image_yscale = size_y
if (obj_levelmanager.editor == 1)
{
    if (poder_girar == 1)
        anim += 0.06
    else
        anim = 0
    if (crecer_v == 1)
    {
        event_user(0)
        size_y++
        y -= 16
        y_draw = y
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    else if (crecer_v == 2)
    {
        event_user(0)
        size_y--
        y += 16
        y_draw = y
        can_up = 1
        crecer_v = 0
        alarm[0] = 2
    }
    if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 1 && crecer_v == 0)
    {
        if (mouse_y < y && can_up == 0 && size_y < (size_limit_y + 1))
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