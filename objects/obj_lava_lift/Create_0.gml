switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_lava_lift
        image_speed = 0
        image_index = 0
        break
    case 1:
        sprite_index = spr_SMB3_lava_lift
        image_speed = 0.15
        break
    case 2:
        sprite_index = spr_lava_lift
        image_speed = 0.15
        break
    case 3:
        sprite_index = spr_NSMBU_lava_lift_overworld
        image_speed = 0
        break
}

ready = 0
primero = instance_create((x - 16), y, obj_lava_lift_part)
segundo = instance_create((x - 32), y, obj_lava_lift_part)
tercero = instance_create((x - 48), y, obj_lava_lift_part)
primero.parent = id
segundo.parent = id
tercero.parent = id

