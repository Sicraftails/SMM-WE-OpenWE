var zoom;
if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 2)
    zoom = 200
else
    zoom = 100
draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 54) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + zoom), 1, 1, 0, c_white, 1)

