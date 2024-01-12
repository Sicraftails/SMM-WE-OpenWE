image_speed = 0
image_index = global.apariencia
switch global.apariencia
{
    case 2:
        sound_block = snd_spring
        break
    case 3:
        sound_block = snd_NSMBU_noteblock
        break
    default:
        sound_block = snd_SMB3_spring
}

up = 0
down = 0
sprout = -1
ready = 0
ready2 = 0
wings = 0
wings_anim = 0
expand = 0
s_scalex = 1
s_scaley = 1
sprite_wings = spr_SMB_wings_16x16

