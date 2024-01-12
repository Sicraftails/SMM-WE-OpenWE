switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_goomba2_b
		goomba_stomped = snd_goomba_stomped
        break
    case 1:
        sprite_index = spr_SMB3_goomba2_b
		goomba_stomped = snd_goomba_stomped
        break
    case 2:
        sprite_index = spr_galoomba2_b
		goomba_stomped = snd_goomba_stomped
        break
    case 3:
        sprite_index = spr_NSMBU_goombrat_b
		goomba_stomped = snd_goomba_stomped
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
startTime = current_time;
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
alarm[10] = 2
alarm[0] = 120

