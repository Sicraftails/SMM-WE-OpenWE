image_index = global.apariencia
if (poder_girar == 1)
    anim += 0.06
else
    anim = 0
var xExtra2 = lengthdir_x(((size_x - 1) * 8), color)
var yExtra2 = lengthdir_y(((size_x - 1) * 8), color)
if (obj_levelmanager.editor == 1 && obj_levelmanager.editor_sonidos == 0 && global.resource_create == 0 && object_index != obj_resource_empty && instance_exists(obj_cursor) && (obj_editormanager.expand_open == 0 || (obj_editormanager.expand_open == 2 && obj_cursor.move_view == 1)) && obj_cursor.dont_move == 0)
{
    if (obj_parent_resource.alarm[0] == -1 && alarm[0] == -1 && global.cursor == 0 && mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, ((x + xExtra2) - 8), ((y + yExtra2) - 8), ((x + xExtra2) + 8), ((y + yExtra2) + 8)))
    {
        move_bar = 1
        draw_p = 1
        with (obj_cursor)
        {
            if (move_view == 1)
            {
                move_view = 0
                speed = 0
            }
        }
    }
}
if (move_bar == 1)
    color = point_direction(x, y, mouse_x, mouse_y)
var exopen = obj_editormanager.expand_open
if ((exopen == 0 || (exopen != 0 && obj_persistent.modo_android == 1)) && move_bar == 1)
{
    if (color < 45 || color > 315)
    {
        if (mouse_x < ((x - 16) + xExtra2) && size_x > 4)
        {
            size_x -= 2
            event_user(5)
        }
        else if (mouse_x > ((x + 16) + xExtra2) && size_x < (size_limit_x + 1))
        {
            size_x += 2
            event_user(5)
        }
    }
    else if (color > 135 && color < 225)
    {
        if (mouse_x < ((x - 16) + xExtra2) && size_x < (size_limit_x + 1))
        {
            size_x += 2
            event_user(5)
        }
        else if (mouse_x > ((x + 16) + xExtra2) && size_x > 4)
        {
            size_x -= 2
            event_user(5)
        }
    }
    else if (color > 45 && color < 135)
    {
        if (mouse_y < ((y - 16) + yExtra2) && size_x < (size_limit_x + 1))
        {
            size_x += 2
            event_user(5)
        }
        else if (mouse_y > ((y + 16) + yExtra2) && size_x > 4)
        {
            size_x -= 2
            event_user(5)
        }
    }
    else if (color > 225 && color < 315)
    {
        if (mouse_y < ((y - 16) + yExtra2) && size_x > 4)
        {
            size_x -= 2
            event_user(5)
        }
        else if (mouse_y > ((y + 16) + yExtra2) && size_x < (size_limit_x + 1))
        {
            size_x += 2
            event_user(5)
        }
    }
}
if (mouse_check_button_released(mb_left) && obj_levelmanager.editor == 1 && draw_p == 1)
{
    poder_girar = 0
    draw_p = 0
    obj_cursor.move_tuberia = 0
    move_bar = 0
    if ((!instance_exists(obj_ventana_mario)) && obj_persistent.modo_android == 1)
        obj_editormanager.expand_open = 0
    audio_play_sound(snd_colocar_objectos, 0, false)
}
