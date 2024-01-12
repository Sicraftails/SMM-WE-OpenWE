image_speed = 0
image_index = 0
canpick = 1
dir = 1
bota = 1
if (global.apariencia == 0)
{
    if (bota == 2)
        sprite_index = spr_SMB_kuriboshoe2
    else
        sprite_index = spr_SMB_kuriboshoe
}
else if (bota == 2)
    sprite_index = spr_kuriboshoe2
alarm[1] = 600
alarm[2] = 780
