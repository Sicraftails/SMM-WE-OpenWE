if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && obj_mario.bbox_bottom < (yprevious + 5) && obj_mario.state < 2 && ready == 0)
{
    if (parent != obj_lighting && instance_exists(parent))
    {
        with (parent)
            event_user(1)
    }
}
if (vspeed > 2.5)
    vspeed = 2.5
event_inherited()

