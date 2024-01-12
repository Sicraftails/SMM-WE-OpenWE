if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    night_sprite = 1
else
    night_sprite = 0
switch global.apariencia
{
    case 0:
        if (night_sprite == 1)
            sprite_index = spr_SMB_bobomb_night
        else
            sprite_index = spr_SMB_bobomb
        sprite_wings = spr_SMB_wings
        break
    case 1:
        if (night_sprite == 1)
            sprite_index = spr_SMB3_bobomb_night
        else
            sprite_index = spr_SMB3_bobomb
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_index = spr_bobomb
        sprite_wings = spr_wings
        break
    case 3:
        sprite_index = spr_NSMBU_bobomb
        sprite_wings = spr_NSMBU_wings_enemigos
        break
}

destroy_door = 0
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
wings_anim = 0
paracaidas = 0
swimming = 0
time_blow = 0
s_bobomb = spr_bobomb
can_wings_deads = 1
apilar = 0
startTime = current_time;
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.6
else
    image_speed = 0.15
