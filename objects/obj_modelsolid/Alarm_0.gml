if (y == 0)
{
    if (image_index == 0 || image_index == 45 || image_index == 8 || image_index == 11 || image_index == 18 || image_index == 24 || image_index == 52 || image_index == 53 || image_index == 54 || image_index == 55)
    {
        mysolid = instance_create(x, (y - 192), obj_solid)
        mysolid.image_yscale = 12
    }
}
else if (y == (room_height - 16))
{
    if (image_index == 2 || image_index == 9 || image_index == 10 || image_index == 18 || image_index == 24 || image_index == 45 || image_index == 50 || image_index == 51 || image_index == 52 || image_index == 53)
    {
        mysolid = instance_create(x, (y + 16), obj_solid)
        mysolid.image_yscale = 6
    }
}
