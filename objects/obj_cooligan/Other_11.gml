///Cooligan flattening

//If cooligan is tall, flatten somewhat
if sprite_index = s_idle and hurted = 0
{
    sprite_index = s_hurt
    mask_index = spr_cooligan_mask
	with id
		hurted = 1
	event_user(15)
}
else if sprite_index = s_fly and hurted = 0
{
    sprite_index = s_hurt
    mask_index = spr_cooligan_mask
	with id
	{
		hurted = 1
	}
	event_user(15)
}
//Otherwise, dead
else
	event_user(0)