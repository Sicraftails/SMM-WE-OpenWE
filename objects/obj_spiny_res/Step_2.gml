if (obj_levelmanager.editor == 1)
{
    if (wings == 1)
    {
        sprite_index = spr_spiny_wings_res
        image_index = global.apariencia
        image_speed = 0
    }
    else
    {
        sprite_index = spr_spiny_res
        image_index = global.apariencia
    }
}
if ((place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_parent_resource_block, 0, 0)) && wings == 0 && paracaidas == 0)
    inup = 1
else
    inup = 0

