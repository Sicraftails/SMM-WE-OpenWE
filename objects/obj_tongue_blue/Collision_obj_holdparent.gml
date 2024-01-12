if (other.object_index != obj_helmet && other.object_index != obj_helmet_spiny && other.object_index != obj_cap_mario)
{
    if (other.object_index == obj_bobomb_hold || other.object_index == obj_galoomba_hold || other.object_index == obj_galoomba_hold2)
    {
        if (hunger == 0 && ready == 0)
        {
            hunger = 1
            ready = 1
            alarm[0] = 8
            foodsprite = other.sprite_index
            direct_sprite = other.direct
            foodindex = other.image_index
            with (other.id)
                other.foodoffset = (((bbox_left + bbox_right) / 2) - x)
            with (other.id)
                instance_destroy()
        }
    }
    else if (!hunger)
    {
        hunger = 1
        ready = 1
        alarm[0] = 8
        obj_yoshi_blue.mouthholder = other.object_index
        obj_yoshi_blue.mouthsprite = other.sprite_index
        if (other.object_index == obj_snow_ball)
			foodsprite = spr_snow_ball
        else
            foodsprite = other.sprite_index
        foodoffset = 0
        with (other.id)
            instance_destroy()
    }
}

