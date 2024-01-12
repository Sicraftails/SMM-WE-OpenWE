event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pow
        break
    case 1:
        sprite_index = spr_SMB3_pow
        break
    case 2:
        sprite_index = spr_block_pow
        break
    case 3:
        sprite_index = spr_NSMBU_pow
        break
}

image_speed = 0.15
explode = 0
inmune = 0
mytop = instance_create(x, y, obj_solidphy)
