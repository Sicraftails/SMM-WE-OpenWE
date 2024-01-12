if (active == 1 && disabled == 0)
    draw_sprite(draw_hover, value, obj_panel_circle.x, obj_panel_circle.y)
draw_self()
if (disabled == 1)
    draw_sprite(spr_card_circle_disabled, 0, x, (y + 6))

