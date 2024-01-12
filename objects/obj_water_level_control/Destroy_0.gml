if instance_exists(obj_bt_close_water)
{
    with (obj_bt_close_water)
        instance_destroy()
}
if instance_exists(obj_water_move_limit)
{
    with (obj_water_move_limit)
        instance_destroy()
}
if instance_exists(obj_water_move)
{
    with (obj_water_move)
        instance_destroy()
}
if instance_exists(obj_ventana_water)
{
    with (obj_ventana_water)
        can_anim2 = 1
}

