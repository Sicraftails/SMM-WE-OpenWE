switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_beanstalk
        s_vine = spr_SMB_vine_green
        break
    case 1:
        sprite_index = spr_SMB3_beanstalk
        s_vine = spr_SMB3_vine_green
        break
    case 2:
        s_vine = spr_vine_green
        break
    case 3:
        sprite_index = spr_NSMBU_beanstalk
        s_vine = spr_NSMBU_vine_green
        break
}

first_bean = 0
downwards = 0
bean_last = 0
ready = 0
alarm[2] = 60
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.12
alarm[1] = 2
alarm[0] = 16

