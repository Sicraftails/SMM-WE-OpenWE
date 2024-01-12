if (flips > 0)
    flips--
else if (!place_meeting(x, y, obj_mario))
{
    instance_create(x, y, obj_flipblock)
    instance_destroy()
}

