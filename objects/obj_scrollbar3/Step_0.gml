global.scroll_perc = (button_y / bar_height)
    if (active == 0)
    {
        if mouse_wheel_up()
        {
            if (mouse_x < x)
                button_y -= scroll_amount
        }
        else if mouse_wheel_down()
        {
            if (mouse_x < x)
                button_y += scroll_amount
        }
    }
    else if (active == 1)
        button_y = (mouse_y - y)
button_y = clamp(button_y, 0, bar_height)

