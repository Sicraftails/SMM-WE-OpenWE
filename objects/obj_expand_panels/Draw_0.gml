var zoom;
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
    zoom = 200
else
    zoom = 100
draw_sprite_ext(sprite_index, image_index, (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 38) + obj_cursor.anim_right), (camera_get_view_y(view_get_camera(0)) + zoom), 1, 1, 0, c_white, 1)

