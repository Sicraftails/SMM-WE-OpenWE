var castle_index;
if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            if (global.bg_level == "snow")
            {
                draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
                draw_sprite(spr_castles_res, 1, (x + 80), (y - 80))
            }
            else if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 0, x, y)
                draw_sprite(spr_hacha2_res, 0, x, y)
                draw_sprite(spr_castles_res, 2, (x + 80), (y - 80))
            }
            else
            {
                draw_sprite(spr_SMB_meta_res, 0, (x - 8), (y - 168))
                draw_sprite(spr_castles_res, 0, (x + 80), (y - 80))
            }
            break
        case 1:
            if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 1, x, y)
                draw_sprite(spr_hacha2_res, 1, x, y)
                draw_sprite(spr_castles_res, 3, (x + 80), (y - 80))
            }
            else
            {
                draw_sprite(spr_SMB3_bg_goal, 0, (room_width - 310), 0)
                draw_sprite(spr_SMB3_goal_draw, 0, (room_width - 307), (y - 97))
                draw_sprite(spr_SMB3_meta_res, 0, x, (y - 95))
            }
            break
        case 2:
            if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 2, x, y)
                draw_sprite(spr_hacha2_res, 2, x, y)
                draw_sprite(spr_castles_res, 4, (x + 80), (y - 80))
            }
            else
                draw_sprite(spr_SMW_meta_res, 0, x, (y - 137))
            break
        case 3:
            if (global.bg_level == "castle")
            {
                draw_sprite(spr_hacha_res, 3, x, y)
                draw_sprite(spr_hacha2_res, 3, x, y)
                draw_sprite(spr_castles_res, 5, (x + 80), (y - 80))
            }
            else
            {
                if (global.bg_level == "ground")
					castle_index = 0
				else if (global.bg_level == "underground")
					castle_index = 1
				else if (global.bg_level == "sky")
					castle_index = 2
				else if (global.bg_level == "airship")
					castle_index = 3
				else if (global.bg_level == "ghost")
					castle_index = 4
				else if (global.bg_level == "underwater")
					castle_index = 5
				else if (global.bg_level == "desert")
					castle_index = 6
				else if (global.bg_level == "forest")
					castle_index = 7
				else if (global.bg_level == "snow")
					castle_index = 10
				else if (global.bg_level == "mountain")
				{
				if (global.modo_noche == 0)
					castle_index = 2
				else
					castle_index = 8
				}
				else if (global.modo_noche == 1)
					castle_index = 9
				else
					castle_index = 0
                draw_sprite(spr_NSMBU_meta_res, castle_index, (x - 4), (y - 168))
                draw_sprite(spr_NSMBU_castle, castle_index, (x + 80), (y - 48))
            }
            break
    }

}
for (v = 0; v < size_y; v++)
{
    for (h = 0; h < size_x; h++)
    {
        if (v == 0)
        {
            if (h == 0)
                image_index = 9
            else
                image_index = 21
        }
        else if (h == 0)
            image_index = 18
        else
            image_index = 47
        draw_sprite_ext(sprite_index, image_index, (x + (h * 16)), (y + (v * 16)), 1, 1, 0, c_white, 1)
    }
}
if (obj_levelmanager.editor == 1)
{
    if (draw_p == 1)
        draw_sprite_ext(spr_move_ground3_move, anim, x, y, 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_move_ground3, 0, x, y, 1, 1, 0, c_white, 1)
}
