if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
{
    sprite_index = spr_expand_panels_top_big
    x = (camera_get_view_x(view_get_camera(0)) + 362)
}
else
{
    sprite_index = spr_expand_panels_top
    x = (camera_get_view_x(view_get_camera(0)) + 181)
}
y = ((camera_get_view_y(view_get_camera(0)) + 34) - obj_cursor.anim_top)

