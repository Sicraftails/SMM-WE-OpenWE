function scr_toast(argument0, argument1) {
	    with (obj_toast)
	        instance_destroy()
	    texto = argument1
	    ancho = string_width(string_hash_to_newline((texto)))
	    ancho = (ancho + 49)
	     xx = ((384 - ancho) - 16)
	     yy = 216
	    toast = instance_create(xx, yy, obj_toast)
	    toast.xx = xx
	    toast.yy = yy
	    toast.ancho = ancho
	    toast.texto = texto
	    toast.icon = argument0
	    exit






}
