switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_musicblock
        image_speed = 0
        sprite_wings = spr_SMB_wings_16x16
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 4
                else
                    image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "ghost":
                image_index = 1
                break
            case "underground":
                image_index = 1
                break
            default:
                if (global.modo_noche == 1)
                {
                    image_index = 1
                    break
                }
                else
                    image_index = 0
        }

        break
    case 1:
        sprite_index = spr_SMB3_musicblock
        image_speed = 0.15
        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_index = spr_musicblock
        image_speed = 0.15
        sprite_wings = spr_wings_items
        break
    case 3:
        sprite_index = spr_NSMBU_musicblock
        image_speed = 0.25
        sprite_wings = spr_NSMBU_wings_items
        break
}

sound_block = snd_NSMBU_noteblock
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
disabled = 1
index = snd_mb_mario

