s = (filter + 1)
if (global.sm4j_style == 1)
{
	/*
	instance_create_depth(camera_get_view_x(view_get_camera(0))+320,camera_get_view_y(view_get_camera(0))+158,0,obj_sm4j_jump)
	/**/
    mobile_keys[4] = virtual_key_add((320 * s), (158 * s), (64 * s), (64 * s), global.saltar)
    mobile_keys[5] = virtual_key_add((320 * s), (30 * s), (64 * s), (64 * s), global.saltar_spin)
    mobile_keys[6] = virtual_key_add((256 * s), (158 * s), (64 * s), (64 * s), global.lanzar_agarrar)
    if (room != rm_editor)
        mobile_keys[7] = virtual_key_add((336 * s), (0 * s), (32 * s), (32 * s), 13)
    mobile_keys[8] = virtual_key_add((320 * s), (94 * s), (64 * s), (64 * s), 17)
}
else
{
    mobile_keys[4] = virtual_key_add((300 * s), (158 * s), (32 * s), (32 * s), global.saltar)
    mobile_keys[5] = virtual_key_add((340 * s), (176 * s), (32 * s), (32 * s), global.saltar_spin)
    mobile_keys[6] = virtual_key_add((337 * s), (35 * s), (36 * s), (51 * s), global.lanzar_agarrar)
    if (room != rm_editor)
        mobile_keys[7] = virtual_key_add((184 * s), (193 * s), (16 * s), (16 * s), 13)
    mobile_keys[8] = virtual_key_add((318 * s), (118 * s), (32 * s), (32 * s), global.lanzar_agarrar)
}
vk_saltos = 1

