if (mysolid != obj_lighting)
{
    if instance_exists(mysolid)
    {
        with (mysolid)
            instance_destroy()
    }
}

