//Set sprites
if (obj_levelmanager.editor == 1)
{
switch global.apariencia {
case 0:
	sprite_index = spr_SMB_cooligan_idle
	break
case 1:
	if (global.modo_noche == 0) and (global.bg_level != "underground") and (global.bg_level != "ghost"){
		sprite_index = spr_SMB3_cooligan_idle
	}
	else{
		sprite_index = spr_SMB3_cooligan_idle_n
	}
	break
case 2:
	sprite_index = spr_cooligan_idle
	break
case 3:
	sprite_index = spr_NSMBU_cooligan_res
	break
}
}