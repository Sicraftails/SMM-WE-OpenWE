if (global.apariencia == 0)
{
    with (instance_create((x + 8), (y + 9), obj_ventana))
    {
        id_object = other.id
        index_object1 = 61
        index_object2 = 62
        selected_1 = 0
        selected_2 = 1
        s_contorno_1 = other.wings
        s_hongo_1 = other.progresivo
        s_paracaidas = other.paracaidas
    }
}
else
{
    with (instance_create((x + 8), (y + 9), obj_ventana))
    {
        sprite_index = spr_windows_3
        id_object = other.id
        s_contorno_1 = other.wings
        s_hongo_1 = other.progresivo
        s_paracaidas = other.paracaidas
        number = 3
    }
}

