var next;
if (!instance_exists(mebelow))
{
    next = mebelow
    while (next != -4)
    {
        instance_activate_object(next)
        if instance_exists(next)
            next = next.mebelow
        else
            next = noone
    }
}

