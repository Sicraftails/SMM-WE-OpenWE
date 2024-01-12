var un, move_velocity;
global.powerup = scr_powerup_editor(type_powerup)
global.powerup_editor = type_powerup
if (global.star_flash == 1)
{
    if (cp_cont == 0)
    {
        flashAlpha -= 0.1
        if (flashAlpha < 0.2)
        {
            cp_cont = 1
            if (cp < 2)
                cp++
            else
                cp = 0
        }
    }
    else
    {
        flashAlpha += 0.1
        if (flashAlpha > 0.9)
            cp_cont = 0
    }
    blend_star = color[cp]
}
if (drag == 1)
{
    if (global.apariencia == 3)
    {
        if (global.bg_level == "underwater")
            un = 1
        else
            un = 0
        sprite = scr_NSMBU_walk(un)
        index += 1
    }
    else
    {
        sprite = scr_mariowalk()
        index += 0.25
    }
}
else
{
    if (global.apariencia == 3)
    {
        if (global.bg_level == "underwater")
            sprite = spr_NSMBU_mario_editor_water
        else
            sprite = spr_NSMBU_mario_editor
        switch global.powerup
        {
            case 0:
                index = 0
                break
            case 1:
                index = 1
                break
            case 2:
                index = 2
                break
            case -30:
                index = 3
                break
            case -43:
                index = 4
                break
            case -38:
                index = 5
                break
        }

    }
    else
    {
        sprite = scr_marioidle()
        index = 0
    }
    x_draw = x
    y_draw = y
}
if (global.powerup == 0 || global.powerup == -85)
    mask_index = spr_grid_selected_16x16
else
    mask_index = spr_grid_selected_16x32
if (collision_rectangle((bbox_left - 4), bbox_bottom, (bbox_right + 4), bbox_bottom, obj_cursor, 0, 0) && obj_erase.active == 1)
    clean = 1
else
    clean = 0
if (obj_cursor.move_view == 1)
{
    if (mouse_x > ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 80))
        hspeed = 4
    else if (mouse_x < (camera_get_view_x(view_get_camera(0)) + 80))
        hspeed = -4
    else
        hspeed = 0
    if (mouse_y < (camera_get_view_y(view_get_camera(0)) + 48))
        vspeed = -4
    else if (mouse_y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) - 48))
        vspeed = 4
    else
        vspeed = 0
}
if (obj_cursor.move_view == 0)
{
    if ((obj_editormanager.expand_open == 0 || obj_levelmanager.editor_water == 1) && drag == 0 && (!instance_exists(obj_ventana_water)))
    {
        if keyboard_check(global.lanzar_agarrar)
            move_velocity = 8
        else
            move_velocity = 0
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)) && bbox_top > 0)
            vspeed = (-4 - move_velocity)
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)) && bbox_bottom < (room_height - 1))
            vspeed = (4 + move_velocity)
        else
            vspeed = 0
        if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && bbox_left > 0)
            hspeed = (-4 - move_velocity)
        else if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && bbox_right < (room_width - 1))
            hspeed = (4 + move_velocity)
        else
            hspeed = 0
    }
    else
        speed = 0
}
if (follow == 1)
{
    drag_draw = 0
    event_user(2)
}
