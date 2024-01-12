if (global.apariencia == 1)
{
    anim++
    alarm[2] = 7
}
else if (global.apariencia == 2)
{
    if (instance_number(obj_yoshi_abandon) < 2 && instance_number(obj_egg_hatch) < 2)
    {
        with (instance_create((x + 8), (y - 16), obj_egg_hatch))
        {
            color = 2
            sprite_index = spr_hatch_blue
        }
    }
    instance_destroy()
    instance_destroy()
}

