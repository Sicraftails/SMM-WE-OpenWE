if (obj_levelmanager.editor == 1)
{
    if (inup != 0)
    {
        sprite_index = spr_boo_stretch_res
        image_index = global.apariencia
    }
    else
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_boo_res
                break
            case 1:
                sprite_index = spr_SMB3_boo_res
                break
            case 2:
                sprite_index = spr_boo_res
                break
            case 3:
                if (global.bg_level == "ghost")
                    sprite_index = spr_NSMBU_boo_ghost_res
                else
                    sprite_index = spr_NSMBU_boo_overworld_res
                break
        }

        image_index = 0
    }
    if ((place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_parent_resource_block, 0, 0)))
    {
        inup = 1
        wings = 0
    }
    else if (place_meeting(x, (y + 16), obj_ground) || place_meeting(x, (y + 16), obj_parent_resource_block))
    {
        inup = 2
        wings = 0
    }
    else
        inup = 0
}

