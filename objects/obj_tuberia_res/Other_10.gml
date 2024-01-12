with (instance_create((x + 8), (y + 9), obj_ventana))
{
    id_object = other.id
    index_object1 = 134
    index_object2 = 135
    index_object3 = 136
    index_object4 = 137
    if (other.color == 0)
    {
        selected_1 = 1
        selected_2 = 0
        selected_3 = 0
        selected_4 = 0
    }
    else if (other.color == 1)
    {
        selected_1 = 0
        selected_2 = 1
        selected_3 = 0
        selected_4 = 0
    }
    else if (other.color == 2)
    {
        selected_1 = 0
        selected_2 = 0
        selected_3 = 1
        selected_4 = 0
    }
    else if (other.color == 3)
    {
        selected_1 = 0
        selected_2 = 0
        selected_3 = 0
        selected_4 = 1
    }
    number = 6
}

