if (!instance_exists(obj_flagpole))
{
instance_activate_object(flag)
}
instance_activate_object(mysolid)
if instance_exists(obj_SMB_flag)
{
    with (obj_SMB_flag)
        instance_destroy()
}
if instance_exists(mysolid)
{
    with (mysolid)
        instance_destroy()
}
if instance_exists(obj_NSMBU_flag_mario)
{
    with (obj_NSMBU_flag_mario)
        instance_destroy()
}

