image_speed = 0
image_index = 0
anim = 0
effect_hover = 0
text = scr_language(29)
if (obj_persistent.modo_android == 0) and (room != rm_guardabot_play)
	disabled = 0
else
	disabled = 1
instance_create(x+128,y,obj_configurar_controles_reset);