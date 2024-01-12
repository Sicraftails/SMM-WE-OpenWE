if (obj_levelmanager.editor == 1 && instance_exists(obj_mario_editor))
{
	camera_set_view_target(view_get_camera(0), id)
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            x = other.x
            y = other.y
            fallow_mario = 1
            fallw = 1
        }
    }
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
    if ((obj_editormanager.expand_open == 0 || obj_levelmanager.editor_water == 1) && instance_exists(obj_mario_editor) && (!instance_exists(obj_ventana_water)))
    {
        if keyboard_check(global.lanzar_agarrar)
            move_velocity = 8
        else
            move_velocity = 0
        if (keyboard_check(global.arriba) && (!keyboard_check(global.abajo)) && obj_mario_editor.y < (camera_get_view_y(view_get_camera(0)) + 48))
            vspeed = (-4 - move_velocity)
        else if (keyboard_check(global.abajo) && (!keyboard_check(global.arriba)) && obj_mario_editor.y > ((camera_get_view_y(view_get_camera(0)) + camera_get_view_height(view_get_camera(0))) - 48))
            vspeed = (4 + move_velocity)
        else
        {
            vspeed = 0
            with (obj_mario_editor)
                vspeed = 0
        }
        if (keyboard_check(global.derecha) && (!keyboard_check(global.izquierda)) && obj_mario_editor.x > (camera_get_view_x(view_get_camera(0)) + 80))
            hspeed = (4 + move_velocity)
        else if (keyboard_check(global.izquierda) && (!keyboard_check(global.derecha)) && obj_mario_editor.x < ((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 80))
            hspeed = (-4 - move_velocity)
        else
        {
            hspeed = 0
            with (obj_mario_editor)
                hspeed = 0
        }
    }
}
else
    camera_set_view_target(view_get_camera(0), obj_levelmanager)
if (keyboard_check_pressed(vk_space) && obj_persistent.modo_android == 0 && obj_levelmanager.editor_water == 0 && obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0 && (!instance_exists(obj_panelparent)) && (!instance_exists(obj_ventana)) && room_width >= 768 && (!place_meeting(mouse_x, mouse_y, obj_dog)) && (!place_meeting(mouse_x, mouse_y, obj_creator_jugar_editar)))
{
    if (zoom == 0)
    {
        global.play_lock = 1
        zoom = 1
        with (obj_cursor)
        {
            anim_right = 0
            anim_left = 0
            anim_top = 0
            cont_panel_right = 0
            cont_panel_left = 0
            cont_panel_top = 0
            event_user(3)
        }
    }
    else if (zoom == 2)
    {
        zoom = 3
        if instance_exists(obj_zoomclose)
        {
            with (obj_zoomclose)
                instance_destroy()
        }
    }
}
if instance_exists(obj_erase)
{
    if (obj_erase.active == 1)
        anim_goma += 0.1
    else
        anim_goma = 0
}

