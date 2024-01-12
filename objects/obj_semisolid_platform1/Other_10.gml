with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_3
    id_object = other.id
    index_object1 = 50
    index_object2 = 51
    index_object3 = 52
    if (other.color == 0)
    {
        selected_1 = 1
        selected_2 = 0
        selected_3 = 0
    }
    else if (other.color == 1)
    {
        selected_1 = 0
        selected_2 = 1
        selected_3 = 0
    }
    else
    {
        selected_1 = 0
        selected_2 = 0
        selected_3 = 1
    }
    number = 7
}
