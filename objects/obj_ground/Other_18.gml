var itp;
create_bgo = round(random(80))
alarm[5] = 5
if instance_place(x, y, obj_decoracion_1)
    itp = instance_place(x, y, obj_decoracion_1)
else if instance_place(x, y, obj_decoracion_2)
    itp = instance_place(x, y, obj_decoracion_2)
else if instance_place(x, y, obj_decoracion_3)
    itp = instance_place(x, y, obj_decoracion_3)
else if instance_place(x, y, obj_decoracion_4)
    itp = instance_place(x, y, obj_decoracion_4)
else if instance_place(x, y, obj_decoracion_1)
    itp = instance_place(x, y, obj_decoracion_1)
else if instance_place(x, y, obj_decoracion_2)
    itp = instance_place(x, y, obj_decoracion_2)
else if instance_place(x, y, obj_decoracion_3)
    itp = instance_place(x, y, obj_decoracion_3)
else if instance_place(x, y, obj_decoracion_4)
    itp = instance_place(x, y, obj_decoracion_4)
else
    itp = obj_lighting
if (itp != obj_lighting)
{
    with (itp)
        instance_destroy()
}

