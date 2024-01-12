with (obj_settings_custom)
    instance_destroy()
with (obj_button_settings_idioma)
    instance_destroy()
with (obj_button_settings_sombras)
    instance_destroy()
with (obj_selecting_player)
    instance_destroy()
with (obj_selecting_fps)
    instance_destroy()
with (obj_button_creditos)
    instance_destroy()
with (obj_vsync)
    instance_destroy()
with (obj_button_settings_close)
    instance_destroy()
with (obj_button_settings_estrella)
    instance_destroy()
with (obj_button_settings_controls)
    instance_destroy()
with (obj_button_settings_sm4j)
    instance_destroy()
with (obj_window_select)
    instance_destroy()
with (obj_st_slider)
    instance_destroy()
if instance_exists(obj_button_home)
{
    with (obj_button_home)
        alarm[0] = 15
}
if instance_exists(obj_pausa_button)
{
    with (obj_pausa_button)
        alarm[0] = 20
}

if instance_exists(obj_editormanager)
    obj_editormanager.expand_open = 0

