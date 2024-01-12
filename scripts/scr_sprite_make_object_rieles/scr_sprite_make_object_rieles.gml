function scr_sprite_make_object_rieles(argument0, argument1, argument2) {
	if (global.apariencia == 0)
	{
	    switch argument2
	    {
	        case spr_SMB_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_goomba_res:
	            return instance_create(argument0, argument1, obj_galoomba);
			case spr_SMB2_mushroom:
	            return instance_create(argument0, argument1, obj_SMB2_mushroom);
	        case spr_SMB_fireflower:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case spr_SMB_megamushroom:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_superflower:
	            return instance_create(argument0, argument1, obj_superflower);
	        case spr_SMB_link:
	            return instance_create(argument0, argument1, obj_link);
	        case spr_SMB_hen_mushroom:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case spr_NSMBU_superacorn:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case spr_leaf:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_shell_drybones:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case spr_cap:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_1up:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_rotten_b:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_SMB_star:
	            return instance_create(argument0, argument1, obj_star);
	        case spr_SMB_goomba_shoe:
	            return instance_create(argument0, argument1, obj_egg);
	        case spr_SMB_goomba_shoe_red:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case spr_SMB_key:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case spr_SMB_pink_coin:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case spr_SMB_goomba:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_SMB_goomba2:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case spr_SMB_koopa:
	            return instance_create(argument0, argument1, obj_koopa);
	        case spr_SMB_koopa_b:
	            return instance_create(argument0, argument1, obj_koopa_b);
	        case spr_SMB_koopa_red:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case spr_SMB_koopa_red_b:
	            return instance_create(argument0, argument1, obj_koopa_red_b);
	        case spr_SMB_bobomb:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB_bobomb_night:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB_bobomb_ready:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case spr_SMB_buzzybeetle:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB_buzzybeetle_night:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB_spiny:
	            return instance_create(argument0, argument1, obj_spiny);
	        case spr_SMB_hammerbro:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case spr_SMB_sledgebro:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case spr_SMB_pplant:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case spr_SMB_pplant_fire_down:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case spr_SMB_drybones:
	            return instance_create(argument0, argument1, obj_drybones);
	        case spr_SMB_podoboo:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case spr_SMB_cheepcheep:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case spr_SMB_cheepcheep2:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case spr_SMB_montymole:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case spr_SMB_muncher:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB_muncher_night:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB_boo:
	            return instance_create(argument0, argument1, obj_boo);
	        case spr_SMB_pswitch:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case spr_SMB_pow:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case spr_SMB_spring:
	            return instance_create(argument0, argument1, obj_spring);
	        case spr_SMB_spring_land:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case spr_SMB_clown:
	            return instance_create(argument0, argument1, obj_clown);
	        case spr_SMB_clown_fire:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case spr_SMB_shell_empty:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB_shell_empty_night:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB_shell_empty_spiny:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	    }
    
	}
	else if (global.apariencia == 1)
	{
	    switch argument2
	    {
	        case spr_SMB3_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_goomba_res:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_SMB3_fireflower:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case spr_leaf:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_cap:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_NSMBU_superacorn:
	            return instance_create(argument0, argument1, obj_frogsuit);
	        case spr_SMB_megamushroom:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_SMB2_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_frogsuit:
	            return instance_create(argument0, argument1, obj_frogsuit);
	        case spr_SMB3_hammersuit:
	            return instance_create(argument0, argument1, obj_hammersuit);
	        case spr_SMB3_shell_drybones:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case spr_SMB3_1up:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_rotten_b:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_SMB3_star:
	            return instance_create(argument0, argument1, obj_star);
	        case spr_SMB3_goomba_shoe:
	            return instance_create(argument0, argument1, obj_egg);
	        case spr_SMB3_goomba_shoe_red:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case spr_SMB3_key:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case spr_SMB3_pink_coin:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case spr_SMB3_goomba:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_SMB3_goomba2:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case spr_SMB3_koopa:
	            return instance_create(argument0, argument1, obj_koopa);
	        case spr_SMB3_koopa_b:
	            return instance_create(argument0, argument1, obj_koopa_b);
	        case spr_SMB3_koopa_red:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case spr_SMB3_koopa_red_b:
	            return instance_create(argument0, argument1, obj_koopa_red_b);
	        case spr_SMB3_bobomb:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB3_bobomb_night:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB3_bobomb_ready:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case spr_SMB3_buzzybeetle:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB3_buzzybeetle_night:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB3_spiny:
	            return instance_create(argument0, argument1, obj_spiny);
	        case spr_SMB3_hammerbro:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case spr_SMB3_sledgebro:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case spr_SMB3_pplant:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case spr_SMB3_pplant_fire_down:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case spr_SMB3_drybones:
	            return instance_create(argument0, argument1, obj_drybones);
	        case spr_SMB3_podoboo:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case spr_SMB3_cheepcheep:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case spr_SMB3_cheepcheep2:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case spr_SMB3_montymole:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case spr_SMB3_muncher:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB3_muncher_night:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB3_boo:
	            return instance_create(argument0, argument1, obj_boo);
	        case spr_SMB3_pswitch:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case spr_SMB3_pow:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case spr_SMB3_spring:
	            return instance_create(argument0, argument1, obj_spring);
	        case spr_SMB3_spring_land:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case spr_SMB3_clown:
	            return instance_create(argument0, argument1, obj_clown);
	        case spr_SMB3_clown_fire:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case spr_SMB3_shell_empty:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB3_shell_empty_night:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB3_shell_spiny_empty:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	    }
    
	}
	else if (global.apariencia == 2)
	{
	    switch argument2
	    {
	        case spr_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_goomba_res:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_fireflower:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case spr_leaf:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_cap:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_pballon:
	            return instance_create(argument0, argument1, obj_pballon);
	        case spr_NSMBU_superacorn:
	            return instance_create(argument0, argument1, obj_pballon);
	        case spr_SMB_megamushroom:
	            return instance_create(argument0, argument1, obj_cap);
	        case spr_SMB2_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_shell_drybones:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case spr_1up:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_rotten_b:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_star:
	            return instance_create(argument0, argument1, obj_star);
	        case spr_egg:
	            return instance_create(argument0, argument1, obj_egg);
	        case spr_egg_red:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case spr_key:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case spr_pink_coin:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case spr_galoomba:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_galoomba2:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case spr_koopa:
	            return instance_create(argument0, argument1, obj_koopa);
	        case spr_koopa_b:
	            return instance_create(argument0, argument1, obj_koopa_b);
	        case spr_koopa_red:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case spr_koopa_red_b:
	            return instance_create(argument0, argument1, obj_koopa_red_b);
	        case spr_bobomb:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_bobomb_ready:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case spr_buzzybeetle:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_spiny:
	            return instance_create(argument0, argument1, obj_spiny);
	        case spr_hammerbro:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case spr_sledgebro:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case spr_jumppiranha:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case spr_pplant_fire_down:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case spr_drybones:
	            return instance_create(argument0, argument1, obj_drybones);
	        case spr_podoboo:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case spr_cheepcheep:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case spr_cheepcheep2:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case spr_montymole:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case spr_muncher:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_boo:
	            return instance_create(argument0, argument1, obj_boo);
	        case spr_pswitch:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case spr_block_pow:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case spr_spring:
	            return instance_create(argument0, argument1, obj_spring);
	        case spr_spring_land:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case spr_clown:
	            return instance_create(argument0, argument1, obj_clown);
	        case spr_clown_fire:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case spr_shell_buzzy_empty:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_shell_spiny_empty:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	    }
    
	}
	else if (global.apariencia == 3)
	{
	    switch argument2
	    {
	        case spr_NSMBU_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_goomba_res:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_NSMBU_fireflower:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case spr_leaf:
	            return instance_create(argument0, argument1, obj_propellershroom);
	        case spr_cap:
	            return instance_create(argument0, argument1, obj_propellershroom);
	        case spr_NSMBU_champicoptero:
	            return instance_create(argument0, argument1, obj_propellershroom);
	        case spr_SMB_megamushroom:
	            return instance_create(argument0, argument1, obj_propellershroom);
	        case spr_NSMBU_penguin:
	            return instance_create(argument0, argument1, obj_penguin_suit);
	        case spr_NSMBU_superacorn:
	            return instance_create(argument0, argument1, obj_superarcon);
	        case spr_SMB2_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_NSMBU_shell_drybones:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case spr_NSMBU_1up:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_rotten_b:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_NSMBU_star:
	            return instance_create(argument0, argument1, obj_star);
	        case spr_NSMBU_egg:
	            return instance_create(argument0, argument1, obj_egg);
	        case spr_egg_red:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case spr_NSMBU_key:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case spr_NSMBU_pink_coin:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case spr_NSMBU_goomba:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_NSMBU_goombrat:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case spr_NSMBU_koopa:
	            return instance_create(argument0, argument1, obj_koopa);
	        case spr_NSMBU_koopa_b:
	            return instance_create(argument0, argument1, obj_koopa_b);
	        case spr_NSMBU_koopa_red:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case spr_NSMBU_koopa_red_b:
	            return instance_create(argument0, argument1, obj_koopa_red_b);
	        case spr_NSMBU_bobomb:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_NSMBU_bobomb_ready:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case spr_NSMBU_buzzybeetle:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_NSMBU_spiny:
	            return instance_create(argument0, argument1, obj_spiny);
	        case spr_NSMBU_hammerbro:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case spr_NSMBU_sledgebro:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case spr_NSMBU_pplant:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case spr_NSMBU_pplant_fire_down:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case spr_NSMBU_drybones:
	            return instance_create(argument0, argument1, obj_drybones);
	        case spr_NSMBU_podoboo:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case spr_NSMBU_cheepcheep:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case spr_NSMBU_cheepcheep2:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case spr_NSMBU_montymole:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case spr_NSMBU_muncher:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_NSMBU_boo_overworld:
	            return instance_create(argument0, argument1, obj_boo);
	        case spr_NSMBU_pswitch:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case spr_NSMBU_pow:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case spr_NSMBU_spring:
	            return instance_create(argument0, argument1, obj_spring);
	        case spr_NSMBU_spring_land:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case spr_NSMBU_clown:
	            return instance_create(argument0, argument1, obj_clown);
	        case spr_NSMBU_clown_fire:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case spr_NSMBU_shell_buzzy_empty:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_NSMBU_shell_spiny_empty:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	    }
    
	}

	else if (global.apariencia == 4)
	{
	    switch argument2
	    {
	        case spr_SMB2_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_SMB_fireflower:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case spr_SMB_megamushroom:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_superflower:
	            return instance_create(argument0, argument1, obj_superflower);
	        case spr_SMB_link:
	            return instance_create(argument0, argument1, obj_link);
	        case spr_SMB_hen_mushroom:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case spr_NSMBU_superacorn:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case spr_SMB_mushroom:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case spr_leaf:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_shell_drybones:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case spr_cap:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case spr_SMB_1up:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_rotten_b:
	            return instance_create(argument0, argument1, obj_1up);
	        case spr_SMB_star:
	            return instance_create(argument0, argument1, obj_star);
	        case spr_SMB_goomba_shoe:
	            return instance_create(argument0, argument1, obj_egg);
	        case spr_SMB_goomba_shoe_red:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case spr_SMB_key:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case spr_SMB_pink_coin:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case spr_SMB_goomba:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case spr_SMB_goomba2:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case spr_SMB_koopa:
	            return instance_create(argument0, argument1, obj_koopa);
	        case spr_SMB_koopa_red:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case spr_SMB_bobomb:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB_bobomb_night:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case spr_SMB_bobomb_ready:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case spr_SMB_buzzybeetle:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB_buzzybeetle_night:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case spr_SMB_spiny:
	            return instance_create(argument0, argument1, obj_spiny);
	        case spr_SMB_hammerbro:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case spr_SMB_sledgebro:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case spr_SMB_pplant:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case spr_SMB_pplant_fire_down:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case spr_SMB_drybones:
	            return instance_create(argument0, argument1, obj_drybones);
	        case spr_SMB_podoboo:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case spr_SMB_cheepcheep:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case spr_SMB_cheepcheep2:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case spr_SMB_montymole:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case spr_SMB_muncher:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB_muncher_night:
	            return instance_create(argument0, argument1, obj_muncher);
	        case spr_SMB_boo:
	            return instance_create(argument0, argument1, obj_boo);
	        case spr_SMB_pswitch:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case spr_SMB_pow:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case spr_SMB_spring:
	            return instance_create(argument0, argument1, obj_spring);
	        case spr_SMB_spring_land:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case spr_SMB_clown:
	            return instance_create(argument0, argument1, obj_clown);
	        case spr_SMB_clown_fire:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case spr_SMB_shell_empty:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB_shell_empty_night:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case spr_SMB_shell_empty_spiny:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	    }
    
	}



}
