cp = 0
cp_cont = 0
flashAlpha = 1
if (global.apariencia == 3)
{
    color[0] = make_colour_rgb(255, 140, 199)
    color[1] = make_colour_rgb(254, 252, 143)
    color[2] = make_colour_rgb(102, 245, 157)
}
else
{
    color[0] = make_colour_rgb(255, 255, 72)
    color[1] = make_colour_rgb(254, 138, 139)
    color[2] = make_colour_rgb(102, 245, 157)
}
hitpoint = 0
alarm[0] = 600
alarm[3] = 5
with (obj_persistent)
{
    alarm[6] = -1
    alarm[6] = 420
}
if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_sparkles
    image_speed = 0.3
}
else
    image_speed = 0.4
if (global.apariencia < 2)
    visible = false
else
    alarm[1] = 1
alarm[2] = 4
