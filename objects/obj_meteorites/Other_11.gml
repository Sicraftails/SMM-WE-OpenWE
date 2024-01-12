if (global.apariencia == 0 or global.apariencia == 1)
     audio_play_sound(snd_SMB3_break, 0, false)
else if global.apariencia == 3
     audio_play_sound(snd_NSMBU_rocks_break, 0, false)
else
     audio_play_sound(snd_break, 0, false)
    with (instance_create((x), (y + 8), obj_shard))
    {
		switch global.apariencia
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_small
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.apariencia
			}
		}
		
        motion_set(45, 6)
    }
    with (instance_create((x), (y + 8), obj_shard))
    {
		switch global.apariencia
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_small
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.apariencia
			}
		}
        motion_set(60, 6)
    }
    with (instance_create((x), (y + 8), obj_shard))
    {
		switch global.apariencia
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_small
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.apariencia
			}
		}
        motion_set(120, 6)
    }
    with (instance_create((x), (y + 8), obj_shard))
    {
		switch global.apariencia
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_small
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.apariencia
			}
		}
        motion_set(135, 6)
    }
instance_destroy()

