with (instance_create((x), (y - 16), obj_smoke)) {
	if global.apariencia != 3{
	direct = 2
	image_yscale = 2
	}
	sprite_index = other.humo
    depth = 0
}

alarm[0] = 20
