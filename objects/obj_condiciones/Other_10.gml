image_speed = -0.5
can_draw = 0
with (obj_condiciones_button)
    instance_destroy()
with (obj_tabs_condiciones)
    instance_destroy()
with (obj_button_ok)
    instance_destroy()
obj_card_condiciones.active = 0
if (global.condiciones == 0)
{
    global.condiciones_clear = 0
    global.condiciones_type = 0
    global.condiciones_count = 0
}

