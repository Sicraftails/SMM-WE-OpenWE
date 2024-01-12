if (instance_exists(obj_cursor) && obj_cursor.move == 1)
{
    x = (mouse_x + xx)
    y = (mouse_y + yy)
}
else
{
    x = (floor((mouse_x / 16)) * 16)
    y = (floor((mouse_y / 16)) * 16)
}
move_snap(16, 16)
if (global.select_resource != obj_resource_empty)
    sprite_index = scr_resources_get_sprite(global.select_resource)
else
    sprite_index = spr_cursor_square
visible = false
if (place_meeting(x, y, obj_parent_resource) && (!place_meeting(x, y, obj_parent_sounds)) && obj_levelmanager.editor_sonidos == 0)
    place = 1
else
    place = 0

