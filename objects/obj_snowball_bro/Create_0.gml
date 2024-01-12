switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_snowball
        break
    case 1:
        sprite_index = spr_SMB3_snowball
        break
    case 2:
        sprite_index = spr_snowball
        break
    case 3:
        sprite_index = spr_NSMBU_snowball
        break
}

swimming = 0
cont = 0
ready = 0
alarm[1] = 10
if (global.apariencia == 3)
{
    image_speed = 0
    alarm[0] = 10
}
else
    image_speed = 0.15
if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base))
    event_user(0)
