if (!hunger)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    obj_yoshi2.mouthholder = obj_yoshifire_one
    obj_yoshi2.mouthsprite = other.sprite_index
    foodsprite = other.sprite_index
    foodoffset = 0
    foodindex = other.image_index
    with (other.id)
        instance_destroy()
}

