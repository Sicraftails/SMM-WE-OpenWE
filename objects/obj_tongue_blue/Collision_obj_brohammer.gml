if (!hunger)
{
    hunger = 1
    ready = 1
    alarm[0] = 8
    obj_yoshi_blue.mouthholder = obj_brohammer_yoshi
    obj_yoshi_blue.mouthsprite = other.sprite_index
    foodsprite = other.sprite_index
    foodoffset = 0
    with (other.id)
        instance_destroy()
}

