if (global.apariencia == 3)
    audio_stop_sound(sonido_antibomb)
instance_create((x - 8), y, obj_explosion)
instance_destroy()
