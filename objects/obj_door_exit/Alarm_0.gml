if instance_exists(obj_doormario)
{
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
            alarm[2] = other.time_blow
    }
    with (returndoor)
    {
        get = 1
        alarm[3] = 40
    }
    with (instance_create((returndoor.x + 8), returndoor.y, obj_curtainin))
        fallow = 1
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
        {
            if (other.returndoor.x < 192)
                x = 192
            else
                x = other.returndoor.x
            hspeed = velocidad
        }
    }
    image_index = 0
    image_speed = 0
    with (instance_create((returndoor.x + 8), (returndoor.y - 16), obj_doormario_exit))
    {
        direct = 1
        helmet = obj_doormario.helmet
        holding = obj_doormario.holding
        myitem = obj_doormario.myitem
    }
    with (obj_levelmanager)
    {
        barrier = 1
        alarm[6] = 2
    }
    if instance_exists(obj_doormario)
    {
        with (obj_doormario)
            instance_destroy()
    }
    with (obj_persistent)
        event_user(0)
    alarm[1] = 15
}

