switch global.apariencia
{
    case 0:
        if (global.bg_level == "snow")
            sprite_index = spr_SMB_pokey_snow_res
        else
            sprite_index = spr_SMB_pokey_res
        break
    case 1:
        if (global.bg_level == "snow")
            sprite_index = spr_SMB3_pokey_snow_res
        else
            sprite_index = spr_SMB3_pokey_res
        break
    case 2:
        if (global.bg_level == "snow")
            sprite_index = spr_pokey_snow_res
        else
            sprite_index = spr_pokey_res
        break
    case 3:
        if (global.bg_level == "snow")
            sprite_index = spr_NSMBU_pokey_snow_res
        else
            sprite_index = spr_NSMBU_pokey_res
        break
}

if (poder_girar == 1)
    anim += 0.06
else
    anim = 0
if (crecer_v == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_y++
    y -= 16
    y_draw = y
    image_yscale = size_y
    mask_index = spr_square
    crecer_v = 0
}
else if (crecer_v == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_y--
    y += 16
    y_draw = y
    image_yscale = size_y
    mask_index = spr_square
    crecer_v = 0
}
if (crecer_v2 == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_y++
    image_yscale = size_y
    mask_index = spr_square
    crecer_v2 = 0
}
else if (crecer_v2 == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    size_y--
    image_yscale = size_y
    mask_index = spr_square
    crecer_v2 = 0
}
if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 1 && crecer_v == 0)
{
    if (mouse_y > (y - 16) && mouse_y < y && size_y < (size_limit_y + 1))
        crecer_v = 1
    else if (mouse_y < (y + 32) && mouse_y > (y + 16) && size_y > 2)
        crecer_v = 2
}
if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 2 && crecer_v2 == 0)
{
    if (mouse_y > (y + (16 * size_y)) && mouse_y < ((y + (16 * size_y)) + 16) && size_y < (size_limit_y + 1))
        crecer_v2 = 1
    else if (mouse_y < ((y + (16 * size_y)) - 16) && mouse_y > ((y + (16 * size_y)) - 32) && size_y > 2)
        crecer_v2 = 2
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

