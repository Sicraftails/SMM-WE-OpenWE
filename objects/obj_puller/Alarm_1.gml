if instance_exists(obj_mario)
{
    if (cloud == 1)
    {
        if instance_exists(obj)
        {
            with (instance_create((obj_mario.x - 8), (obj_mario.y + 32), obj_parcarry))
            {
                cloud = 1
                visible = false
            }
            with (obj)
                instance_destroy()
        }
    }
    else if (held == 1)
    {
        if instance_exists(obj)
        {
            with (instance_create(obj_mario.x, (obj_mario.y + 32), obj_parcarry))
            {
                hold = other.held
                obj = other.obj.object_index
                sprite = other.obj.sprite_index
            }
            with (obj)
                instance_destroy()
        }
        else
            event_user(0)
    }
    else if (enemy == 1)
    {
        if instance_exists(obj)
        {
            with (instance_create(obj_mario.x, (obj_mario.y + 32), obj_parcarry))
            {
                enemy = other.enemy
                obj = other.obj.object_index
                sprite = other.obj.sprite_index
            }
            with (obj)
                instance_destroy()
        }
        else
            event_user(0)
    }
    else
    {
        with (instance_create(obj_mario.x, (obj_mario.y + 32), obj_parcarry))
            snowball = other.snowball
    }
}

