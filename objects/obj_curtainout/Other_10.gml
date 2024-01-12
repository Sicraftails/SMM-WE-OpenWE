x = round(x)
y = round(y)
scale += -6.25
if (scale < 0)
{
    if (instance_number(obj_fadein) == 0)
    {
        with (instance_create(0, 0, obj_fadein))
            target = other.target
    }
}

