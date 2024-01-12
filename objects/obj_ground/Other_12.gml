var itp;
if (no_clean == 0)
{
    if instance_place(x, (y - 16), obj_decoracion_1)
        itp = instance_place(x, (y - 16), obj_decoracion_1)
    else if instance_place(x, (y - 16), obj_decoracion_2)
        itp = instance_place(x, (y - 16), obj_decoracion_2)
    else if instance_place(x, (y - 16), obj_decoracion_3)
        itp = instance_place(x, (y - 16), obj_decoracion_3)
    else if instance_place(x, (y - 16), obj_decoracion_4)
        itp = instance_place(x, (y - 16), obj_decoracion_4)
    else if instance_place(x, (y - 16), obj_decoracion_1)
        itp = instance_place(x, (y - 16), obj_decoracion_1)
    else if instance_place(x, (y - 16), obj_decoracion_2)
        itp = instance_place(x, (y - 16), obj_decoracion_2)
    else if instance_place(x, (y - 16), obj_decoracion_3)
        itp = instance_place(x, (y - 16), obj_decoracion_3)
    else if instance_place(x, (y - 16), obj_decoracion_4)
        itp = instance_place(x, (y - 16), obj_decoracion_4)
    else
        itp = obj_lighting
    if (itp != obj_lighting)
    {
        with (itp)
            instance_destroy()
    }
    event_inherited()
}

