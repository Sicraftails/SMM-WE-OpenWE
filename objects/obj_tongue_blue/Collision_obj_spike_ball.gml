if (hunger == 0 && ready == 0)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    obj_yoshi_blue.mouthholder = other.object_index
    obj_yoshi_blue.mouthsprite = other.sprite_index
    foodsprite = other.sprite_index
    direct_sprite = 1
    foodindex = other.image_index
    with (other.id)
        other.foodoffset = (((bbox_left + bbox_right) / 2) - x)
    with (other.id)
        instance_destroy()
}

