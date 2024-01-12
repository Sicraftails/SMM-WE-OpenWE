
						audio_stop_sound(scr_snd_break())
						audio_play_sound(scr_snd_break(), 0, false)
						with (instance_create((x + 4), (y + 4), obj_shard))
						{
									switch global.apariencia
									{
									case 0:
										sprite_index = spr_SMB_shard
										break
									case 1:
										sprite_index = spr_SMB3_shard
										break
									case 2:
										sprite_index = spr_shard
										break
									case 3:
										sprite_index = spr_NSMBU_shard
									}	
						    motion_set(45, 6)
						    dir = 1
						}
						with (instance_create((x + 4), (y + 12), obj_shard))
						{
									switch global.apariencia
									{
									case 0:
										sprite_index = spr_SMB_shard
										break
									case 1:
										sprite_index = spr_SMB3_shard
										break
									case 2:
										sprite_index = spr_shard
										break
									case 3:
										sprite_index = spr_NSMBU_shard
									}	
						    motion_set(60, 6)
						    dir = 1
						}
						with (instance_create((x + 12), (y + 12), obj_shard))
						{
							switch global.apariencia
									{
									case 0:
										sprite_index = spr_SMB_shard
										break
									case 1:
										sprite_index = spr_SMB3_shard
										break
									case 2:
										sprite_index = spr_shard
										break
									case 3:
										sprite_index = spr_NSMBU_shard
									}	
						    motion_set(120, 6)
						    dir = 0
						}
						with (instance_create((x + 12), (y + 4), obj_shard))
						{
							switch global.apariencia
									{
									case 0:
										sprite_index = spr_SMB_shard
										break
									case 1:
										sprite_index = spr_SMB3_shard
										break
									case 2:
										sprite_index = spr_shard
										break
									case 3:
										sprite_index = spr_NSMBU_shard
									}	
						    motion_set(135, 6)
						    dir = 0
						}
						instance_destroy()