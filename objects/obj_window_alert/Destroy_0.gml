with (obj_input)
    instance_destroy()
with (obj_input_desc)
    instance_destroy()
with (obj_etiquetas)
    instance_destroy()
with (obj_button_notification_aceptar)
    instance_destroy()
with (obj_button_notification_cancelar)
    instance_destroy()
global.etiqueta1 = -1
global.etiqueta2 = -1
if instance_exists(obj_creator_jugar_editar)
    audio_resume_sound(obj_creator_jugar_editar.music_editor)

