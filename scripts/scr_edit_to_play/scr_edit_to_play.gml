function scr_edit_to_play() {
	var plant;
	if instance_exists(obj_ground)
	{
	    with (obj_ground)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_slopes)
	{
	    with (obj_slopes)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_decoracion_1)
	{
	    with (obj_decoracion_1)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_skewer_res)
	    {
	        with (obj_skewer_res)
	        {
	            visible = false
	            switch direct_t
	            {
	                case 1:
	                    var posx_1 = (x - 32)
	                    var posy_1 = (y - 32)
	                    var truckx = x
	                    var trucky = (y + 16)
	                    var py = (y - 16)
	                    break
	                case 2:
	                    posx_1 = (x - 32)
	                    posy_1 = (y - 32)
	                    truckx = (x + 16)
	                    trucky = y
	                    py = (x - 16)
	                    break
	                case 3:
	                    posx_1 = (x - 32)
	                    posy_1 = (y + 16)
	                    truckx = x
	                    trucky = (y - 16)
	                    py = (y + 15)
	                    break
	                case 4:
	                    posx_1 = (x + 16)
	                    posy_1 = (y - 32)
	                    truckx = (x - 16)
	                    trucky = y
	                    py = (x + 15)
	                    break
	            }

	            if (direct_t == 1 || direct_t == 3)
	            {
	                 var scalex = 4
	                 var scaley = 1
	            }
	            else
	            {
	                scalex = 1
	                scaley = 4
	            }
	             pos_x = ((16 * scalex) / 2)
	             pos_y = ((16 * scaley) / 2)
	            skewer = instance_create(posx_1, posy_1, obj_skewer)
	            skewer.image_xscale = scalex
	            skewer.image_yscale = scaley
	            skewer.rotacion = rotacion
	            skewer.direct_t = direct_t
	            skewer.posx = pos_x
	            skewer.posy = pos_y
	            skewertrunk = instance_create(truckx, trucky, obj_skewertrunk)
	            skewertrunk.direct_t = direct_t
	            skewertrunk.rotacion = rotacion
	            skewertrunk.parent_y = py
	            switch direct_t
	            {
	                case 2:
	                    skewertrunk.mask_index = spr_mask_skewer_left
	                    break
	                case 3:
	                    skewertrunk.mask_index = spr_mask_skewer_up
	                    break
	                case 4:
	                    skewertrunk.mask_index = spr_mask_skewer_right
	                    break

	        }
	        }
	    }
	if instance_exists(obj_decoracion_2)
	{
	    with (obj_decoracion_2)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_decoracion_3)
	{
	    with (obj_decoracion_3)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_claw_res)
	    {
	        with (obj_claw_res)
	        {
	            visible = false
	            instance_create((x + 8), (y + 34), obj_claw)
	        }
	    }

	if instance_exists(obj_decoracion_4)
	{
	    with (obj_decoracion_4)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_semisolid_platform1)
	{
	    with (obj_semisolid_platform1)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_mushroom_platform_res)
	{
	    with (obj_mushroom_platform_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_puente_res)
	{
	    with (obj_puente_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_rails_res)
	{
	    with (obj_rails_res)
	    {
	        visible = false
			if sprout != 0 
				scr_sprite_make_object_rieles(drawX,y,sprout)
	        event_user(3)

	    }
	}
	if instance_exists(obj_platform_res)
	{
	    with (obj_platform_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_platform_blue_res)
	{
	    with (obj_platform_blue_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_vine_res)
	{
	    with (obj_vine_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_pokey_res)
	{
	    with (obj_pokey_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_bullebill_base_res)
	{
	    with (obj_bullebill_base_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_bullebill_base_red_res)
	{
	    with (obj_bullebill_base_red_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_parent_sounds)
	{
	    with (obj_parent_sounds)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if (global.apariencia == 0)
	{
	    if instance_exists(obj_ground3)
	    {
	        if (global.bg_level == "castle") && (!instance_exists(obj_axe_smw))
	            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
	        else if (global.bg_level != "castle")
	        {
	            instance_create((obj_ground3.x + 4), (obj_ground3.y - 176), obj_flagpole)
	            instance_create((obj_ground3.x + 80), (obj_ground3.y - 48), obj_SMB_castle)
	        }
	    }
	}
	else if (global.apariencia == 1)
	{
	    if instance_exists(obj_ground3)
	    {
	        if (global.bg_level == "castle") && (!instance_exists(obj_axe_smw))
	            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
	        else if (global.bg_level != "castle") && (!instance_exists(obj_goalcard))
	            instance_create(obj_ground3.x, (obj_ground3.y - 64), obj_goalcard)
	    }
	}
	else if (global.apariencia == 2)
	{
	    if instance_exists(obj_ground3)
	    {
	        if (global.bg_level == "castle") && (!instance_exists(obj_axe_smw))
	            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
	        else if (global.bg_level != "castle")
	            instance_create(obj_ground3.x, (obj_ground3.y - 137), obj_goalgate)
	    }
	}
	else if (global.apariencia == 3)
	{
	    if instance_exists(obj_ground3)
	    {
	        if (global.bg_level == "castle") && (!instance_exists(obj_axe_smw))
	            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
	        else if (global.bg_level != "castle")
	        {
	            instance_create((obj_ground3.x + 8), (obj_ground3.y - 170), obj_flagpole)
	            instance_create((obj_ground3.x + 80), (obj_ground3.y - 48), obj_SMB_castle)
	        }
	    }
	}
	else if (global.apariencia == 4)
	{
	    if instance_exists(obj_ground3)
	    {
	        if (global.bg_level == "castle") && (!instance_exists(obj_axe_smw))
	        {
	            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
	        }
	        else if (global.bg_level != "castle")
	        {
	            instance_create((obj_ground3.x + 64), (obj_ground3.y - 32), obj_crystalorb)
	            }
	    }
	}
	if instance_exists(obj_tuberia_res)
	{
	    with (obj_tuberia_res)
	    {
	        visible = false
	        if (warp < 2)
	        {
	            with (instance_create(x, y, obj_tuberia))
	            {
	                sprite = other.sprite
	                part = other.part
	                size = other.size
	                direct = other.s_scalex
	                direct_t = other.direct_t
	                rotacion = other.rotacion
	                index = other.color
	                image_xscale = other.image_xscale
	                image_yscale = other.image_yscale
	                warp = other.warp
	                w_x_pos = other.t_x_pos
	                w_y_pos = other.t_y_pos
	                w_direct = other.t_direct_t
	                w_size = other.t_size
	                w_rotacion = other.t_rotacion
	                w_s_scalex = other.t_s_scalex
	                w_color = other.t_color
	                w_xscale = other.t_xscale
	                w_yscale = other.t_yscale
	                switch other.t_direct_t
	                {
	                    case 0:
	                        w_posx = (other.t_x_pos + 16)
	                        w_posy = other.t_y_pos
	                        break
	                    case 1:
	                        w_posx = (other.t_x_pos + (16 + (other.t_size * 16)))
	                        w_posy = other.t_y_pos
	                        break
	                    case 2:
	                        w_posx = (other.t_x_pos + 16)
	                        w_posy = (other.t_y_pos + (16 + (other.t_size * 16)))
	                        break
	                    case 3:
	                        w_posx = (other.t_x_pos + 16)
	                        w_posy = other.t_y_pos
	                        break
	                }

	                switch other.direct_t
	                {
	                    case 0:
	                        m_posx = (x + 16)
	                        m_posy = y
	                        break
	                    case 1:
	                        m_posx = (x + (16 + (other.size * 16)))
	                        m_posy = y
	                        break
	                    case 2:
	                        m_posx = (x + 16)
	                        m_posy = (y + (16 + (other.size * 16)))
	                        break
	                    case 3:
	                        m_posx = (x + 16)
	                        m_posy = y
	                        break
	                }

	                if (other.plant == 1)
	                {
	                    switch other.direct_t
	                    {
	                        case 0:
	                            plant = instance_create((x + 16), (y + 16), obj_piranhaplant)
	                            break
	                        case 1:
	                            plant = instance_create((x + (16 + (other.size * 16))), (y + 16), obj_piranhaplant)
	                            break
	                        case 2:
	                            plant = instance_create((x + 16), (y + (16 + (other.size * 16))), obj_piranhaplant)
	                            break
	                        case 3:
	                            plant = instance_create((x + 16), (y + 16), obj_piranhaplant)
	                            break
	                    }

	                    plant.direct_t = other.direct_t
	                    plant.rotacion = other.rotacion
	                }
	                if (warp == 1)
	                    alarm[0] = 1
	            }
	        }
	    }
	}
	if instance_exists(obj_pipebase_res)
	{
	    with (obj_pipebase_res)
	    {
	        visible = false
	        instance_create(x, y, obj_pipebase)
	    }
	}
	if instance_exists(obj_cannon_res)
	{
	    with (obj_cannon_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_cannon))
	        {
	            switch other.direct
	            {
	                case 0:
	                    direct = 0
	                    break
	                case 1:
	                    direct = 45
	                    break
	                case 2:
	                    direct = 90
	                    break
	                case 3:
	                    direct = 135
	                    break
	                case 4:
	                    direct = 180
	                    break
	                case 5:
	                    direct = 225
	                    break
	                case 6:
	                    direct = 270
	                    break
	                case 7:
	                    direct = 315
	                    break
	            }

	            d = other.d
	            u = other.u
	            l = other.l
	            r = other.r
	        }
	    }
	}
	if instance_exists(obj_cannon_red_res)
	{
	    with (obj_cannon_red_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_cannon_red))
	        {
	            switch other.direct
	            {
	                case 0:
	                    direct = 0
	                    break
	                case 1:
	                    direct = 45
	                    break
	                case 2:
	                    direct = 90
	                    break
	                case 3:
	                    direct = 135
	                    break
	                case 4:
	                    direct = 180
	                    break
	                case 5:
	                    direct = 225
	                    break
	                case 6:
	                    direct = 270
	                    break
	                case 7:
	                    direct = 315
	                    break
	            }

	            d = other.d
	            u = other.u
	            l = other.l
	            r = other.r
	        }
	    }
	}
	if instance_exists(obj_soplete_res)
	{
	    with (obj_soplete_res)
	    {
	        visible = false
	        if (sprout == 0)
	        {
	            with (instance_create((x + 8), (y + 8), obj_soplete))
	            {
	                direct_t = other.direct_t
	                rotacion = other.rotacion
	            }
	        }
	        else
	        {
	            with (instance_create((x + 8), (y + 8), obj_soplete_invert))
	            {
	                direct_t = other.direct_t
	                rotacion = other.rotacion
	            }
	        }
	    }
	}
	if instance_exists(obj_angrysun_res)
	{
	    with (obj_angrysun_res)
	    {
	        visible = false
	        instance_create(x, y, obj_angrysun)
	    }
	}
	if instance_exists(obj_door_res)
	{
	    with (obj_door_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_door))
	        {
	            posx = other.door_x
	            posy = other.door_y
	        }
	    }
	}
	if instance_exists(obj_door_switch_res)
	{
	    with (obj_door_switch_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_door_switch))
	        {
	            posx = other.door_x
	            posy = other.door_y
	        }
	    }
	}
	if instance_exists(obj_door_lock_res)
	{
	    with (obj_door_lock_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_door_lock))
	        {
	            posx = other.door_x
	            posy = other.door_y
	        }
	    }
	}
	if instance_exists(obj_pink_coin_res)
	{
	    with (obj_pink_coin_res)
	    {
	        visible = false
	        instance_create(x, y, obj_pink_coin)
	    }
	}
	if instance_exists(obj_bouncycloud_res)
	{
	    with (obj_bouncycloud_res)
	    {
	        visible = false
	        instance_create(x, y, obj_bouncycloud)
	    }
	}
	if instance_exists(obj_rocangrejo_res)
	{
	    with (obj_rocangrejo_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_rocangrejo)
	    }
	}
	if instance_exists(obj_shell_drybones_res)
	{
	    with (obj_shell_drybones_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_shell_drybones)
	    }
	}
	if instance_exists(obj_mechakoopa_res)
	{
	    with (obj_mechakoopa_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_mechakoopa)
	    }
	}
	if instance_exists(obj_bonybeetle_res)
	{
	    with (obj_bonybeetle_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_bonybeetle)
	    }
	}
	if instance_exists(obj_bonybeetle_b_res)
	{
	    with (obj_bonybeetle_b_res)
	    {
	        visible = false
	        instance_create((x + 16), (y + 16), obj_bonybeetle_b)
	    }
	}
	if instance_exists(obj_lava_lift_res)
	{
	    with (obj_lava_lift_res)
	    {
	        visible = false
	        instance_create((x + 16), y, obj_lava_lift)
	    }
	}
	if instance_exists(obj_fast_lava_lift_res)
	{
	    with (obj_fast_lava_lift_res)
	    {
	        visible = false
	        instance_create((x + 16), y, obj_fast_lava_lift)
	    }
	}
	if instance_exists(obj_rock_res)
	{
	    with (obj_rock_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_block_rock))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_ice_res)
	{
	    with (obj_ice_res)
	    {
	        visible = false
	        instance_create(x, y, obj_block_ice)
	    }
	}
	if instance_exists(obj_block_hidden_res)
	{
	    with (obj_block_hidden_res)
	    {
	        visible = false
	        if (sprout == 0)
	        {
	            with (instance_create(x, y, obj_block_hidden))
	            {
	                wings = other.wings
	                progresivo = other.progresivo
	            }
	        }
	        else
	        {
	            with (instance_create(x, y, obj_block_hidden))
	            {
	                sprout = other.sprout
	                wings = other.wings
	                progresivo = other.progresivo
	            }
	        }
	    }
	}
	if instance_exists(obj_pinchos_res)
	{
	    with (obj_pinchos_res)
	    {
	        visible = false
	        instance_create(x, y, obj_pinchos)
	    }
	}
	if instance_exists(obj_firebar_res)
	{
	    with (obj_firebar_res)
	    {
	        visible = false
	        with (instance_create((x + 8), (y + 8), obj_firebar))
	        {
	            fireballs = other.size_x
	            direct_t = other.direct_t
	            direction = other.color
	        }
	    }
	}
	if instance_exists(obj_icicle_res)
	{
	    with (obj_icicle_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_icicle)
	    }
	}
	if instance_exists(obj_icicle2_res)
	{
	    with (obj_icicle2_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_icicle2)
	    }
	}
	if instance_exists(obj_mini_icicle_res)
	{
	    with (obj_mini_icicle_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_mini_icicle)
	    }
	}
	if instance_exists(obj_mini_icicle2_res)
	{
	    with (obj_mini_icicle2_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_mini_icicle2)
	    }
	}
	if instance_exists(obj_onoffblock_res)
	{
	    with (obj_onoffblock_res)
	    {
	        visible = false
	        instance_create(x, y, obj_onoffblock)
	    }
	}
	if instance_exists(obj_onoffplatform_res)
	{
	    with (obj_onoffplatform_res)
	    {
	        visible = false
	        instance_create(x, y, obj_onoffplatform)
	    }
	}
	if instance_exists(obj_onoffplatform_blue_res)
	{
	    with (obj_onoffplatform_blue_res)
	    {
	        visible = false
	        instance_create(x, y, obj_onoffplatform_blue)
	    }
	}
	if instance_exists(obj_pblock_res)
	{
	    with (obj_pblock_res)
	    {
	        visible = false
	        instance_create(x, y, obj_anti_pblock)
	    }
	}
	if instance_exists(obj_ninji_res)
	{
	    with (obj_ninji_res)
	    {
	        visible = false
			if (global.apariencia != 3)
				instance_create(x, y, obj_ninji)
			else
				instance_create(x + 5, y + 7, obj_NSMBU_ninji)
	    }
	}
	if instance_exists(obj_cooligan_res)
	{
	    with (obj_cooligan_res)
	    {
	        visible = false
			instance_create(x, y, obj_cooligan)
	    }
	}
	if instance_exists(obj_pblock2_res)
	{
	    with (obj_pblock2_res)
	    {
	        visible = false
	        instance_create(x, y, obj_pblock)
	    }
	}
	if instance_exists(obj_oneway_res)
	{
	    with (obj_oneway_res)
	    {
	        visible = false
	        switch direct_t
	        {
	            case 1:
	                with (instance_create(x, y, obj_onewaygate_right))
	                {
	                    rotacion = other.rotacion
	                    rot_angle = other.rotacion
	                }
	                break
	            case 2:
	                with (instance_create(x, y, obj_onewaygate_top))
	                {
	                    rotacion = other.rotacion
	                    rot_angle = other.rotacion
	                }
	                break
	            case 3:
	                with (instance_create(x, y, obj_onewaygate_left))
	                {
	                    rotacion = other.rotacion
	                    rot_angle = other.rotacion
	                }
	                break
	            case 4:
	                with (instance_create(x, y, obj_onewaygate_bottom))
	                {
	                    rotacion = other.rotacion
	                    rot_angle = other.rotacion
	                }
	                break
	        }

	    }
	}
	if instance_exists(obj_checkpoint_res)
	{
	    with (obj_checkpoint_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_checkpoint))
	        {
	            rotacion = other.rotacion
	            sprout = other.sprout
	        }
	    }
	}
	if instance_exists(obj_arrow_res)
	{
	    with (obj_arrow_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_arrow))
	            rotacion = other.rotacion
	    }
	}
	if instance_exists(obj_coin_res)
	{
	    with (obj_coin_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_coin))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_icecoin_res)
	{
	    with (obj_icecoin_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_icecoin))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_coin10_res)
	{
	    with (obj_coin10_res)
	    {
	        visible = false
	        instance_create(x, y, obj_coin10)
	    }
	}
	if instance_exists(obj_coin30_res)
	{
	    with (obj_coin30_res)
	    {
	        visible = false
	        instance_create(x, y, obj_coin30)
	    }
	}
	if instance_exists(obj_coin50_res)
	{
	    with (obj_coin50_res)
	    {
	        visible = false
	        instance_create(x, y, obj_coin50)
	    }
	}
	if instance_exists(obj_donut_res)
	{
	    with (obj_donut_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_donut))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_torbellino_res)
	{
	    with (obj_torbellino_res)
	    {
	        visible = false
	        instance_create(x, y, obj_torbellino)
	    }
	}
	if (global.bg_level == "mountain") && (global.modo_noche == 1) && (global.meteoritos == 1) && (!instance_exists(obj_meteorites_maker))
		instance_create(obj_persistent.x + 5, obj_persistent.y - 5, obj_meteorites_maker)
	/*
	if (global.bg_level == "underground") and (global.apariencia > 1) and (!instance_exists(obj_audio_control))
		instance_create(obj_persistent.x + 10, obj_persistent.y - 10, obj_audio_control)
	/**/
	if instance_exists(obj_foo_res)
	{
	    with (obj_foo_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_foo)
	    }
	}
	if instance_exists(obj_goomba_res)
	{
	    with (obj_goomba_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_galoomba))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_goomba_b_res)
	{
	    with (obj_goomba_b_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_galoomba_b))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_goombrat_b_res)
	{
	    with (obj_goombrat_b_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_galoomba2_b))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_goombrat_res)
	{
	    with (obj_goombrat_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_galoomba2))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_waddlewing_res)
	{
	    with (obj_waddlewing_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_waddlewing))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_koopa_res)
	{
	    with (obj_koopa_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_koopa))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_koopa_b_res)
	{
	    with (obj_koopa_b_res)
	    {
	        visible = false
	        with (instance_create((x + 16), (y + 16), obj_koopa_b))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_koopa_red_res)
	{
	    with (obj_koopa_red_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_koopa_red))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_koopa_red_b_res)
	{
	    with (obj_koopa_red_b_res)
	    {
	        visible = false
	        with (instance_create((x + 16), (y + 16), obj_koopa_red_b))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            key = other.key
	        }
	    }
	}
	if instance_exists(obj_drybones_res)
	{
	    with (obj_drybones_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_drybones))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_buzzybeetle_res)
	{
	    with (obj_buzzybeetle_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_buzzybeetle))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            inup = other.inup
	        }
	    }
	}
	if instance_exists(obj_buzzybeetle_b_res)
	{
	    with (obj_buzzybeetle_b_res)
	    {
	        visible = false
	        with (instance_create((x + 16), (y + 16), obj_buzzybeetle_b))
	        {
	            wings = other.wings
	            inup = other.inup
	            if (inup == 0)
	                paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_buzzy_shell_res)
	{
	    with (obj_buzzy_shell_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_shell_empty)
	    }
	}
	if instance_exists(obj_boomboom_res)
	{
	    with (obj_boomboom_res)
	    {
	        visible = false
	        if (global.apariencia == 3)
	        {
	            with (instance_create(x, y, obj_NSMBU_boomboom))
	                key = other.key
	        }
	        else
	        {
	            with (instance_create(x, y, obj_boomboom))
	                key = other.key
	        }
	    }
	}
	if instance_exists(obj_boomboom_b_res)
	{
	    with (obj_boomboom_b_res)
	    {
	        visible = false
	        if (global.apariencia == 3)
	        {
	            with (instance_create(x, y, obj_NSMBU_boomboom_b))
	                key = other.key
	        }
	        else
	        {
	            with (instance_create(x, y, obj_boomboom_b))
	                key = other.key
	        }
	    }
	}
	if instance_exists(obj_bowser_res)
	{
	    with (obj_bowser_res)
	    {
	        visible = false
	        switch global.apariencia
	        {
	            case 0:
	                with (instance_create((x + 16), (y + 16), obj_SMB_bowser))
	                    key = other.key
	                break
	            case 1:
	                with (instance_create((x + 16), (y + 16), obj_SMB3_bowser))
	                    key = other.key
	                break
	            case 2:
	                with (instance_create((x + 16), (y + 16), obj_SMW_bowser))
	                    key = other.key
	                break
	            case 3:
	                with (instance_create((x + 16), (y + 16), obj_NSMBU_bowser))
	                    key = other.key
	                break
	        }

	    }
	}
	if instance_exists(obj_bowserjr_res)
	{
	    with (obj_bowserjr_res)
	    {
	        visible = false
	        if (global.apariencia == 3)
	        {
	            with (instance_create((x + 8), y, obj_NSMBU_bowserjr))
	            {
	                key = other.key
	                wings = other.wings
	                paracaidas = other.paracaidas
	            }
	        }
	        else
	        {
	            with (instance_create((x + 8), y, obj_bowserjr))
	            {
	                key = other.key
	                wings = other.wings
	                paracaidas = other.paracaidas
	            }
	        }
	    }
	}
	if instance_exists(obj_spiny_res)
	{
	    with (obj_spiny_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_spiny))
	        {
	            wings = other.wings
	            inup = other.inup
	            if (other.wings == 1)
	            {
	                if (global.apariencia == 3)
	                    image_index = 1
	                else
	                {
	                    sprite_index = spr_spiny_wings
	                    image_index = global.apariencia
	                }
	                image_speed = 0
	            }
	        }
	    }
	}
	if instance_exists(obj_spiny_shell_res)
	{
	    with (obj_spiny_shell_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_spiny_empty)
	    }
	}
	if instance_exists(obj_lakitu_res)
	{
	    with (obj_lakitu_res)
	    {
	        visible = false
	        with (instance_create((x + 8), (y + 16), obj_lakitu))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            sprout = other.sprout
	        }
	    }
	}
	if instance_exists(obj_cheepcheep_res)
	{
	    with (obj_cheepcheep_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_cheepcheep))
	        {
	            modo_water = other.modo_water
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_cheepcheep2_res)
	{
	    with (obj_cheepcheep2_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_cheepcheep2))
	        {
	            modo_water = other.modo_water
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_blooper_res)
	{
	    with (obj_blooper_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_blooper)
	    }
	}
	if instance_exists(obj_floruga_res)
	{
	    with (obj_floruga_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_floruga)
	    }
	}
	if instance_exists(obj_floruga_angry_res)
	{
	    with (obj_floruga_angry_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_floruga))
	        {
	            state = 2
	            closeness = 8
	            alarm[0] = 4
	        }
	    }
	}
	if instance_exists(obj_hammerbro_res)
	{
	    with (obj_hammerbro_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_hammerbro))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_icebro_res)
	{
	    with (obj_icebro_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_icebro))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_boomerangbro_res)
	{
	    with (obj_boomerangbro_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_boomerangbro))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_firebro_res)
	    {
	        with (obj_firebro_res)
	        {
	            visible = false
	            with (instance_create((x + 8), y, obj_firebro))
	                wings = other.wings
	        }
	    }
	if instance_exists(obj_sledgebro_res)
	{
	    with (obj_sledgebro_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_sledgebro))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
    if instance_exists(obj_charginchuck_res)
    {
        with (obj_charginchuck_res)
        {
            visible = false
            if (global.apariencia == 3)
            {
                with (instance_create(x, y, obj_NSMBU_charginchuck))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
            }
            else
            {
                with (instance_create(x, y, obj_charginchuck))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
            }
        }
    }
	if instance_exists(obj_magikoopa_res)
	{
	    with (obj_magikoopa_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_magikoopa)
	    }
	}
	if instance_exists(obj_monty_res)
	{
	    with (obj_monty_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_monty_chase))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_rocky_res)
	{
	    with (obj_rocky_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_rocky)
	    }
	}
	if instance_exists(obj_chomp_res)
	{
	    with (obj_chomp_res)
	    {
	        visible = false
	        instance_create((x + 8), (y + 8), obj_chain_chomp_free)
	    }
	}
	if instance_exists(obj_chomp_b_res)
	    {
	        with (obj_chomp_b_res)
	        {
	            visible = false
	            instance_create((x + 16), (y + 16), obj_chain_chomp_free_b)
	        }
	    }
	if instance_exists(obj_boo_res)
	{
	    with (obj_boo_res)
	    {
	        visible = false
	        if (inup == 0)
	        {
	            with (instance_create((x + 8), (y + 8), obj_boo))
	                wings = other.wings
	        }
	        else
	        {
	            with (instance_create((x + 8), (y + 8), obj_boo))
	            {
	                if (global.apariencia == 3)
	                    sprite_index = spr_NSMBU_boo_stretch
	                else
	                {
	                    sprite_index = spr_boo_stretch
	                    image_index = global.apariencia
	                }
	                inup = other.inup
	            }
	        }
	    }
	}
    if instance_exists(obj_egg_res)
    {
        with (obj_egg_res)
        {
            visible = false
            if (global.apariencia < 2)
                var h = 8
            else
                h = 0
            if (global.apariencia < 3)
            {
				if wings = 0{
                with (instance_create((x + h), y, obj_egg))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
				}
				else{
                with (instance_create((x + h), y, obj_egg_blue))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
				}
            }
        }
    }
    if instance_exists(obj_egg_red_res)
    {
        with (obj_egg_red_res)
        {
            visible = false
            if (global.apariencia == 2)
            {
                with (instance_create(x, y, obj_egg_red))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
            }
            else if (global.apariencia != 3)
            {
                with (instance_create((x + 8), y, obj_egg_red))
                {
                    wings = other.wings
                    paracaidas = other.paracaidas
                }
            }
        }
    }
	if instance_exists(obj_pplant_res)
	{
	    with (obj_pplant_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_jumppiranha))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            inup = other.inup
	        }
	    }
	}
	if instance_exists(obj_big_pplant_res)
	{
	    with (obj_big_pplant_res)
	    {
	        visible = false
	        with (instance_create((x + 27), y+24, obj_big_pplant))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            inup = other.inup
	        }
	    }
	}
	if instance_exists(obj_big_pplant_b_res)
	{
	    with (obj_big_pplant_b_res)
	    {
	        visible = false
	        with (instance_create((x + 54), y, obj_big_pplant_b))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            inup = other.inup
	        }
	    }
	}
	if instance_exists(obj_plant_fire_res)
	{
	    with (obj_plant_fire_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_plant_fire))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	    if instance_exists(obj_spike_res)
	    {
	        with (obj_spike_res)
	        {
	            visible = false
	            with (instance_create((x + 8), y, obj_spike))
	            {
	                wings = other.wings
	                paracaidas = other.paracaidas
	            }
	        }
	    }
	    if instance_exists(obj_spike_ball_res)
	    {
	        with (obj_spike_ball_res)
	        {
	            visible = false
	            if (global.bg_level == "snow")
	            {
	                with (instance_create((x + 8), y, obj_snow_ball))
	                    paracaidas = other.paracaidas
	            }
	            else
	            {
	                with (instance_create((x + 8), y, obj_spike_ball))
	                {
	                    spike_alone = 1
	                    paracaidas = other.paracaidas
	                }
	            }
	        }
	    }
	    if instance_exists(obj_spike_ball_b_res)
	    {
	        with (obj_spike_ball_b_res)
	        {
	            visible = false
	            if (global.bg_level == "snow")
	            {
	                with (instance_create((x + 16), (y + 16), obj_snow_ball_b))
	                    paracaidas = other.paracaidas
	            }
	            else
	            {
	                with (instance_create((x + 16), (y + 16), obj_spike_ball_b))
	                {
	                    spike_alone = 1
	                    paracaidas = other.paracaidas
	                }
	            }
	        }
	    }
	if instance_exists(obj_muncher_res)
	{
	    with (obj_muncher_res)
	    {
	        visible = false
	        instance_create((x + 8), y, obj_muncher)
	    }
	}
	if instance_exists(obj_muncher_b_res)
	{
	    with (obj_muncher_b_res)
	    {
	        visible = false
	        instance_create(x, (y - 16), obj_muncher_b)
	    }
	}
	if instance_exists(obj_thwomp_res)
	{
	    with (obj_thwomp_res)
	    {
	        visible = false
	        with (instance_create((x+16), (y+16), obj_thwomp))
	        {
	            direct_t = other.direct_t
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_thwomp_b_res)
	{
	    with (obj_thwomp_b_res)
	    {
	        visible = false
	        with (instance_create((x), (y), obj_thwomp_b))
	        {
	            direct_t = other.direct_t
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_grrrol_res)
	{
	    with (obj_grrrol_res)
	    {
	        visible = false
	        with (instance_create_depth((x + 24), (y + 24),-2, obj_grrrol))
	            direct_t = other.direct_t
	    }
	}
	if instance_exists(obj_grrrol_new_res)
	{
	    with (obj_grrrol_new_res)
	    {
	        visible = false
	        with (instance_create_depth((x + 20), (y + 18),-2, obj_grrrol_new))
	            direct_t = other.direct_t
	    }
	}
	if instance_exists(obj_grrrol_b_res)
	{
	    with (obj_grrrol_b_res)
	    {
	        visible = false
	        with (instance_create_depth((x + 32.5), (y + 32.5),-2, obj_grrrol_b))
	            direct_t = other.direct_t
	    }
	}
	if instance_exists(obj_podoboo_res)
	{
	    with (obj_podoboo_res)
	    {
	        visible = false
	        instance_create((x + 8), (y + 8), obj_podoboo)
	    }
	}
	if instance_exists(obj_podoboo_b_res)
	{
	    with (obj_podoboo_b_res)
	    {
	        visible = false
	        instance_create(x, y, obj_podoboo_b)
	    }
	}
	if instance_exists(obj_clown_res)
	{
	    with (obj_clown_res)
	    {
	        visible = false
	        instance_create(x, y, obj_clown)
	    }
	}
	if instance_exists(obj_clown_fire_res)
	{
	    with (obj_clown_fire_res)
	    {
	        visible = false
	        instance_create(x, y, obj_clown_fire)
	    }
	}
	if instance_exists(obj_cinta_res)
	{
	    with (obj_cinta_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_cinta_on_res)
	{
	    with (obj_cinta_on_res)
	    {
	        visible = false
	        event_user(3)
	    }
	}
	if instance_exists(obj_billbanzai_res)
	{
	    with (obj_billbanzai_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_banzaibill))
	        {
	            direct = other.s_scaley
	            rotacion = other.rotacion
	            direct_t = other.direct_t
	        }
	    }
	}
	if instance_exists(obj_billbanzai_red_res)
	{
	    with (obj_billbanzai_red_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_billbanzai_red))
	        {
	            switch other.rotacion
	            {
	                case 0:
	                    direction = 180
	                    break
	                case 180:
	                    direction = 0
	                    break
	                case 90:
	                    direction = 270
	                    break
	                case 270:
	                    direction = 90
	                    break
	            }

	            rotacion = other.rotacion
	            direct_t = other.direct_t
	            if (direct_t < 3)
	                sprite_index = spr_billbanzai_red_i
	        }
	    }
	}
	if instance_exists(obj_bobomb_res)
	{
	    with (obj_bobomb_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_bobomb))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_bobomb_ready_res)
	{
	    with (obj_bobomb_ready_res)
	    {
	        visible = false
	        with (instance_create((x + 8), y, obj_bobomb_ready))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_1up_res)
	{
	    with (obj_1up_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_1up))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_star_res)
	{
	    with (obj_star_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_star))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_mushroom_res)
	{
	    with (obj_mushroom_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_mushroom))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_SMB2_mushroom_res)
	{
	    with (obj_SMB2_mushroom_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_SMB2_mushroom))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_link_res)
	{
	    with (obj_link_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_link))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	        }
	    }
	}
	if instance_exists(obj_hen_mushroom_res)
	{
	    with (obj_hen_mushroom_res)
	    {
	        visible = false
	        switch global.apariencia
	        {
	            case 0:
	                with (instance_create(x, y, obj_hen_mushroom))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	            case 1:
	                with (instance_create(x, y, obj_hammersuit))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	            case 2:
	                with (instance_create(x, y, obj_pballon))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	            case 3:
	                with (instance_create(x, y, obj_penguin_suit))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	        }

	    }
	}
	if instance_exists(obj_fireflower_res)
	{
	    with (obj_fireflower_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_fireflower))
	        {
	            wings = other.wings
	            paracaidas = other.paracaidas
	            progresivo = other.progresivo
	        }
	    }
	}
	if instance_exists(obj_superflower_res)
	{
	    with (obj_superflower_res)
	    {
	        visible = false
	        if (global.apariencia != 0)
	        {
	            with (instance_create(x, y, obj_fireflower))
	            {
	                wings = other.wings
	                paracaidas = other.paracaidas
	                progresivo = other.progresivo
	            }
	        }
	        else
	        {
	            with (instance_create(x, y, obj_superflower))
	            {
	                wings = other.wings
	                paracaidas = other.paracaidas
	                progresivo = other.progresivo
	            }
	        }
	    }
	}
	if instance_exists(obj_frogsuit_res)
	    {
	        with (obj_frogsuit_res)
	        {
	            visible = false
	            switch global.apariencia
	            {
	                case 0:
	                    with (instance_create(x, y, obj_link))
	                    {
	                        wings = other.wings
	                        paracaidas = other.paracaidas
	                        progresivo = other.progresivo
	                    }
	                    break
	                case 1:
	                    with (instance_create(x, y, obj_frogsuit))
	                    {
	                        wings = other.wings
	                        paracaidas = other.paracaidas
	                        progresivo = other.progresivo
	                    }
	                    break
	                case 2:
	                    with (instance_create(x, y, obj_pballon))
	                    {
	                        wings = other.wings
	                        paracaidas = other.paracaidas
	                        progresivo = other.progresivo
	                    }
	                    break
	                case 3:
	                    with (instance_create(x, y, obj_superarcon))
	                    {
	                        wings = other.wings
	                        paracaidas = other.paracaidas
	                        progresivo = other.progresivo
	                    }
	                    break
	            }

	        }
	    }
	if instance_exists(obj_cap_res)
	{
	    with (obj_cap_res)
	    {
	        visible = false
	        switch global.apariencia
	        {
	            case 0:
	                with (instance_create(x, y, obj_megamushroom))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	            case 3:
	                with (instance_create(x, y, obj_propellershroom))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	                break
	            default:
	                with (instance_create(x, y, obj_cap))
	                {
	                    wings = other.wings
	                    paracaidas = other.paracaidas
	                    progresivo = other.progresivo
	                }
	        }

	    }
	}
	if instance_exists(obj_spring_res)
	{
	    with (obj_spring_res)
	    {
	        visible = false
	        instance_create(x, y, obj_spring)
	    }
	}
	if instance_exists(obj_spring_land_res)
	{
	    with (obj_spring_land_res)
	    {
	        visible = false
	        instance_create(x, y, obj_spring_land)
	    }
	}
	if instance_exists(obj_grinder_res)
	{
	    with (obj_grinder_res)
	    {
	        visible = false
	        instance_create((x + 24), (y + 24), obj_grinder)
	    }
	}
	if instance_exists(obj_bumper_res)
	{
	    with (obj_bumper_res)
	    {
	        visible = false
	        instance_create((x + 24), (y + 24), obj_bumper)
	    }
	}
	if instance_exists(obj_pswitch_res)
	{
	    with (obj_pswitch_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_pswitch)){
	            inup = other.inup
				wings = other.wings
			}
	    }
	}
	if instance_exists(obj_pow_res)
	{
	    with (obj_pow_res)
	    {
	        visible = false
	        instance_create(x, y, obj_block_pow_hold)
	    }
	}
	if instance_exists(obj_key_res)
	{
	    with (obj_key_res)
	    {
	        visible = false
	        instance_create(x, y, obj_key)
	    }
	}
	if instance_exists(obj_nube_res)
	{
	    with (obj_nube_res)
	    {
	        visible = false
	        instance_create(x, y, obj_nube)
	    }
	}
	if instance_exists(obj_qblock_res)
	{
	    with (obj_qblock_res)
	    {
	        visible = false
	        switch sprout
	        {
	            case 0:
	                with (instance_create(x, y, obj_block))
	                    wings = other.wings
	                break
	            case -1:
	                with (instance_create(x, y, obj_block_multicoin))
	                    wings = other.wings
	                break
	            default:
	                with (instance_create(x, y, obj_block))
	                {
	                    sprout = other.sprout
	                    progresivo = other.progresivo
	                    wings = other.wings
	                }
	        }

	    }
	}
	if instance_exists(obj_noteblock_res)
	{
	    with (obj_noteblock_res)
	    {
	        visible = false
	        if (sprout == 0)
	        {
	            with (instance_create(x, y, obj_noteblock))
	                wings = other.wings
	        }
	        else
	        {
	            with (instance_create(x, y, obj_noteblock))
	            {
	                sprout = other.sprout
	                wings = other.wings
	            }
	        }
	    }
	}
	if instance_exists(obj_musicblock_res)
	{
	    with (obj_musicblock_res)
	    {
	        visible = false
	        with (instance_create(x, y, obj_musicblock))
	            wings = other.wings
	    }
	}
	if instance_exists(obj_noteblock_s_res)
	{
	    with (obj_noteblock_s_res)
	    {
	        visible = false
	        instance_create(x, y, obj_noteblock_s)
	    }
	}
	if instance_exists(obj_block_gold_res)
	{
	    with (obj_block_gold_res)
	    {
	        visible = false
	        instance_create(x, y, obj_block_gold)
	    }
	}
	if instance_exists(obj_block_res)
	{
	    with (obj_block_res)
	    {
	        visible = false
	        if (sprout == 0)
	            instance_create(x, y, obj_flipblock)
	        else if (sprout == -1)
	        {
	            with (instance_create(x, y, obj_block_multicoin))
	            {
	                switch global.apariencia
	                {
	                    case 0:
	                        sprite_index = spr_SMB_qblock
	                        image_speed = 0
	                        switch global.bg_level
	                        {
	                            case "snow":
	                                if (global.modo_noche == 1)
	                                    image_index = 4
	                                else
	                                    image_index = 3
	                                break
	                            case "castle":
	                                image_index = 2
	                                break
	                            case "ghost":
	                                image_index = 1
	                                break
	                            case "underground":
	                                image_index = 1
	                                break
	                            default:
	                                image_index = 0
	                        }

	                        break
	                    case 1:
	                        switch global.bg_level
	                        {
	                            case "castle":
	                                sprite_index = spr_SMB3_qblock_dark
	                                break
	                            case "ghost":
	                                sprite_index = spr_SMB3_qblock_night
	                                break
	                            case "underground":
	                                sprite_index = spr_SMB3_qblock_night
	                                break
								case "mountain":
								if (global.modo_noche == 1)
								{
	                                sprite_index = spr_SMB3_qblock_dark
									break
								}
	                            else
									sprite_index = spr_SMB3_qblock
	                            default:
	                                if (global.modo_noche == 1)
	                                {
	                                    sprite_index = spr_SMB3_qblock_night
	                                    break
	                                }
	                                else
	                                    sprite_index = spr_SMB3_qblock
	                        }

	                        image_speed = 0.15
	                        break
	                    case 2:
	                        image_speed = 0
	                        sprite_index = spr_flipblock
	                        break
	                    case 3:
	                        switch global.bg_level
	                        {
	                            case "castle":
	                                sprite_index = spr_NSMBU_block_dark
	                                break
	                            case "ghost":
	                                sprite_index = spr_NSMBU_block_night
	                                break
	                            case "underground":
	                                sprite_index = spr_NSMBU_block_night
	                                break
								case "mountain":
									if (global.modo_noche == 1)
									{
										sprite_index = spr_NSMBU_block_dark
										break
									}
									else
										sprite_index = spr_NSMBU_block
										break
	                            default:
	                                if (global.modo_noche == 1)
	                                {
	                                    sprite_index = spr_NSMBU_block_night
	                                    break
	                                }
	                                else
	                                    sprite_index = spr_NSMBU_block
	                        }

	                        image_speed = 0.2
	                        break
	                }

	                wings = other.wings
	            }
	        }
	        else
	        {
	            with (instance_create(x, y, obj_block))
	            {
	                switch global.apariencia
	                {
	                    case 0:
	                        sprite_index = spr_SMB_qblock
	                        image_speed = 0
	                        switch global.bg_level
	                        {
	                            case "snow":
	                                if (global.modo_noche == 1)
	                                    image_index = 4
	                                else
	                                    image_index = 3
	                                break
	                            case "castle":
	                                image_index = 2
	                                break
	                            case "ghost":
	                                image_index = 1
	                                break
	                            case "underground":
	                                image_index = 1
	                                break
	                            default:
	                                image_index = 0
	                        }

	                        break
	                    case 1:
	                        switch global.bg_level
	                        {
	                            case "castle":
	                                sprite_index = spr_SMB3_qblock_dark
	                                break
	                            case "ghost":
	                                sprite_index = spr_SMB3_qblock_night
	                                break
	                            case "underground":
	                                sprite_index = spr_SMB3_qblock_night
	                                break
								case "mountain":
									if (global.modo_noche == 1)
									{
										sprite_index = spr_SMB3_qblock_dark
										break
									}
									else
										sprite_index = spr_SMB3_qblock
										break
	                            default:
	                                if (global.modo_noche == 1)
	                                {
	                                    sprite_index = spr_SMB3_qblock_night
	                                    break
	                                }
	                                else
	                                    sprite_index = spr_SMB3_qblock
	                        }

	                        image_speed = 0.15
	                        break
	                    case 2:
	                        image_speed = 0
	                        sprite_index = spr_flipblock
	                        break
	                    case 3:
	                        switch global.bg_level
	                        {
	                            case "castle":
	                                sprite_index = spr_NSMBU_block_dark
	                                break
	                            case "ghost":
	                                sprite_index = spr_NSMBU_block_night
	                                break
	                            case "underground":
	                                sprite_index = spr_NSMBU_block_night
	                                break
								case "mountain":
									if (global.modo_noche == 1)
									{
										sprite_index = spr_NSMBU_block_dark
										break
									}
									else
										sprite_index = spr_NSMBU_block
										break
	                            default:
	                                if (global.modo_noche == 1)
	                                {
	                                    sprite_index = spr_NSMBU_block_night
	                                    break
	                                }
	                                else
	                                    sprite_index = spr_NSMBU_block
	                        }

	                        image_speed = 0.2
	                        break
	                }

	                sprout = other.sprout
	                progresivo = other.progresivo
	                wings = other.wings
	            }
	        }
	    }
	}
	global.instance_deactivate = 1



}
