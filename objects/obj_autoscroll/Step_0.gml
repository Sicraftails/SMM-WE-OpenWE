if (instance_exists(obj_mario) && instance_exists(obj_levelmanager) && obj_levelmanager.barrier == 0)
{
    if (collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_solid, 1, 0) || collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_physicssolid, 1, 0) || collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_bullebill_base, 1, 0) || collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 4), obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 1, 0))
        wallleft = 1
    else
        wallleft = 0
    if (collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_solid, 1, 0) || collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_physicssolid, 1, 0) || collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 1, 0) || collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 4), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 1, 0))
        wallright = 1
    else
        wallright = 0
    if (obj_mario.x <= (camera_get_view_x(view_get_camera(0)) + 8))
    {
        if (wallright && candie == 1)
        {
            instance_create(obj_mario.x, obj_mario.y, obj_deadmario)
            with (obj_mario)
                instance_destroy()
            exit
        }
        else
        {
            obj_mario.x = (camera_get_view_x(view_get_camera(0)) + 8)
            if (obj_mario.hspeed < 0)
                obj_mario.hspeed = 0
        }
    }
    if (obj_mario.x >= ((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0)) - 8))
    {
        if (wallleft && candie == 1)
        {
            instance_create(obj_mario.x, obj_mario.y, obj_deadmario)
            with (obj_mario)
                instance_destroy()
            exit
        }
        else
        {
            obj_mario.x = ((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0)) - 8)
            if (obj_mario.hspeed > 0)
                obj_mario.hspeed = 0
        }
    }
    if (obj_mario.y > (camera_get_view_y(view_get_camera(0)) + 248) && candie == 1)
    {
        instance_create(obj_mario.x, obj_mario.y, obj_deadmario)
        with (obj_mario)
            instance_destroy()
        exit
    }
}
else if instance_exists(obj_deadmario)
    speed = 0
