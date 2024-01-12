if (y == 0)
{
    if (((!(place_meeting((x - 16), y, obj_pinchos))) && (!(place_meeting((x + 16), y, obj_pinchos)))) || ((!(place_meeting((x - 16), y, obj_pinchos))) && place_meeting((x + 16), y, obj_pinchos)) || ((!(place_meeting((x + 16), y, obj_pinchos))) && place_meeting((x - 16), y, obj_pinchos)))
    {
        mysolid = instance_create(x, (y - 192), obj_solid)
        mysolid.image_yscale = 12
    }
}
else if (y == (room_height - 16))
{
    if (((!(place_meeting((x - 16), y, obj_pinchos))) && (!(place_meeting((x + 16), y, obj_pinchos)))) || ((!(place_meeting((x - 16), y, obj_pinchos))) && place_meeting((x + 16), y, obj_pinchos)) || ((!(place_meeting((x + 16), y, obj_pinchos))) && place_meeting((x - 16), y, obj_pinchos)))
    {
        mysolid = instance_create(x, (y + 16), obj_solid)
        mysolid.image_yscale = 6
    }
}
