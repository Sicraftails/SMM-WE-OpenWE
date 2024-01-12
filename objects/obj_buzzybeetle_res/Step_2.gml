var dark;
if (obj_levelmanager.editor == 1)
{
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        dark = 1
    else
        dark = 0
    switch global.apariencia
    {
        case 0:
            if (dark == 1)
            {
                if (wings == 1)
                {
                    sprite_index = spr_SMB_buzzy_wings_res
                    image_index = 1
                }
                else
                    sprite_index = spr_SMB_buzzybeetle_night_res
            }
            else if (wings == 1)
            {
                sprite_index = spr_SMB_buzzy_wings_res
                image_index = 0
            }
            else
                sprite_index = spr_SMB_buzzybeetle_res
            break
        case 1:
            if (dark == 1)
            {
                if (wings == 1)
                {
                    sprite_index = spr_SMB3_buzzy_wings_res
                    image_index = 1
                }
                else
                    sprite_index = spr_SMB3_buzzybeetle_night_res
            }
            else if (wings == 1)
            {
                sprite_index = spr_SMB3_buzzy_wings_res
                image_index = 0
            }
            else
                sprite_index = spr_SMB3_buzzybeetle_res
            break
        case 2:
            if (wings == 1)
                sprite_index = spr_buzzy_wings_res
            else
                sprite_index = spr_buzzybeetle_res
            break
        case 3:
            sprite_index = spr_NSMBU_buzzybeetle_res
            break
    }

}
if ((place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_parent_resource_block, 0, 0)) && wings == 0 && paracaidas == 0)
    inup = 1
else
    inup = 0

