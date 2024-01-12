draw_sprite(spr_SMB3_bg_goal, 0, (room_width - 310), 0)
draw_sprite(spr_SMB3_goal_draw, 0, (room_width - 307), (y - 9))
if instance_exists(obj_ground3)
{
    draw_sprite(spr_SMB3_goalbox, 0, obj_ground3.x, (obj_ground3.y - 88))
    if (!ready)
        draw_sprite(sprite_index, -1, obj_ground3.x, (obj_ground3.y - 88))
}
else
{
    draw_sprite(spr_SMB3_goalbox, 0, x, y)
    if (!ready)
        draw_sprite(sprite_index, -1, round(x), round(y))
}

