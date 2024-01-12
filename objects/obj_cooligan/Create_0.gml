/// @description Cooligan

switch global.apariencia
{
    case 0:
        s_idle = spr_SMB_cooligan_idle
        s_fly = spr_SMB_cooligan_fly
        s_hurt = spr_SMB_cooligan_hurt
        break
    case 1:
	if (global.modo_noche == 0) and (global.bg_level != "underground") and (global.bg_level != "ghost"){
        s_idle = spr_SMB3_cooligan_idle
        s_fly = spr_SMB3_cooligan_fly
        s_hurt = spr_SMB3_cooligan_hurt
	}
	else{
		s_idle = spr_SMB3_cooligan_idle_n
        s_fly = spr_SMB3_cooligan_fly_n
        s_hurt = spr_SMB3_cooligan_hurt_n
	}
        break
    case 2:
        s_idle = spr_cooligan_idle
        s_fly = spr_cooligan_fly
        s_hurt = spr_cooligan_hurt
        break
    case 3:
        s_idle = spr_NSMBU_cooligan_idle
        s_fly = spr_NSMBU_cooligan_fly
        s_hurt = spr_NSMBU_cooligan_hurt
		break
}

if (global.apariencia == 3){
	s_deads = spr_NSMBU_cooligan_deads
}
else if (global.apariencia != 3){
	s_deads = spr_cooligan_deads
}

if (global.apariencia == 3){
	mask_index = spr_NSMBU_cooligan_mask
}
else{
		mask_index = spr_cooligan_mask
}

if (global.apariencia == 3){
	s_gafas = spr_NSMBU_cooligan_gafas
}
else if (global.apariencia != 3){
	s_gafas = spr_cooligan_gafas
}

sprite_index = s_idle	
//How vulnerable is this enemy to various items?
hardness = 0

//How vulnerable is this enemy to Mario?
stomp = 0

//Facing direction
direct = -1

//Serach mario
search_mario = 0
touch_ground = 0
edible = 1
wings = 0
paracaidas = 0
para_rot = 0
key = 0
jumping = 0
anim = 0
innave = 0
dead_h = 0
swimming = 0
modo_lava = 0
hurted = 0
can_walk = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
apilar = 0
mebelow = -4
activate_move = 1
alarm[0] = 120