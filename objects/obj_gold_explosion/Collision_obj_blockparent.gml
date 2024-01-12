if (other.object_index == obj_flipblock)
{
    instance_create(other.x, other.y, obj_coin)
    with (other.id)
        instance_destroy()
}
else if (other.object_index == obj_onoffblock && other.ready == 0 && active == 0)
{
    with (other.id)
    {
        ready = 1
        vspeed = -2
        alarm[0] = 4
        event_user(0)
    }
    active = 1
}
else if (other.object_index != obj_noteblock && other.object_index != obj_musicblock && other.object_index != obj_noteblock_s && other.object_index != obj_onoffblock)
{
    with (other.id)
    {
        if (ready == 0)
        {
            ready = 1
            vspeed = -2
            alarm[0] = 4
            event_user(0)
        }
    }
}
event_user(0)

