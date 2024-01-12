var button_x, button_y, button_radius;
if mouse_check_button_pressed(mb_left)
{
    button_x = (x + (sprite_width * value_))
    button_y = y
    button_radius = (sprite_get_width(spr_st_slider) / 2)
    if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius)
    {
        selected_ = 1
        index = 1
    }
}
if (!mouse_check_button(mb_left))
{
    selected_ = 0
    index = 0
}
if selected_
{
    value_ = clamp(((mouse_x - x) / sprite_width), 0, max_value_)
    event_user(0)
}

