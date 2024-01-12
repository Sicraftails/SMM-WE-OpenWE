if surface_exists(surf)
{
    surface_set_target(surf)
    draw_set_colour(c_black)
    draw_set_alpha(1)
    draw_rectangle(0, 0, camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)), false)
    gpu_set_blendmode(bm_subtract)
    draw_set_colour(c_black)
    draw_set_alpha(0.7)
    if instance_exists(obj_mario)
    {
        if instance_exists(obj_invincibility)
        {
            with (obj_mario)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 216, 0)
            draw_set_colour(c_white)
            draw_set_alpha(1)
            with (obj_mario)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 200, 0)
        }
        else
        {
            with (obj_mario)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
            draw_set_colour(c_white)
            draw_set_alpha(1)
            with (obj_mario)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
        }
    }
    else if instance_exists(obj_doormario)
    {
        with (obj_doormario)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_doormario)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    else if instance_exists(obj_player_goal_smw)
    {
        with (obj_player_goal_smw)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_player_goal_smw)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    else if instance_exists(obj_player_goal_smb3)
    {
        with (obj_player_goal_smb3)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_player_goal_smb3)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    else if instance_exists(obj_player_goal_smb1)
    {
        with (obj_player_goal_smb1)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_player_goal_smb1)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    else if instance_exists(obj_player_warp)
    {
        with (obj_player_warp)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_player_warp)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    else if instance_exists(obj_deadmario)
    {
        with (obj_deadmario)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 62, 0)
        draw_set_colour(c_white)
        draw_set_alpha(1)
        with (obj_deadmario)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 54, 0)
    }
    draw_set_colour(c_black)
    draw_set_alpha(0.2)
    if instance_exists(obj_enemyparent)
    {
        with (obj_enemyparent)
        {
            if (visible == true)
            {
                if (object_index == obj_thwomp)
                    draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 30, 0)
                else if (object_index == obj_banzaibill)
                    draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 55, 0)
                else if (object_index == obj_jumppiranha)
                    draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
                else
                    draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
            }
        }
    }
    if instance_exists(obj_cannon)
    {
        with (obj_cannon)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_key)
    {
        with (obj_key)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_key_appear)
    {
        with (obj_key_appear)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_torbellino)
    {
        with (obj_torbellino)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_muncher)
    {
        with (obj_muncher)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_boomboom)
    {
        with (obj_boomboom)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 30, 0)
    }
    if instance_exists(obj_bullebill_base)
    {
        with (obj_bullebill_base)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 35, 0)
    }
    if instance_exists(obj_wrench)
    {
        with (obj_wrench)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_brohammer)
    {
        with (obj_brohammer)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_shell)
    {
        with (obj_shell)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_powerupparent)
    {
        with (obj_powerupparent)
        {
            if (object_index == obj_1up || object_index == obj_fireflower)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
            else
                draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 20, 0)
        }
    }
    if instance_exists(obj_checkpoint)
    {
        with (obj_checkpoint)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_clown)
    {
        with (obj_clown)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 30, 0)
    }
    if instance_exists(obj_arrow)
    {
        with (obj_arrow)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_ground2)
    {
        with (obj_ground2)
            draw_circle(((x + 24) - camera_get_view_x(view_get_camera(0))), ((y - 24) - camera_get_view_y(view_get_camera(0))), 35, 0)
    }
    if instance_exists(obj_bowser_fire)
    {
        with (obj_bowser_fire)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    draw_set_colour(c_black)
    draw_set_alpha(0.8)
    if instance_exists(obj_soplete)
    {
        with (obj_soplete)
        {
            if (invisible == 0)
                draw_circle((x - camera_get_view_x(view_get_camera(0))), ((y - 24) - camera_get_view_y(view_get_camera(0))), 45, 0)
        }
    }
    if instance_exists(obj_angrysun)
    {
        with (obj_angrysun)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 30, 0)
    }
    if instance_exists(obj_podoboo)
    {
        with (obj_podoboo)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_egg_hatch)
    {
        with (obj_egg_hatch)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_yoshi_abandon)
    {
        with (obj_yoshi_abandon)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_explosion)
    {
        with (obj_explosion)
            draw_circle(((x + 11) - camera_get_view_x(view_get_camera(0))), ((y + 11) - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_plantfire)
    {
        with (obj_plantfire)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 15, 0)
    }
    if instance_exists(obj_coin)
    {
        with (obj_coin)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), ((y + 8) - camera_get_view_y(view_get_camera(0))), 20, 0)
    }
    if instance_exists(obj_coin10)
    {
        with (obj_coin10)
            draw_circle(((x + 16) - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_flagpole)
    {
        with (obj_flagpole)
            draw_circle(((x + 105) - camera_get_view_x(view_get_camera(0))), ((y + 80) - camera_get_view_y(view_get_camera(0))), 190, 0)
    }
    if instance_exists(obj_goalcard)
    {
        with (obj_goalcard)
            draw_circle(((x + 16) - camera_get_view_x(view_get_camera(0))), ((y + 16) - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    if instance_exists(obj_goalgate)
    {
        with (obj_goalgate)
            draw_circle(((x + 105) - camera_get_view_x(view_get_camera(0))), ((y + 80) - camera_get_view_y(view_get_camera(0))), 190, 0)
    }
    if instance_exists(obj_fireball)
    {
        with (obj_fireball)
            draw_circle((x - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 16, 0)
    }
    if instance_exists(obj_crystalorb)
    {
        with (obj_crystalorb)
            draw_circle(((x + 8) - camera_get_view_x(view_get_camera(0))), (y - camera_get_view_y(view_get_camera(0))), 25, 0)
    }
    gpu_set_blendmode(bm_normal)
    draw_set_alpha(1)
    surface_reset_target()
}
else
{
    surf = surface_create(camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    surface_reset_target()
}

