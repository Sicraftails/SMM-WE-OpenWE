function scr_create_bg_anim() {
	if instance_exists(obj_bganimator)
	{
	    with (obj_bganimator)
	        instance_destroy()
	}
	switch global.apariencia
	{
	    case 0:
	        if (global.modo_noche == 1)
	        {
	            if (global.bg_level == "snow")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB_snow_night_1
	                    anibg[1] = bg_SMB_snow_night_2
	                }
	            }
	            else if (global.bg_level == "underwater")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB_underwater_night_1
	                    anibg[1] = bg_SMB_underwater_night_2
	                }
	            }
				else if (global.bg_level == "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB_volcano
	                    anibg[1] = bg_SMB_volcano_2
	                }
	            }
	            else if (global.bg_level != "ghost") && (global.bg_level != "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB_night_1
	                    anibg[1] = bg_SMB_night_2
	                }
	            }
	        }
	        break
	    case 1:
	        if (global.modo_noche == 1)
	        {
	            if (global.bg_level == "snow")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB3_snow_night_1
	                    anibg[1] = bg_SMB3_snow_night_2
	                }
	            }
	            else if (global.bg_level == "airship")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB3_sky_night_1
	                    anibg[1] = bg_SMB3_sky_night_2
	                    anibg[2] = bg_SMB3_sky_night_3
	                    anibg[3] = bg_SMB3_sky_night_1
	                }
	            }
				else if (global.bg_level == "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB3_volcano
	                    anibg[1] = bg_SMB3_volcano_2
	                }
	            }
	            else if (global.bg_level != "underwater" && global.bg_level != "ghost" && global.bg_level != "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_SMB3_night_1
	                    anibg[1] = bg_SMB3_night_2
	                }
	            }
	        }
	        break
	    case 2:
	        if (global.modo_noche == 0)
	        {
	            if (global.bg_level == "underground")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_underground_1
	                    anibg[1] = bg_underground_2
	                    anibg[2] = bg_underground_3
	                    anibg[3] = bg_underground_4
	                }
	            }
	            else if (global.bg_level == "underwater")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_underwater_1
	                    anibg[1] = bg_underwater_2
	                    anibg[2] = bg_underwater_3
	                    anibg[3] = bg_underwater_4
	                }
	            }
	            else if (global.bg_level == "ghost") 
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_ghost_house_1
	                    anibg[1] = bg_ghost_house_2
	                    anibg[2] = bg_ghost_house_3
	                    anibg[3] = bg_ghost_house_2
	                }
	            }
	            break
	        }
	        else if (global.modo_noche == 1)
	        {
	            if (global.bg_level == "airship")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_sky_night_1
	                    anibg[1] = bg_sky_night_2
	                    anibg[2] = bg_sky_night_3
	                    anibg[3] = bg_sky_night_2
	                }
	                break
	            }
	            else if (global.bg_level == "underwater")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_underwater_night_1
	                    anibg[1] = bg_underwater_night_2
	                    anibg[2] = bg_underwater_night_3
	                    anibg[3] = bg_underwater_night_4
	                }
	                break
	            }
				else if (global.bg_level == "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_volcano_1
	                    anibg[1] = bg_volcano_2
	                    anibg[2] = bg_volcano_3
	                    anibg[3] = bg_volcano_4
	                }
	                break
	            }
	            else if (global.bg_level != "ghost") && (global.bg_level != "mountain")
	            {
	                with (instance_create(0, 0, obj_bganimator))
	                {
	                    anibg[0] = bg_night_1
	                    anibg[1] = bg_night_2
	                    anibg[2] = bg_night_3
	                    anibg[3] = bg_night_4
	                }
	            }
	        }
	}




}
