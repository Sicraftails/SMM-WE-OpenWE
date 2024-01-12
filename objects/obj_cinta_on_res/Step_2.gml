if (global.apariencia == 0)
{
    if (color == 0)
        sprite_index = spr_SMB_cinta_on_res
    else
        sprite_index = spr_SMB_cinta_fast_on_res
}
else if (global.apariencia == 1)
{
    if (color == 0)
        sprite_index = spr_SMB3_cinta_on_res
    else
        sprite_index = spr_SMB3_cinta_fast_on_res
}
else if (global.apariencia == 2)
{
    if (color == 0)
        sprite_index = spr_cinta_on_res
    else
        sprite_index = spr_cinta_fast_on_res
}
else if (global.apariencia == 3)
{
    if (color == 0)
        sprite_index = spr_NSMBU_cinta_on_res
    else
        sprite_index = spr_NSMBU_cinta_on_fast_res
}
else if (color == 0)
    sprite_index = spr_SMB_cinta_on_res
else
    sprite_index = spr_SMB_cinta_fast_on_res
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
if (mouse_check_button(mb_left) && ((obj_editormanager.expand_open == 0) && ((poder_girar == 1) && ((crecer_h == 0) && (crecer_v == 0)))))
{
    if ((mouse_x > (x + (16 * size_x))) && ((mouse_x < (x + ((16 * size_x) + 16))) && (size_x < (size_limit_x + 1))))
        crecer_h = 1
    else if ((mouse_x < (x + ((16 * size_x) - 16))) && ((mouse_x > (x + ((16 * size_x) - 32))) && (size_x > 3)))
        crecer_h = 2
}
else if (mouse_check_button_released(mb_left) && ((obj_levelmanager.editor == 1) && (draw_p == 1)))
{
    poder_girar = 0
    draw_p = 0
    obj_cursor.move_tuberia = 0
    pos_cal = 1
    alarm[5] = 15
    audio_play_sound(snd_colocar_objectos, 0, false)
}

