x = ((camera_get_view_x(view_get_camera(0)) + 54) - obj_cursor.anim_left)
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
{
    sprite_index = spr_expand_panels_left_big
    y = (camera_get_view_y(view_get_camera(0)) + 200)
}
else
{
    sprite_index = spr_expand_panels_left
    y = (camera_get_view_y(view_get_camera(0)) + 100)
}
if (obj_levelmanager.editor == 1)
{
    if (instance_exists(obj_apariencia) || instance_exists(obj_bg_selection))
        visible = false
    else
        visible = true
}

