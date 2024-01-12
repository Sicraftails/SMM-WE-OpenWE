if (global.apariencia == 0)
{
    switch global.bg_level
    {
        case "snow":
            if (global.modo_noche == 1)
                sprite_index = spr_SMB_puente_snow_night
            else
                sprite_index = spr_SMB_puente_snow
            break
        case "ghost":
            sprite_index = spr_SMB_puente_ghost
            break
        case "castle":
            sprite_index = spr_SMB_puente_dark
            break
        case "airship":
            sprite_index = spr_SMB_puente_dark
            break
        case "underground":
            sprite_index = spr_SMB_puente_night
            break
        case "mountain":
            if (global.modo_noche == 1)
                sprite_index = spr_SMB_puente_night
            else
                sprite_index = spr_SMB_puente
            break
        default:
            sprite_index = spr_SMB_puente
    }

}
else if (global.apariencia == 1)
{
    switch global.bg_level
    {
        case "snow":
            if (global.modo_noche == 1)
                sprite_index = spr_SMB3_puente_snow_night
            else
                sprite_index = spr_SMB3_puente_snow
            break
        case "castle":
            sprite_index = spr_SMB3_puente_dark
            break
        case "underground":
            sprite_index = spr_SMB3_puente_night
            break
        case "ghost":
            sprite_index = spr_SMB3_puente_night
            break
        case "mountain":
            if (global.modo_noche == 1)
                sprite_index = spr_SMB3_puente_dark
            else
                sprite_index = spr_SMB3_puente
            break
        default:
            if (global.modo_noche == 1)
            {
                sprite_index = spr_SMB3_puente_night
                break
            }
            else
                sprite_index = spr_SMB3_puente
    }

}
else if (global.apariencia == 2)
{
    switch global.bg_level
    {
        case "snow":
            if (global.modo_noche == 1)
                sprite_index = spr_puente_snow_night
            else
                sprite_index = spr_puente_snow
            break
        case "underground":
            sprite_index = spr_puente_night
            break
        case "underwater":
            sprite_index = spr_puente_night
            break
        case "ghost":
            sprite_index = spr_puente_night
            break
        case "airship":
            sprite_index = spr_puente_night
            break
        case "castle":
            sprite_index = spr_puente_night
            break
        case "mountain":
            if (global.modo_noche == 1)
                sprite_index = spr_puente_night
            else
                sprite_index = spr_puente
            break
        default:
            sprite_index = spr_puente
            break
    }

}
else if (global.apariencia == 3)
{
    switch global.bg_level
    {
        case "snow":
            if (global.modo_noche == 1)
                sprite_index = spr_NSMBU_puente_snow_night
            else
                sprite_index = spr_NSMBU_puente_snow
            break
        case "forest":
            if (global.modo_noche == 1)
                sprite_index = spr_NSMBU_puente_forest_night
            else
                sprite_index = spr_NSMBU_puente_forest
            break
        case "airship":
            if (global.modo_noche == 1)
                sprite_index = spr_NSMBU_puente_airship_night
            else
                sprite_index = spr_NSMBU_puente_airship
            break
        case "underwater":
            if (global.modo_noche == 1)
                sprite_index = spr_NSMBU_puente_underwater_night
            else
                sprite_index = spr_NSMBU_puente_underwater
            break
        case "castle":
            sprite_index = spr_NSMBU_puente_castle
            break
        case "underground":
            sprite_index = spr_NSMBU_puente_underground
            break
        case "ghost":
            sprite_index = spr_NSMBU_puente_underground
            break
        case "beach":
            sprite_index = spr_NSMBU_puente_beach
            break
        case "mountain":
            if (global.modo_noche == 1)
                sprite_index = spr_NSMBU_puente_volcano
            else
                sprite_index = spr_NSMBU_puente_overworld
            break
        default:
            if (global.modo_noche == 1)
            {
                sprite_index = spr_NSMBU_puente_overworld_night
                break
            }
            else
                sprite_index = spr_NSMBU_puente_overworld
    }

}
if (poder_girar == 1)
    anim += 0.06
else
    anim = 0
if (crecer_h == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_x++
    image_xscale = size_x
    mask_index = spr_square
    crecer_h = 0
}
else if (crecer_h == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_x--
    image_xscale = size_x
    mask_index = spr_square
    crecer_h = 0
}
if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 1 && crecer_h == 0 && crecer_v == 0)
{
    if (mouse_x > (x + (16 * size_x)) && mouse_x < (x + ((16 * size_x) + 16)) && size_x < (size_limit_x + 1))
        crecer_h = 1
    else if (mouse_x < (x + ((16 * size_x) - 16)) && mouse_x > (x + ((16 * size_x) - 32)) && size_x > 3)
        crecer_h = 2
}
else if (mouse_check_button_released(mb_left) && obj_levelmanager.editor == 1 && draw_p == 1)
{
    poder_girar = 0
    draw_p = 0
    obj_cursor.move_tuberia = 0
    pos_cal = 1
    alarm[5] = 15
    audio_play_sound(snd_colocar_objectos, 0, false)
}

