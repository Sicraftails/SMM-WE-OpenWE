if (obj == obj_galoomba)
    instance_create(x, (y - 8), obj_galoomba)
else if (obj == obj_galoomba2)
    instance_create(x, (y - 8), obj_galoomba2)
else if (obj == obj_galoomba2)
    instance_create(x, (y - 8), obj_galoomba2)
else if ((obj == obj_bobomb) || (obj == obj_bobomb_ready))
    instance_create((x - 8), (y - 8), obj_explosion)
else
    instance_create(x, (y - 8), obj)
instance_destroy()

