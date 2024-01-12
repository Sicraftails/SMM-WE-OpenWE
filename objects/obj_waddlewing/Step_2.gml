if global.apariencia == 3{
	if sprite_index = waddlewing_wall and image_index >= 10{
		image_speed = 0
		image_index = 10
	}
	else if sprite_index = waddlewing_jump and image_index >= 13{
		image_speed = 0
		image_index = 13
	}
	else
		image_speed = 0.9
}
if walljump = 0 or walljump = 2{
	if doublejump = 1
		sprite_index = waddlewing_jump
	else if doublejump = 2{
		if (global.apariencia = 3 and image_index = 13) 
		or (fly_anim = 1)
			sprite_index = waddlewing_fly
		else if global.apariencia != 3
			sprite_index = waddlewing_fly
	}
	else
		sprite_index = waddlewing
}
else
	sprite_index = waddlewing_wall