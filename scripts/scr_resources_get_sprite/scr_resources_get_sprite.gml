function scr_resources_get_sprite(argument0)
{
    switch argument0
    {
        case obj_coin10_res:
            return spr_grid_selected_32x32;
        case obj_tuberia_res:
            return spr_grid_selected_32x32_2;
        case obj_boomboom_res:
            return spr_grid_selected_32x32_2;
        case obj_thwomp_res:
            return spr_grid_selected_32x32;
        case obj_grinder_res:
            return spr_grid_selected_48x48;
        case obj_bumper_res:
            return spr_grid_selected_48x48;
        case obj_bullebill_base_res:
            return spr_grid_selected_16x32;
        case obj_billbanzai_res:
            return spr_grid_selected_64x64;
        case obj_oneway_res:
            return spr_grid_selected_32x32_2;
        case obj_checkpoint_res:
            return spr_grid_selected_32x32_2;
        case obj_clown_res:
            return spr_grid_selected_32x32_2;
        case obj_clown_fire_res:
            return spr_grid_selected_32x32_2;
        case obj_icicle_res:
            return spr_grid_selected_16x32_2;
        case obj_icicle2_res:
            return spr_grid_selected_16x32_2;
        case obj_arrow_res:
            return spr_grid_selected_32x32_2;
        default:
            return spr_grid_selected_16x16;
    }

}

