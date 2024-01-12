switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_goomba_b
		goomba_stomped = snd_goomba_stomped
        break
    case 1:
        sprite_index = spr_SMB3_goomba_b
		goomba_stomped = snd_goomba_stomped
        break
    case 2:
        sprite_index = spr_galoomba_b
		goomba_stomped = snd_goomba_stomped
        break
    case 3:
        sprite_index = spr_NSMBU_goomba_b
		goomba_stomped = snd_NSMBU_goomba_stomped
        break
    case 4:
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_redshyguy_night
        else
        sprite_index = spr_SMB2_redshyguy
		goomba_stomped = snd_goomba_stomped
		break
}
hardness = 0
stomp = 0
search_mario = 0
direct = -1
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
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
apilar = 0
mebelow = -4
startTime = current_time;
alarm[10] = 2
alarm[0] = 120

