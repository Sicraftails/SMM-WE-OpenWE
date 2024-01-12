with (instance_create((x + 8), (y + 9), obj_ventana))
{
    sprite_index = spr_windows_2
    id_object = other.id
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        index_object1 = 6
    else
        index_object1 = 5
    index_object2 = 7
    selected_1 = 1
    selected_2 = 0
    number = 2.1
}

