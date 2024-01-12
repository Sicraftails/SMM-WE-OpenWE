with (instance_create((x + 8), (y + 9), obj_ventana))
{
    id_object = other.id
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        index_object1 = 26
    else
        index_object1 = 25
    index_object2 = 27
    selected_1 = 0
    selected_2 = 1
    s_contorno_1 = other.wings
    s_paracaidas = other.paracaidas
}

