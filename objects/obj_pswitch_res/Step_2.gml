if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_pswitch
            break
        case 1:
            sprite_index = spr_SMB3_pswitch
            break
        case 2:
            sprite_index = spr_pswitch
            break
        case 3:
            sprite_index = spr_NSMBU_pswitch
            break
    }

}
if ((place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block)) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_parent_resource_block, 0, 0))))
    inup = 1
else
    inup = 0
