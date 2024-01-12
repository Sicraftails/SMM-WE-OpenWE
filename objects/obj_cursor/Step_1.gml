x = mouse_x
y = mouse_y
if place_meeting(x, y, obj_parent_layout)
    dont_move = 1
else if place_meeting(x, y, obj_mario_editor)
    dont_move = 2
else
    dont_move = 0
if (room == rm_editor && instance_exists(obj_levelmanager) && obj_levelmanager.editor == 0 && global.cursor == 2)
{
    global.cursor = 0
    event_user(0)
}
if (mouse_check_button(mb_left) && global.cursor == 2 && fast_clean == 0)
    i_index = 1
else if (global.cursor == 2 && fast_clean == 0)
    i_index = 0
if instance_exists(obj_levelmanager)
{
    if (obj_levelmanager.editor == 1 && x > (camera_get_view_x(view_get_camera(0)) + 349) && y > (camera_get_view_y(view_get_camera(0)) + 32) && move == 1 && anim_right <= 33 && cont_panel_right == 0)
    {
        if (anim_right < 33)
            anim_right += 5.5
        else
            anim_right = 33
    }
    else if (obj_levelmanager.editor == 1 && x < (camera_get_view_x(view_get_camera(0)) + 349) && cont_panel_right == 0 && anim_right > 0)
    {
        if (anim_right > 0)
            anim_right -= 5.5
        else
        {
            anim_right = 0
            audio_play_sound(snd_panel_derecho, 0, false)
        }
    }
}
if (cont_panel_right == 1 && anim_right <= 33)
{
    if (anim_right < 33)
        anim_right += 5.5
    else
    {
        anim_right = 33
        cont_panel_right = 3
    }
}
if (cont_panel_right == 2 && anim_right >= 0)
{
    if (anim_right > 0)
        anim_right -= 5.5
    else
    {
        anim_right = 0
        cont_panel_right = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1 && x < (camera_get_view_x(view_get_camera(0)) + 54) && y > (camera_get_view_y(view_get_camera(0)) + 32) && move == 1 && anim_left <= 54 && cont_panel_left == 0) || (obj_levelmanager.editor == 1 && x < (camera_get_view_x(view_get_camera(0)) + 54) && y > (camera_get_view_y(view_get_camera(0)) + 32) && obj_erase.active == 1 && anim_left <= 54 && cont_panel_left == 0))
    {
        if (anim_left < 54)
            anim_left += 9
        else
            anim_left = 54
    }
    else if (obj_levelmanager.editor == 1 && x > (camera_get_view_x(view_get_camera(0)) + 54) && cont_panel_left == 0 && anim_left > 0)
    {
        if (anim_left > 0)
            anim_left -= 9
        else
            anim_left = 0
    }
}
if (cont_panel_left == 1 && anim_left <= 54)
{
    if (anim_left < 54)
        anim_left += 9
    else
    {
        anim_left = 54
        cont_panel_left = 3
    }
}
if (cont_panel_left == 2 && anim_left >= -2)
{
    if (anim_left > 0)
        anim_left -= 9
    else
    {
        anim_left = 0
        cont_panel_left = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1 && y < (camera_get_view_y(view_get_camera(0)) + 36) && move == 1 && anim_top <= 34 && cont_panel_top == 0) || (obj_levelmanager.editor == 1 && y < (camera_get_view_y(view_get_camera(0)) + 36) && obj_erase.active == 1 && anim_top <= 34 && cont_panel_top == 0))
    {
        if (anim_top < 34)
            anim_top += 6.8
        else
            anim_top = 34
    }
    else if (obj_levelmanager.editor == 1 && y > (camera_get_view_y(view_get_camera(0)) + 36) && cont_panel_top == 0 && anim_top > 0)
    {
        if (anim_top > 0)
            anim_top -= 6.8
        else
            anim_top = 0
    }
}
if (cont_panel_top == 1 && anim_top <= 34)
{
    if (anim_top < 34)
        anim_top += 6.8
    else
    {
        anim_top = 34
        cont_panel_top = 3
    }
}
if (cont_panel_top == 2 && anim_top >= 0)
{
    if (anim_top > 0)
        anim_top -= 6.8
    else
    {
        anim_top = 0
        cont_panel_top = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1 && x < (camera_get_view_x(view_get_camera(0)) + 44) && y > (camera_get_view_y(view_get_camera(0)) + 180) && move == 1 && anim_creator <= 59 && cont_panel_creator == 0) || (obj_levelmanager.editor == 1 && x < (camera_get_view_x(view_get_camera(0)) + 44) && y > (camera_get_view_y(view_get_camera(0)) + 180) && obj_erase.active == 1 && anim_creator <= 84 && cont_panel_creator == 0))
    {
        if (anim_creator < 84)
            anim_creator += 12
        else
            anim_creator = 84
    }
    else if (obj_levelmanager.editor == 1 && x > (camera_get_view_x(view_get_camera(0)) + 61) && cont_panel_creator == 0 && anim_creator > 0)
    {
        if (anim_creator > 0)
            anim_creator -= 12
        else
            anim_creator = 0
    }
}
if (cont_panel_creator == 1 && anim_creator <= 84)
{
    if (anim_creator < 84)
        anim_creator += 12
    else
    {
        anim_creator = 84
        cont_panel_creator = 3
    }
}
if (cont_panel_creator == 2 && anim_creator >= 0)
{
    if (anim_creator > 0)
        anim_creator -= 12
    else
    {
        anim_creator = 0
        cont_panel_creator = 0
    }
}
if instance_exists(obj_levelmanager)
{
    if ((obj_levelmanager.editor == 1 && x > (camera_get_view_x(view_get_camera(0)) + 312) && x < (camera_get_view_x(view_get_camera(0)) + 344) && y > (camera_get_view_y(view_get_camera(0)) + 192) && move == 1 && anim_bottom <= 24 && cont_panel_bottom == 0) || (obj_levelmanager.editor == 1 && x > (camera_get_view_x(view_get_camera(0)) + 312) && x < (camera_get_view_x(view_get_camera(0)) + 344) && y > (camera_get_view_y(view_get_camera(0)) + 192) && obj_erase.active == 1 && anim_bottom <= 24 && cont_panel_bottom == 0))
    {
        if (anim_bottom < 24)
            anim_bottom += 6
        else
            anim_bottom = 24
    }
    else if (obj_levelmanager.editor == 1 && (x > (camera_get_view_x(view_get_camera(0)) + 312) || x < (camera_get_view_x(view_get_camera(0)) + 344) || y > (camera_get_view_y(view_get_camera(0)) + 192)) && cont_panel_bottom == 0 && anim_bottom > 0)
    {
        if (anim_bottom > 0)
            anim_bottom -= 6
        else
            anim_bottom = 0
    }
}
