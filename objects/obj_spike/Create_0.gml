switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_spike
        s_spike = spr_SMB_spike
        s_spike_throw = spr_SMB_spike_throw
        s_spike_throw2 = spr_SMB_spike_throw_night
        s_spike_throw3 = spr_SMB_spike_throw_snow
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_index = spr_SMB3_spike
        s_spike = spr_SMB3_spike
        s_spike_throw = spr_SMB3_spike_throw
        s_spike_throw2 = spr_SMB3_spike_throw_night
        s_spike_throw3 = spr_SMB3_spike_throw_snow
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        s_spike = spr_spike
        s_spike_throw = spr_spike_throw
        s_spike_throw2 = spr_spike_throw
        s_spike_throw3 = spr_spike_throw_snow
        sprite_wings = spr_wings
        break
    case 3:
        sprite_index = spr_NSMBU_spike
        s_spike = spr_NSMBU_spike
        s_spike_throw = spr_NSMBU_spike_throw
        s_spike_throw2 = spr_NSMBU_spike_throw
        s_spike_throw3 = spr_NSMBU_spike_throw_snow
        sprite_wings = spr_NSMBU_wings_enemigos
        break
}

hardness = 0
stomp = 0
edible = 0
wings = 0
wings_anim = 0
paracaidas = 0
innave = 0
dead_h = 0
modo_lava = 0
direct = 1
swimming = 0
ready = 0
apilar = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
ball = obj_lighting
cont_ball = 0
startTime = current_time;
alarm[10] = 2
alarm[0] = 3

