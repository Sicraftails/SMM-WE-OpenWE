event_inherited()
switch global.apariencia
{
    case 0:
        imagen = spr_SMB_spike_ball
        sprite_index = spr_SMB_snow_ball
        break
    case 1:
        imagen = spr_SMB3_spike_ball
        sprite_index = spr_SMB3_snow_ball
        break
    case 2:
        imagen = spr_spike_ball
        sprite_index = spr_snow_ball
        break
    case 3:
        imagen = spr_NSMBU_spike_ball
        sprite_index = spr_NSMBU_snow_ball
        break
}

image_speed = 0
image_index = 2
fisica = 0
can_dead = 1
direct_spike = -1
angle = 0
hitpoint = 0
dead_h = 0
swimming = 0
dead_h = 0
apilar = 0
inmune = 0
paracaidas = 0
kickme = 0
alarm[2] = 2
alarm[10] = 2

