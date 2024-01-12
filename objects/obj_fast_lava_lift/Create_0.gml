switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_lava_lift
        image_speed = 0
        image_index = 1
        break
    case 1:
        sprite_index = spr_SMB3_fast_lava_lift
        image_speed = 0.15
        break
    case 2:
        sprite_index = spr_fast_lava_lift
        image_speed = 0.15
        break
    case 3:
        sprite_index = spr_NSMBU_fast_lava_lift_overworld
        image_speed = 0
        break
}

ready = 0
primero = instance_create((x - 16), y, obj_lava_lift_part)
segundo = instance_create((x - 32), y, obj_lava_lift_part)
tercero = instance_create((x - 48), y, obj_lava_lift_part)
primero.parent = id
primero.sprite_index = sprite_index
primero.image_index = image_index
segundo.parent = id
segundo.sprite_index = sprite_index
segundo.image_index = image_index
tercero.parent = id
tercero.sprite_index = sprite_index
tercero.image_index = image_index

