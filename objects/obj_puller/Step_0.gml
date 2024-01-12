if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        speed = 0
        gravity = 0
        jumpnow = 0
        disablecontrol = 1
    }
    obj_mario.visible = false
    x = round(obj_mario.x)
    y = round(obj_mario.y)
}

