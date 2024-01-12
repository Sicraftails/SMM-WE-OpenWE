switch global.apariencia
{
    case 0:
        sprite_index = spr_cards_SMB
        break
    case 1:
        sprite_index = spr_cards_SMB3
        break
    case 2:
        sprite_index = spr_cards_SMW
        break
    case 3:
        sprite_index = spr_cards_NSMBU
        break
    case 4:
        sprite_index = spr_cards_SMB2
        break
}

image_speed = 0
image_index = 0
obj = obj_ground
value = 0
disabled = 0
active = 0
if (obj_panel_circle.type == 0)
    draw_hover = spr_panel_circle_superfiies
else if (obj_panel_circle.type == 1)
    draw_hover = spr_panel_circle_objetos
else if (obj_panel_circle.type == 2)
{
    if (obj_panel_circle.sprite_index == spr_panel_circle_7)
        draw_hover = spr_panel_circle_enemigos2
    else
        draw_hover = spr_panel_circle_enemigos
}
else if (obj_panel_circle.type == 3)
{
    if (obj_panel_circle.sprite_index == spr_panel_circle_7)
        draw_hover = spr_panel_circle_artilugios2
    else
        draw_hover = spr_panel_circle_artilugios
}


