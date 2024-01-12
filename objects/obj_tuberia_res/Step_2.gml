var dark;
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        sprite = spr_SMB_pipes
        part = spr_SMB_pipes_part
        break
    case 1:
        if (dark == 1)
        {
            sprite = spr_SMB3_pipes_night
            part = spr_SMB3_pipes_part_night
        }
        else
        {
            sprite = spr_SMB3_pipes
            part = spr_SMB3_pipes_part
        }
        break
    case 2:
        sprite = spr_pipes
        part = spr_pipes_part
        break
    case 3:
        sprite = spr_NSMBU_pipes
        part = spr_NSMBU_pipes_part
        break
}

image_index = color
if (left == 1)
{
    if (rotacion >= (R + 90))
    {
        rotacion = (R + 90)
        R = rotacion
        left = 0
        if (direct_t == 0)
            direct_t = 3
        else
            direct_t--
        if (direct_t == 3 || direct_t == 2)
            s_scalex = -1
        else
            s_scalex = 1
        if (!mouse_check_button(mb_left))
            poder_girar = 0
    }
    else
        rotacion += 10
    if (warp > 0)
        event_user(5)
}
else if (right == 1)
{
    if (rotacion <= (R - 90))
    {
        rotacion = (R - 90)
        R = rotacion
        right = 0
        if (direct_t == 3)
            direct_t = 0
        else
            direct_t++
        if (direct_t == 3 || direct_t == 2)
            s_scalex = -1
        else
            s_scalex = 1
        if (!mouse_check_button(mb_left))
            poder_girar = 0
    }
    else
        rotacion -= 10
    if (warp > 0)
        event_user(5)
}
else if (crecer == 1)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    switch direct_t
    {
        case 0:
            y -= 16
            y_draw -= 16
            size++
            image_yscale = (1 + (size / 2))
            break
        case 1:
            size++
            image_xscale = (1 + (size / 2))
            break
        case 2:
            size++
            image_yscale = (1 + (size / 2))
            break
        case 3:
            x -= 16
            x_draw -= 16
            size++
            image_xscale = (1 + (size / 2))
            break
    }

    crecer = 0
    if (warp > 0)
        event_user(5)
}
else if (crecer == 2)
{
    audio_stop_sound(snd_rieles)
    audio_play_sound(snd_rieles, 0, false)
    switch direct_t
    {
        case 0:
            y += 16
            y_draw += 16
            size--
            image_yscale = (1 + (size / 2))
            break
        case 1:
            size--
            image_xscale = (1 + (size / 2))
            break
        case 2:
            size--
            image_yscale = (1 + (size / 2))
            break
        case 3:
            x += 16
            x_draw += 16
            size--
            image_xscale = (1 + (size / 2))
            break
    }

    crecer = 0
    if (warp > 0)
        event_user(5)
}
if (mouse_check_button(mb_left) && obj_editormanager.expand_open == 0 && poder_girar == 1 && right == 0 && left == 0)
{
    switch direct_t
    {
        case 0:
            if (mouse_x > (x + 32) && mouse_x < (x + 64) && mouse_y > (y + 16) && mouse_y < (y + 32) && size == 0)
                right = 1
            else if (mouse_x > (x - 32) && mouse_x < x && mouse_y > (y + 16) && mouse_y < (y + 32) && size == 0)
                left = 1
            else if (mouse_x > (x + 5) && mouse_x < (x + 27) && mouse_y > (y - 16) && mouse_y < y && size < 24)
                crecer = 1
            else if (mouse_x > (x + 5) && mouse_x < (x + 27) && mouse_y > (y + 16) && mouse_y < (y + 32) && size > 0)
                crecer = 2
            break
        case 1:
            if (mouse_x > (x + (size * 16)) && mouse_x < (x + (16 + (size * 16))) && mouse_y > (y + 32) && mouse_y < (y + 64) && size == 0)
                right = 1
            else if (mouse_x > (x + (size * 16)) && mouse_x < (x + (16 + (size * 16))) && mouse_y > (y - 32) && mouse_y < y && size == 0)
                left = 1
            else if (mouse_x > (x + (32 + (size * 16))) && mouse_x < (x + (64 + (size * 16))) && mouse_y > (y + 5) && mouse_y < (y + 27) && size < 24)
                crecer = 1
            else if (mouse_x > (x - (16 + (size * 16))) && mouse_x < (x + (16 + (size * 16))) && mouse_y > (y + 5) && mouse_y < (y + 27) && size > 0)
                crecer = 2
            break
        case 2:
            if (mouse_x > (x + 32) && mouse_x < (x + 64) && mouse_y > (y + (size * 16)) && mouse_y < (y + (16 + (size * 16))) && size == 0)
                left = 1
            else if (mouse_x > (x - 32) && mouse_x < x && mouse_y > (y + (size * 16)) && mouse_y < (y + (16 + (size * 16))) && size == 0)
                right = 1
            else if (mouse_x > (x + 5) && mouse_x < (x + 27) && mouse_y > (y + (32 + (size * 16))) && mouse_y < (y + (64 + (size * 16))) && size < 24)
                crecer = 1
            else if (mouse_x > (x + 5) && mouse_x < (x + 27) && mouse_y > (y - (16 + (size * 16))) && mouse_y < (y + (16 + (size * 16))) && size > 0)
                crecer = 2
            break
        case 3:
            if (mouse_x > (x + 16) && mouse_x < (x + 32) && mouse_y > (y - 32) && mouse_y < y && size == 0)
                right = 1
            else if (mouse_x > (x + 16) && mouse_x < (x + 32) && mouse_y > (y + 32) && mouse_y < (y + 64) && size == 0)
                left = 1
            else if (mouse_x > (x - 32) && mouse_x < x && mouse_y > (y + 5) && mouse_y < (y + 27) && size < 24)
                crecer = 1
            else if (mouse_x > (x + 16) && mouse_x < (x + 48) && mouse_y > (y + 5) && mouse_y < (y + 27) && size > 0)
                crecer = 2
            break
    }

}
else if (mouse_check_button_released(mb_left) && obj_levelmanager.editor == 1 && right == 0 && left == 0)
    poder_girar = 0
if (mouse_check_button_released(mb_left) && draw_p == 1)
{
    draw_p = 0
    obj_cursor.move_tuberia = 0
    pos_cal = 1
    alarm[5] = 15
    audio_play_sound(snd_colocar_objectos, 0, false)
}
if (poder_girar == 1)
    anim += 0.06
else
    anim = 0

