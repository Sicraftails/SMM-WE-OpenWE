with (instance_create(((x - 3) + random(round(22))), ((y - 3) + random(round(22))), obj_smoke))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB3_boltspark
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_boltspark
    else if (global.apariencia == 2)
        sprite_index = spr_boltspark2
    else
        sprite_index = spr_SMB3_boltspark
    image_speed = 0.1
}
alarm[1] = 8

