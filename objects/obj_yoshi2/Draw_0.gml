if instance_exists(obj_mario)
{
var offsety;
    if (turning != 0)
    {
        event_user(2)
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake), round(y), direct, 1, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(sprite_index, -1, (round(x) + obj_mario.shake), round(y), direct, 1, 0, c_white, 1)
        event_user(2)
    }
	if obj_mario.isduck = 1
		offsety = 2
	else
		offsety = 0
	if color = 2
		draw_sprite_ext(sprite_wings, flyanim, (round(x) + obj_mario.shake - 6*direct), round(y) - 22 + offsety, direct, 1, 0, c_white, 1)
}
