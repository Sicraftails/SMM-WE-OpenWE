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
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            if (dark == 1)
                image_index = 3
            else
                image_index = 2
            break
        case 2:
            image_index = 4
            break
        case 3:
            image_index = 5
            break
    }

}
if ((place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_ground, 0, 0)) && (!collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_parent_resource_block, 0, 0)) && wings == 0 && paracaidas == 0)
    inup = 1
else
    inup = 0

