switch global.apariencia
{
    case 0:
        sprite_selected = spr_cards_SMB
        break
    case 1:
        sprite_selected = spr_cards_SMB3
        break
    case 2:
        sprite_selected = spr_cards_SMW
        break
    case 3:
        sprite_selected = spr_cards_NSMBU
        break
}
image_selected = 0
image_speed = 0
image_index = 0
type = 0
posicion = 0
anim = 1
can_anim = 0
scale_up = 0.6
scale_down = 1
pos_left = 0
left = 0
right = 0
ready = 0
switch obj_panel_expand.value
{
    case 1:
        image_index = 0
        break
    case 2:
        image_index = 0
        break
    case 3:
        image_index = 1
        break
    case 4:
        image_index = 2
        break
    case 5:
        image_index = 2
        break
    case 6:
        image_index = 2
        break
    case 7:
        image_index = 2
        break
    default:
        image_index = 3
}


