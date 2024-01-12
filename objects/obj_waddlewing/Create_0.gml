switch global.apariencia
{
    case 0:
		waddlewing_jump = spr_SMB_waddlewing_jump
		waddlewing_fly = spr_SMB_waddlewing_fly
		waddlewing_wall = spr_SMB_waddlewing_wall
		waddlewing = spr_SMB_waddlewing
        sprite_index = spr_SMB_waddlewing
        break
    case 1:
		waddlewing_jump = spr_SMB3_waddlewing_jump
		waddlewing_fly = spr_SMB3_waddlewing_fly
		waddlewing = spr_SMB3_waddlewing
		waddlewing_wall = spr_SMB3_waddlewing_wall
        sprite_index = spr_SMB3_waddlewing
        break
    case 2:
	    waddlewing_jump = spr_waddlewing_jump
		waddlewing_fly = spr_waddlewing_fly
		waddlewing = spr_waddlewing
		waddlewing_wall = spr_waddlewing_wall
        sprite_index = spr_waddlewing
        break
    case 3:
		waddlewing_jump = spr_NSMBU_waddlewing_jump
		waddlewing_fly = spr_NSMBU_waddlewing_fly
		waddlewing = spr_NSMBU_waddlewing
		waddlewing_wall = spr_NSMBU_waddlewing_wall
        sprite_index = spr_NSMBU_waddlewing
        break
}

search_mario = 0
hardness = 0
stomp = 0
direct = -1
edible = 1
wings = 0
paracaidas = 0
para_rot = 0
key = 0
jumping = 0
anim = 0
big = 0
innave = 0
dead_h = 0
swimming = 0
modo_lava = 0
apilar = 0
cambio_gombaya = 0
doublejump = 0
timer_ardilla = 0
timer_walljump = 0
walljump = 0
walljump_ex = 0
fly_anim = 0
if global.apariencia = 3
    image_speed = 0.9
else
    image_speed = 0.15
alarm[10] = 2
alarm[0] = 120

