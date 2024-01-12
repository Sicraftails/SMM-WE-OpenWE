event_inherited()
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_fire_clown
        break
    case 1:
        sprite_index = spr_SMB3_fire_clown_big
        break
    case 3:
        sprite_index = spr_NSMBU_fire_clown
        break
}

if (global.apariencia != 3)
    image_speed = 0.2
direct = 1
rotacion = 0
audio_stop_sound(snd_clown_fire)
audio_play_sound(snd_clown_fire, 0, false)
