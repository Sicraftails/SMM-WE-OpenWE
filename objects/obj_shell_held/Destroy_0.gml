if (mytopid != obj_lighting && mytopid != obj_rainmaker && instance_exists(mytopid))
{
    with (mytopid)
        instance_destroy()
}
if instance_exists(obj_shell_trail)
{
    with (obj_shell_trail)
        instance_destroy()
}
