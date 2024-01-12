if (sprite_height < 30)
    imheld = instance_create(x, y, obj_snow_ball)
else
    imheld = instance_create(x, y, obj_snow_ball_b)
imheld.alarm[2] = 4
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky"))
    imheld.vspeed = -2.2
else
    imheld.vspeed = -5
if (other.hspeed == 0)
{
    if (((other.bbox_left + other.bbox_right) / 2) < ((bbox_left + bbox_right) / 2))
        imheld.hspeed = 0.6
    else if (((other.bbox_left + other.bbox_right) / 2) > ((bbox_left + bbox_right) / 2))
        imheld.hspeed = -0.6
}
else if (other.hspeed > 0)
    imheld.hspeed = 0.6
else if (other.hspeed < 0)
    imheld.hspeed = -0.6
instance_destroy()
