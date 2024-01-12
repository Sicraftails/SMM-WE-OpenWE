with (instance_create((x - 167), (y - 39), obj_button_wings))
{
    id_object = other.id_object
    s_index = 0
    s_contorno = other.s_hongo_1
}
with (instance_create((x - 142), (y - 39), obj_button_wings))
{	
    id_object = other.id_object
    s_index = 1
    s_contorno = other.s_contorno_1
}
with (instance_create((x - 117), (y - 39), obj_window_button))
{
    id_object = other.id_object
    index_object = other.index_object1
    image_index = other.selected_1
    transform = 0
}
with (instance_create((x - 92), (y - 39), obj_window_button))
{
    id_object = other.id_object
    index_object = other.index_object2
    image_index = other.selected_2
    transform = 1
}
with (instance_create((x - 67), (y - 39), obj_window_button))
{
    id_object = other.id_object
    index_object = other.index_object3
    image_index = other.selected_3
    transform = 2
}
with (instance_create((x - 42), (y - 39), obj_window_button))
{
    id_object = other.id_object
    index_object = other.index_object4
    image_index = other.selected_4
    transform = 3
}