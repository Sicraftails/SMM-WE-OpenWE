if (obj_levelmanager.editor == 0 && other.held == 0)
{
    with (instance_create(x, y, obj_key_appear))
        vspeed = -3
    instance_destroy()
}

