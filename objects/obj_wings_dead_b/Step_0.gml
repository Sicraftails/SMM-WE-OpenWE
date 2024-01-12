if (sprite_index == spr_wings_deads)
{
    if (vol == 0)
    {
        image_angle -= 5
        if (image_angle <= -90)
            vol = 1
    }
    else if (vol == 1)
    {
        image_angle += 5
        if (image_angle >= -50)
            vol = 2
    }
    else if (vol == 2)
    {
        image_angle -= 5
        if (image_angle <= -90)
            vol = 1
    }
}
else if (vol == 0)
{
    image_angle += 5
    if (image_angle >= 90)
        vol = 1
}
else if (vol == 1)
{
    image_angle -= 5
    if (image_angle <= 50)
        vol = 2
}
else if (vol == 2)
{
    image_angle += 5
    if (image_angle >= 90)
        vol = 1
}
if (vspeed > 0)
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
    {
        if (vspeed > 0.8)
            vspeed = 0.8
    }
    else if (vspeed > 1.8)
        vspeed = 1.8
    if ((y - 8) > room_height)
        instance_destroy()
}

