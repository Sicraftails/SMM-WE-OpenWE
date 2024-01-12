with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_3
    id_object = other.id
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    {
        index_object1 = 36
        index_object2 = 88
    }
    else
    {
        index_object1 = 35
        index_object2 = 87
    }
    number = 3.1
    selected_1 = 0
    selected_2 = 1
    s_paracaidas = other.paracaidas
}

