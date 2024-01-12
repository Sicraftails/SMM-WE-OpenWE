x = (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 38) + obj_cursor.anim_right)
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
{
    sprite_index = spr_expand_panels_big
    y = (camera_get_view_y(view_get_camera(0)) + 200)
}
else
{
    sprite_index = spr_expand_panels
    y = (camera_get_view_y(view_get_camera(0)) + 100)
}

