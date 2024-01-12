if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed >= 0)
{
    if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && obj_mario.y < (y - 26) && obj_mario.state < 2)
        obj_mario.y = ceil((bbox_top - 32))
}
else if (other.invincible == 0)
{
    with (other.id)
        event_user(0)
    if (object_index != obj_icicle2 && object_index != obj_mini_icicle2)
        event_user(0)
}

