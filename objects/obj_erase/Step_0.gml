x = (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right)
y = (camera_get_view_y(view_get_camera(0)) + 129)
if (active == 1)
{
    sprite_index = spr_clean_selected
    if (active2 == 0)
    {
        alarm[0] = 1
        active2 = 1
    }
}
else
{
    sprite_index = spr_clean
    alarm[0] = -1
    image_index = 0
    active2 = 0
}

