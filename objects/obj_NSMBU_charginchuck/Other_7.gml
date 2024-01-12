if (sprite_index == s_charginchuck_damage)
{
    sprite_index = s_charginchuck_damage_recover
	image_speed = 0.6
}
else if (sprite_index == s_charginchuck_damage_recover)
{
	sprite_index = s_charginchuck_walk
    alarm[10] = 10
}