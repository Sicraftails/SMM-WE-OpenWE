event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bobomb_ready
        break
    case 1:
        sprite_index = spr_SMB3_bobomb_ready
        break
    case 2:
        sprite_index = spr_bobomb_ready
        break
    case 3:
        sprite_index = spr_NSMBU_bobomb_ready
        break
}

if (global.apariencia == 3)
{
    if (!outside_view())
        sonido_antibomb = audio_play_sound(snd_NSMBU_bobomb_charge, 0, false)
    else
        sonido_antibomb = -4
    image_speed = 1
    alarm[0] = 1
}
else
    image_speed = 0.2
alarm[1] = 300
time_blow = 0
s_bobomb = spr_bobomb_ready
startTime = current_time;