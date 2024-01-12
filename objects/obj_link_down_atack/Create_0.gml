image_speed = 0.5
ready = 0
time = 0
if instance_exists(obj_mario)
    obj_mario.visible = false
if instance_exists(obj_link_atack)
{
    with (obj_link_atack)
        instance_destroy()
}


