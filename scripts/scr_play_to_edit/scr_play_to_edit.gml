function scr_play_to_edit() {
	if instance_exists(obj_flagpole)
	{
	    with (obj_flagpole)
	        instance_destroy()
	}
	if instance_exists(obj_SMB_castle)
	{
	    with (obj_SMB_castle)
	        instance_destroy()
	}
	if instance_exists(obj_goalcard)
	{
	    with (obj_goalcard)
	        instance_destroy()
	}
	if instance_exists(obj_goalgate)
	{
	    with (obj_goalgate)
	        instance_destroy()
	}
	if instance_exists(obj_axe_smw)
	{
	    with (obj_axe_smw)
	        instance_destroy()
	}
	if instance_exists(obj_crystalorb)
	{
	    with (obj_crystalorb)
	        instance_destroy()
	}
	if instance_exists(obj_hawmask)
	{
	    with (obj_hawmask)
	        instance_destroy()
	}
	if instance_exists(obj_block_rock)
	{
	    with (obj_block_rock)
	    {
	        instance_destroy()
	        instance_activate_object(obj_rock_res)
	    }
	}
	if instance_exists(obj_block_ice)
	{
	    with (obj_block_ice)
	    {
	        instance_destroy()
	        instance_activate_object(obj_ice_res)
	    }
	}
	if instance_exists(obj_pinchos)
	{
	    with (obj_pinchos)
	    {
	        instance_destroy()
	        instance_activate_object(obj_pinchos_res)
	    }
	}
	if instance_exists(obj_onoffblock)
	{
	    with (obj_onoffblock)
	    {
	        instance_destroy()
	        instance_activate_object(obj_onoffblock_res)
	    }
	}
	if instance_exists(obj_onoffplatform)
	{
	    with (obj_onoffplatform)
	    {
	        instance_destroy()
	        instance_activate_object(obj_onoffplatform_res)
	    }
	}
	if instance_exists(obj_onoffplatform_blue)
	{
	    with (obj_onoffplatform_blue)
	    {
	        instance_destroy()
	        instance_activate_object(obj_onoffplatform_blue_res)
	    }
	}
	if instance_exists(obj_coin)
	{
	    with (obj_coin)
	    {
	        instance_destroy()
	        instance_activate_object(obj_coin_res)
	    }
	}
	if instance_exists(obj_torbellino)
	{
	    with (obj_torbellino)
	    {
	        instance_destroy()
	        instance_activate_object(obj_torbellino_res)
	    }
	}
	if instance_exists(obj_meteorites)
	{
		with (obj_meteorites)
		{
			instance_destroy()
		}
	}
	if instance_exists(obj_meteorites_big)
	{
		with (obj_meteorites_big)
		{
			instance_destroy()
		}
	}
	if instance_exists(obj_meteorites_maker)
	{
		with (obj_meteorites_maker)
		{
			instance_destroy()
		}
	}
	/*
	if instance_exists(obj_audio_control)
	{
		with (obj_audio_control)
		{
			instance_destroy()
		}
	}
	/**/
	if instance_exists(obj_pswitch)
	{
	    with (obj_pswitch)
	    {
	        instance_destroy()
	        instance_activate_object(obj_pswitch_res)
	    }
	}
	if instance_exists(obj_block_pow_hold)
	{
	    with (obj_block_pow_hold)
	    {
	        instance_destroy()
	        instance_activate_object(obj_pow_res)
	    }
	}
	if instance_exists(obj_key)
	{
	    with (obj_key)
	    {
	        instance_destroy()
	        instance_activate_object(obj_key_res)
	    }
	}
	if instance_exists(obj_galoomba)
	{
	    with (obj_galoomba)
	    {
	        instance_destroy()
	        instance_activate_object(obj_goomba_res)
	    }
	}
	if instance_exists(obj_galoomba_b)
	{
	    with (obj_galoomba_b)
	    {
	        instance_destroy()
	        instance_activate_object(obj_goomba_b_res)
	    }
	}
	if instance_exists(obj_galoomba2_b)
	{
	    with (obj_galoomba2_b)
	    {
	        instance_destroy()
	        instance_activate_object(obj_goombrat_b_res)
	    }
	}
	if instance_exists(obj_galoomba2)
	{
	    with (obj_galoomba2)
	    {
	        instance_destroy()
	        instance_activate_object(obj_goombrat_res)
	    }
	}
	if instance_exists(obj_waddlewing)
	{
	    with (obj_waddlewing)
	    {
	        instance_destroy()
	        instance_activate_object(obj_waddlewing_res)
	    }
	}
	if instance_exists(obj_koopa)
	{
	    with (obj_koopa)
	    {
	        instance_destroy()
	        instance_activate_object(obj_koopa_res)
	    }
	}
	if instance_exists(obj_monty_chase)
	{
	    with (obj_monty_chase)
	    {
	        instance_destroy()
	        instance_activate_object(obj_monty_res)
	    }
	}
	if instance_exists(obj_buzzybeetle)
	{
	    with (obj_buzzybeetle)
	    {
	        instance_destroy()
	        instance_activate_object(obj_buzzybeetle_res)
	    }
	}
	if instance_exists(obj_chain_chomp_free)
	{
	    with (obj_chain_chomp_free)
	    {
	        instance_destroy()
	        instance_activate_object(obj_chomp_res)
	    }
	}
	if instance_exists(obj_jumppiranha)
	{
	    with (obj_jumppiranha)
	    {
	        instance_destroy()
	        instance_activate_object(obj_pplant_res)
	    }
	}
	if instance_exists(obj_big_pplant)
	{
	    with (obj_big_pplant)
	    {
	        instance_destroy()
	        instance_activate_object(obj_big_pplant_res)
	    }
	}
	if instance_exists(obj_big_pplant_b)
	{
	    with (obj_big_pplant_b)
	    {
	        instance_destroy()
	        instance_activate_object(obj_big_pplant_b_res)
	    }
	}
	if instance_exists(obj_plant_fire)
	{
	    with (obj_plant_fire)
	    {
	        instance_destroy()
	        instance_activate_object(obj_plant_fire_res)
	    }
	}
	if instance_exists(obj_spike)
	{
	    with (obj_spike)
	    {
	        instance_destroy()
	        instance_activate_object(obj_spike_res)
	    }
	}
	if instance_exists(obj_muncher)
	{
	    with (obj_muncher)
	    {
	        instance_destroy()
	        instance_activate_object(obj_muncher_res)
	    }
	}
	if instance_exists(obj_spiny)
	{
	    with (obj_spiny)
	    {
	        instance_destroy()
	        instance_activate_object(obj_spiny_res)
	    }
	}
	if instance_exists(obj_hammerbro)
	{
	    with (obj_hammerbro)
	    {
	        instance_destroy()
	        instance_activate_object(obj_hammerbro_res)
	    }
	}
	if instance_exists(obj_icebro)
	{
	    with (obj_icebro)
	    {
	        instance_destroy()
	        instance_activate_object(obj_icebro_res)
	    }
	}
	if instance_exists(obj_boomerangbro)
	{
	    with (obj_boomerangbro)
	    {
	        instance_destroy()
	        instance_activate_object(obj_boomerangbro_res)
	    }
	}
	if instance_exists(obj_firebro)
	{
	    with (obj_firebro)
	    {
	        instance_destroy()
	        instance_activate_object(obj_firebro_res)
	    }
	}
	if instance_exists(obj_thwomp)
	{
	    with (obj_thwomp)
	    {
	        instance_destroy()
	        instance_activate_object(obj_thwomp_res)
	    }
	}
	if instance_exists(obj_thwomp_b)
	{
	    with (obj_thwomp_b)
	    {
	        instance_destroy()
	        instance_activate_object(obj_thwomp_b_res)
	    }
	}
	if instance_exists(obj_podoboo)
	{
	    with (obj_podoboo)
	    {
	        instance_destroy()
	        instance_activate_object(obj_podoboo_res)
	    }
	}
	if instance_exists(obj_clown)
	{
	    with (obj_clown)
	    {
	        instance_destroy()
	        instance_activate_object(obj_clown_res)
	    }
	}
	if instance_exists(obj_rails_res)
	{
	    with (obj_rails)
	    {
	        instance_destroy()
	        instance_activate_object(obj_rails_res)
	    }
	}
	if instance_exists(obj_banzaibill)
	{
	    with (obj_banzaibill)
	    {
	        instance_destroy()
	        instance_activate_object(obj_billbanzai_res)
	    }
	}
	if instance_exists(obj_bobomb)
	{
	    with (obj_bobomb)
	    {
	        instance_destroy()
	        instance_activate_object(obj_bobomb_res)
	    }
	}
	if instance_exists(obj_boo)
	{
	    with (obj_boo)
	    {
	        instance_destroy()
	        instance_activate_object(obj_boo_res)
	    }
	}
	if instance_exists(obj_egg)
	{
	    with (obj_egg)
	    {
	        instance_destroy()
	        instance_activate_object(obj_egg_res)
	    }
	}
	if instance_exists(obj_egg_blue)
	{
	    with (obj_egg_blue)
	    {
	        instance_destroy()
	        instance_activate_object(obj_egg_res)
	    }
	}
	if instance_exists(obj_1up)
	{
	    with (obj_1up)
	    {
	        instance_destroy()
	        instance_activate_object(obj_1up_res)
	    }
	}
	if instance_exists(obj_mushroom)
	{
	    with (obj_mushroom)
	    {
	        instance_destroy()
	        instance_activate_object(obj_mushroom_res)
	    }
	}
	if instance_exists(obj_SMB2_mushroom)
	{
	    with (obj_SMB2_mushroom)
	    {
	        instance_destroy()
	        instance_activate_object(obj_SMB2_mushroom_res)
	    }
	}
	if instance_exists(obj_link)
	{
	    with (obj_link)
	    {
	        instance_destroy()
	        instance_activate_object(obj_link_res)
	    }
	}
	if instance_exists(obj_fireflower)
	{
	    with (obj_fireflower)
	    {
	        instance_destroy()
	        instance_activate_object(obj_fireflower_res)
	    }
	}
	if instance_exists(obj_superflower)
	{
	    with (obj_superflower)
	    {
	        instance_destroy()
	        instance_activate_object(obj_superflower_res)
	    }
	}
	if instance_exists(obj_cap)
	{
	    with (obj_cap)
	    {
	        instance_destroy()
	        instance_activate_object(obj_cap_res)
	    }
	}
	if instance_exists(obj_spring)
	{
	    with (obj_spring)
	    {
	        instance_destroy()
	        instance_activate_object(obj_spring_res)
	    }
	}
	if instance_exists(obj_nube)
	{
	    with (obj_nube)
	    {
	        instance_destroy()
	        instance_activate_object(obj_nube_res)
	    }
	}
	if instance_exists(obj_noteblock)
	{
	    with (obj_noteblock)
	    {
	        instance_destroy()
	        instance_activate_object(obj_noteblock_res)
	    }
	}
	if instance_exists(obj_block)
	{
	    with (obj_block)
	    {
	        instance_destroy()
	        instance_activate_object(obj_block_res)
	        instance_activate_object(obj_qblock_res)
	    }
	}
	if instance_exists(obj_flipblock)
	{
	    with (obj_flipblock)
	    {
	        instance_destroy()
	        instance_activate_object(obj_block_res)
	    }
	}
	if instance_exists(obj_block_multicoin)
	{
	    with (obj_block_multicoin)
	    {
	        instance_destroy()
	        instance_activate_object(obj_block_res)
	        instance_activate_object(obj_qblock_res)
	    }
	}
	if instance_exists(obj_grinder)
	{
	    with (obj_grinder)
	    {
	        instance_destroy()
	        instance_activate_object(obj_grinder_res)
	    }
	}
	if instance_exists(obj_bumper)
	{
	    with (obj_bumper)
	    {
	        instance_destroy()
	        instance_activate_object(obj_bumper_res)
	    }
	}
	global.instance_deactivate = 1



}
