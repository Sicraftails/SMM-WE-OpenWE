switch global.apariencia
{
    case 0:
        if (global.powerup == -77)
        {
            var drybones_shell = spr_SMB_kuribo_drybones_mega
            var bota_roja = spr_SMB_kuriboshoe2_big
            var bota_verde = spr_kuriboshoe_big
        }
        else
        {
            drybones_shell = spr_SMB_kuribo_drybones
            bota_roja = spr_SMB_kuriboshoe2
            bota_verde = spr_SMB_kuriboshoe
        }
        break
    case 1:
        drybones_shell = spr_SMB3_kuribo_drybones
        bota_roja = spr_kuriboshoe2
        bota_verde = spr_kuriboshoe
        break
    case 3:
        drybones_shell = spr_NSMBU_kuribo_drybones
        bota_roja = spr_kuriboshoe2
        bota_verde = spr_SMB_kuriboshoe
        break
    default:
        drybones_shell = spr_kuribo_drybones
        bota_roja = spr_SMB_kuriboshoe2
        bota_verde = spr_SMB_kuriboshoe
}

if (global.yoshi > 0)
{
    if (global.yoshi == 1)
    {
        if instance_exists(obj_yoshi_red)
            draw_sprite_ext(spr_yoshi_red, image_index, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
        else if instance_exists(obj_yoshi_blue)
        {
            if (obj_yoshi_blue.mouthholder != noone)
                draw_sprite_ext(spr_yoshi_fm_blue, image_index, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(spr_yoshi_blue, image_index, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
        }
        else if instance_exists(obj_yoshi2)
        {
            if (obj_yoshi2.mouthholder != noone)
                draw_sprite_ext(spr_yoshi_fm, image_index, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(spr_yoshi, image_index, round(x), (round(y) + 17), direct, 1, 0, c_white, image_alpha)
        }
        draw_sprite_ext(scr_marioride(), image_index, round(x), (y - 8), direct, 1, 0, c_white, image_alpha)
    }
    else if (global.yoshi == 2)
    {
        if instance_exists(obj_kuribo_drybones)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_drybones(), 0, round(x), (y - 15), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_drybones(), 0, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(drybones_shell, 0, round(x), (y + 17), direct, 1, 0, c_white, 1)
        }
        else if instance_exists(obj_kuriboshoe2)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y - 15), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(bota_roja, 0, round(x), (y + 17), direct, 1, 0, c_white, 1)
        }
        else if instance_exists(obj_kuriboshoe)
        {
            if (global.powerup == -77)
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y - 17), direct, 1, 0, c_white, image_alpha)
            else
                draw_sprite_ext(scr_mario_shoe(), 0, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
            draw_sprite_ext(bota_verde, 0, round(x), (y + 17), direct, 1, 0, c_white, 1)
        }
    }
}
else
{
    if (holding == 1 || holding == 2)
    {
        if (global.apariencia == 3)
            sprite_index = scr_NSMBU_hold()
        else
            sprite_index = scr_mariohold()
    }
    else if (global.apariencia == 3)
        sprite_index = spr_NSMBU_mario_turn
    else
        sprite_index = scr_marioidle()
    if (global.powerup == 3)
        draw_sprite_ext(spr_cap_stay_start, 0, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
    if (holding == 2)
    {
        if (global.powerup == -85)
            draw_sprite(myitem, 0, x, (y + 1))
        else
        {
            var posx = sprite_get_xoffset(myitem)
            if (posx != 0)
                posx = 0
            else
                posx = 8
            if (myitem == spr_frozenblock_24x24 || myitem == spr_frozenblock_32x32 || myitem == spr_frozenblock_24x36 || myitem == spr_frozenblock_24x24 || myitem == spr_frozenblock_36x24 || myitem == spr_frozenblock_32x48)
                var iindex = global.apariencia
            else
                iindex = 0
            draw_sprite(myitem, iindex, ((x - posx) + (11 * direct)), my_y)
        }
        draw_sprite_ext(sprite_index, 0, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
    }
    else
        draw_sprite_ext(sprite_index, image_index, round(x), (y + 1), direct, 1, 0, c_white, image_alpha)
}


