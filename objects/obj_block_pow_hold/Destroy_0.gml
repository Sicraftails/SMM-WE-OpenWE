event_inherited()
if (mytop != obj_lighting && instance_exists(mytop))
{
    with (mytop)
        instance_destroy()
}

