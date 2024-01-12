if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_shoe_red_res
            grid_selected = spr_grid_selected_16x16
            para_x = 0
            para_y = 16
			w_sprite = spr_wings_editor
            wings_x = 20
            wings_y = 20
            break
        case 1:
            sprite_index = spr_shoe_red_res
            grid_selected = spr_grid_selected_16x16
            para_x = 0
            para_y = 16
           w_sprite = spr_wings_editor
            wings_x = 20
            wings_y = 20
            break
        case 2:
            sprite_index = spr_egg_red
            grid_selected = spr_grid_selected_32x32_2
            para_x = -8
            para_y = 32
            w_sprite = spr_wings_editor_32x32
            wings_x = -16
            wings_y = 16
            break
        case 3:
            sprite_index = spr_NSMBU_egg_red
            grid_selected = spr_grid_selected_32x32_2
            para_x = -8
            para_y = 32
            w_sprite = spr_wings_editor_32x32
            wings_x = -16
            wings_y = 16
            break
    }

}

