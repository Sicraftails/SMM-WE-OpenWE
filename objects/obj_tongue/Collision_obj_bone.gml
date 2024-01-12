if (!hunger)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    obj_yoshi2.mouthholder = obj_bones_yoshi_one
    obj_yoshi2.mouthsprite = other.sprite_index
    foodsprite = other.sprite_index
    foodoffset = 0
    with (other.id)
        instance_destroy()
}

