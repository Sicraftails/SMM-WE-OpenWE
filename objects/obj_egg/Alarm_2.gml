if (global.apariencia < 2)
{
    anim++
    alarm[2] = 7
}
else
{
    if (global.apariencia == 3)
        var v = 0
    else
        v = 16
    if (instance_number(obj_yoshi_abandon) < 2 && instance_number(obj_egg_hatch) < 2)
        instance_create((x + 8), (y - v), obj_egg_hatch)
    instance_destroy()
}
