image_speed = 0
image_index = 0
v_speed = 0.2
effect_hover = 0
anim = 0
if (obj_levelmanager.editor_sonidos == 1)
    sprite_object = spr_cards_sounds
else
{
    switch global.apariencia
    {
        case 0:
            sprite_object = spr_cards_SMB
            break
        case 1:
            sprite_object = spr_cards_SMB3
            break
        case 2:
            sprite_object = spr_cards_SMW
            break
        case 3:
            sprite_object = spr_cards_NSMBU
            break
    }

}
index_object = 0
id_object = obj_lighting
value = 0
transform = 0
