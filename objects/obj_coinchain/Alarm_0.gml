move_snap(16, 16)
direction = nextdir
if (!position_meeting((x + 8), (y + 8), obj_coin))
{
    with (instance_create(x, y, obj_coin))
        image_index = other.image_index
}
if (direction == 0)
{
    if position_meeting((x + 24), (y + 8), obj_solid)
        instance_destroy()
}
else if (direction == 90)
{
    if position_meeting((x + 8), (y - 8), obj_solid)
        instance_destroy()
}
else if (direction == 180)
{
    if position_meeting((x - 8), (y + 8), obj_solid)
        instance_destroy()
}
else if (direction == 270)
{
    if position_meeting((x + 8), (y + 24), obj_solidtop)
        instance_destroy()
}
alarm[0] = 16

