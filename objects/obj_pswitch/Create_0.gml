event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pswitch
        image_speed = 0.15
		sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        sprite_index = spr_SMB3_pswitch
        image_speed = 0.15
		sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_index = spr_pswitch
        image_speed = 0.15
		sprite_wings = spr_wings_items
        break
    case 3:
        sprite_index = spr_NSMBU_pswitch
        image_speed = 0.3
		sprite_wings = spr_NSMBU_wings_items
        break
}

inup = 0
press = 0
mytop = instance_create(x, y, obj_solidtop)
wings = 0
wings_anim = 0
alarm[10] = 4