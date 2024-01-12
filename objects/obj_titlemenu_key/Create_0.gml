var i;
key = 0
keyText = ""
keyDefault = 27
ready = 0
alarm[0] = 2
var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
for (i = 0; i < 8; i++)
{
    temp_h[i] = layer_get_hspeed(i)
    temp_v[i] = layer_get_vspeed(i)
	layer_hspeed(0, i)
	layer_vspeed(0, i)
}
instance_deactivate_all(true)
instance_activate_object(obj_persistent)

