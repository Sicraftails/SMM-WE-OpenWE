event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bobomb_hold
        break
    case 1:
        sprite_index = spr_SMB3_bobomb_hold
        break
    case 2:
        sprite_index = spr_bobomb_hold
        break
    case 3:
        sprite_index = spr_NSMBU_bobomb_hold
        break
}

if (global.apariencia == 3)
{
    sonido_antibomb = audio_play_sound(snd_NSMBU_bobomb_charge, 0, false)
    image_speed = 0.5
    alarm[4] = 1
}
else
    image_speed = 0.1
hitpoint = 0
direct = 1
apilar = 0
alarm[2] = 240
alarm[1] = 300
