if (hunger == 0 && ready == 0 && other.object_index != obj_thwomp && other.object_index != obj_grinder && other.object_index != obj_banzaibill && other.object_index != obj_bowserjr_shell && other.object_index != obj_grrrol)
{
    if (other.edible == 2)
    {
        ready = 1
        alarm[0] = 8
    }
    else
    {
        hunger = 1
        ready = 1
        alarm[0] = 8
        if (!hunger)
        {
            hunger = 1
            ready = 1
            alarm[0] = 8
            obj_yoshi_blue.mouthholder = obj_yoshifire_one
            obj_yoshi_blue.mouthsprite = other.sprite_index
            foodsprite = other.sprite_index
            foodindex = other.image_index
            foodoffset = 0
            with (other.id)
                instance_destroy()
        }
        if ((other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2) && other.lava == 1 && global.bg_level == "castle")
            obj_yoshi_blue.mouthholder = obj_yoshifire
        else if ((other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2) && other.lava == 1 && global.bg_level == "forest")
            obj_yoshi_blue.mouthholder = obj_yoshifire_purple
        else if (other.object_index == obj_drybones)
        {
            obj_yoshi_blue.mouthholder = obj_bones_yoshi
            obj_yoshi_blue.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_shell_held)
        {
            obj_yoshi_blue.mouthholder = obj_shell
            obj_yoshi_blue.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_koopa)
        {
            obj_yoshi_blue.mouthholder = obj_shell
            obj_yoshi_blue.mouthsprite = spr_shell
        }
        else if (other.object_index == obj_koopa_red)
        {
            obj_yoshi_blue.mouthholder = obj_shell
            obj_yoshi_blue.mouthsprite = spr_shell_red
        }
        else if (other.object_index == obj_spiny || other.object_index == obj_spiny_ball)
        {
            obj_yoshi_blue.mouthholder = obj_shell
            obj_yoshi_blue.mouthsprite = spr_spiny_dead
        }
        else if (other.object_index == obj_buzzybeetle)
        {
            obj_yoshi_blue.mouthholder = obj_shell
            obj_yoshi_blue.mouthsprite = spr_shell_buzzy
        }
        else if (other.object_index == obj_snow_ball_held)
        {
            obj_yoshi_blue.mouthholder = obj_snow_ball
            obj_yoshi_blue.mouthsprite = other.sprite_index
        }
        else if (other.object_index == obj_podoboo || other.object_index == obj_podoboo_b)
        {
            obj_yoshi_blue.mouthholder = obj_yoshifire
            obj_yoshi_blue.mouthsprite = other.sprite_index
        }
        if (other.object_index == obj_snow_ball_held)
            foodsprite = spr_snow_ball
        else
            foodsprite = other.sprite_index
        direct_sprite = other.direct
        foodindex = other.image_index
        with (other.id)
            other.foodoffset = (((bbox_left + bbox_right) / 2) - x)
        with (other.id)
            instance_destroy()
    }
}
