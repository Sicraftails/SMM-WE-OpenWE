with (instance_create(x, y, obj_ventana))
{
    sprite_index = spr_windows_2
    id_object = other.id
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        index_object1 = 3
    else
        index_object1 = 2
    index_object2 = 4
    selected_1 = 1
    selected_2 = 0
    number = 2.1
}

