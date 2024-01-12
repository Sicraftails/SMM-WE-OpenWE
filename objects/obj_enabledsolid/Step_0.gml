var pblock;
pblock = collision_rectangle((bbox_right - 3), (bbox_top + 3), (bbox_left + 3), (bbox_bottom - 3), obj_mario, 1, 0)
if pblock
{
    with (obj_mario)
    {
        speed = 0
        gravity = 0
        isduck = 1
        jumpnow = 0
    }
}

