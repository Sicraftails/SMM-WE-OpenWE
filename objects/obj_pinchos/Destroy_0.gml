if (mysolid != obj_lighting && instance_exists(mysolid))
{
    with (mysolid)
        instance_destroy()
}

