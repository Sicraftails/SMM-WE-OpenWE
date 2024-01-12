with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_3
    id_object = other.id
    index_object1 = 42
    index_object2 = 40
    number = 10
    if (other.color == 0)
    {
        selected_1 = 1
        selected_2 = 0
        s_contorno_1 = 0
    }
    else
    {
        selected_1 = 0
        selected_2 = 1
        s_contorno_1 = 0
    }
}

