if ((!collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom + 8), obj_blockbumper, 0, 0)) && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_blockparent, 0, 0)))
{
    if (sprite_index == spr_SMB_shell_buzzy || sprite_index == spr_SMB_shell_buzzy_night || sprite_index == spr_SMB3_shell_buzzy || sprite_index == spr_SMB3_shell_buzzy_night || sprite_index == spr_shell_buzzy || sprite_index == spr_NSMBU_shell_buzzy)
        hardness = 1
    else
        hardness = 0
}
else
    alarm[0] = 1

