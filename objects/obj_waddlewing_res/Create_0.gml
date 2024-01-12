event_inherited()
//Set sprites
if (obj_levelmanager.editor == 1)
{
switch global.apariencia {
case 0:
	sprite_index = spr_SMB_waddlewing
	break
case 1:
	sprite_index = spr_SMB3_waddlewing
	break
case 2:
	sprite_index = spr_waddlewing
	break
case 3:
	sprite_index = spr_NSMBU_waddlewing_res
	break
}
}
grid_selected = spr_grid_selected_16x16
direct = -1
image_speed = 0

