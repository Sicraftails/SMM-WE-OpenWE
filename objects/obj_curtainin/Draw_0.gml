gpu_set_blendmode(bm_subtract)
if surface_exists(surf){
	draw_surface(surf, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
}
gpu_set_blendmode(bm_normal)

