var x1, x2, y1, y2;
draw_set_color(c_black)
x1 = (camera_get_view_x(view_get_camera(0)) + left)
x2 = (camera_get_view_x(view_get_camera(0)) + right)
y1 = camera_get_view_y(view_get_camera(0))
y2 = (camera_get_view_x(view_get_camera(0)) + camera_get_view_height(view_get_camera(0)))
right += 15
left += (15 * stagetwo)
draw_rectangle(x1, y1, x2, y2, false)
if (right > camera_get_view_width(view_get_camera(0) + 50) && (!stagetwo))
{
    stagetwo = 1
    room_goto(goal)
}
if (left > camera_get_view_width(view_get_camera(0) + 50))
    instance_destroy()

