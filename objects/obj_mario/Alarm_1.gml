/// @description Make Mario's alpha blink
if (!instance_exists(obj_mario_transform2))
{
    if (image_alpha == 1)
        image_alpha = 0
    else
        image_alpha = 1
}
alarm[2] = 4


