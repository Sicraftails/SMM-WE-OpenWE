///@description Create lava or delete it
if (global.bg_level == "mountain"
&& global.modo_noche == 1){
if instance_exists(obj_lava_water) {
	with (obj_lava_water)
		instance_destroy()
}
with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water)){
	switch global.apariencia
	{
	case 0:
		sprite_index = spr_SMB_lava
		break
	case 1:
		sprite_index = spr_SMB3_lava
		break
	case 2:
		sprite_index = spr_lava
		break
	case 3:
		sprite_index = spr_NSMBU_lava
		break
	}     
}
}
else if global.bg_level != "castle"
&& global.bg_level != "beach"
&& global.bg_level != "forest"{
if instance_exists(obj_lava_water) {
	with (obj_lava_water)
		instance_destroy()
}
}