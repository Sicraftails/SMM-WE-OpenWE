if (direct == -1)
{
    instance_create(pos, (camera_get_view_y(view_get_camera(0)) - 16), obj_bowser_fire_down)
    instance_create((pos + 16), (camera_get_view_y(view_get_camera(0)) - 44), obj_bowser_fire_down)
    instance_create((pos + 32), (camera_get_view_y(view_get_camera(0)) - 72), obj_bowser_fire_down)
    instance_create((pos + 48), (camera_get_view_y(view_get_camera(0)) - 100), obj_bowser_fire_down)
    instance_create((pos + 64), (camera_get_view_y(view_get_camera(0)) - 128), obj_bowser_fire_down)
}
else
{
    instance_create(pos, (camera_get_view_y(view_get_camera(0)) - 16), obj_bowser_fire_down)
    instance_create((pos - 16), (camera_get_view_y(view_get_camera(0)) - 44), obj_bowser_fire_down)
    instance_create((pos - 32), (camera_get_view_y(view_get_camera(0)) - 72), obj_bowser_fire_down)
    instance_create((pos - 48), (camera_get_view_y(view_get_camera(0)) - 100), obj_bowser_fire_down)
    instance_create((pos - 64), (camera_get_view_y(view_get_camera(0)) - 128), obj_bowser_fire_down)
}
instance_destroy()

