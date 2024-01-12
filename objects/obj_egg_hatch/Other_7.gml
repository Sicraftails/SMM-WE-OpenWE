if (ready == 1)
{
    if (global.apariencia == 3)
    {
        if (color == 0)
			exit
    }
    else if (color == 0)
    {
        with (instance_create((x - 1), (y + 16), obj_yoshi_abandon))
            vspeed = -1.5
    }
    else if (color == 1)
    {
        with (instance_create((x - 1), (y + 16), obj_yoshi_abandon))
        {
            color = 1
            sprite_index = spr_yoshi_wait_red
            vspeed = -1.5
        }
    }
    else if (color == 2)
    {
        with (instance_create((x - 1), (y + 16), obj_yoshi_abandon))
        {
            color = 2
            sprite_index = spr_yoshi_wait_blue
            
        }
    }
    instance_destroy()
}
