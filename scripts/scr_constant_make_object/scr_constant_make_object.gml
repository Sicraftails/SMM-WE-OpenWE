function scr_constant_make_object(argument0, argument1, argument2) {
	if (argument2 == -78 || argument2 == -29 || argument2 == -82 || argument2 == -43)
	{
	    switch global.apariencia
	    {
	        case 0:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case 1:
	            return instance_create(argument0, argument1, obj_frogsuit);
	        case 2:
	            return instance_create(argument0, argument1, obj_pballon);
	        case 3:
	            return instance_create(argument0, argument1, obj_superarcon);
	    }

	}
	else if (argument2 == -85)
	    {
	        switch global.apariencia
	        {
	            case 0:
	                return instance_create(argument0, argument1, obj_link);
	            case 1:
	                return instance_create(argument0, argument1, obj_frogsuit);
	            case 2:
	                return instance_create(argument0, argument1, obj_pballon);
	            case 3:
	                return instance_create(argument0, argument1, obj_superarcon);
	        }

	    }
	else if (argument2 == -80)
	    {
	        switch global.apariencia
	        {
	            case 0:
	                return instance_create(argument0, argument1, obj_SMB2_mushroom);
	            case 1:
	                return instance_create(argument0, argument1, obj_frogsuit);
	            case 2:
	                return instance_create(argument0, argument1, obj_pballon);
	            case 3:
	                return instance_create(argument0, argument1, obj_superarcon);
	        }

	    }
	else if (argument2 == -46 || argument2 == -38)
	{
	    switch global.apariencia
	    {
	        case 0:
	            return instance_create(argument0, argument1, obj_hen_mushroom);
	        case 1:
	            return instance_create(argument0, argument1, obj_hammersuit);
	        case 2:
	            return instance_create(argument0, argument1, obj_pballon);
	        case 3:
	            return instance_create(argument0, argument1, obj_penguin_suit);
	    }

	}
	else if (argument2 == -77 || argument2 == 3 || argument2 == -39 || argument2 == -30)
	{
	    switch global.apariencia
	    {
	        case 0:
	            return instance_create(argument0, argument1, obj_megamushroom);
	        case 1:
	            return instance_create(argument0, argument1, obj_cap);
	        case 2:
	            return instance_create(argument0, argument1, obj_cap);
	        case 3:
	            return instance_create(argument0, argument1, obj_propellershroom);
	    }

	}
	else
	{
	    switch argument2
	    {
	        case 1:
	            return instance_create(argument0, argument1, obj_mushroom);
	        case 2:
	            return instance_create(argument0, argument1, obj_fireflower);
	        case -50:
	            if (global.apariencia == 0)
	                return instance_create(argument0, argument1, obj_superflower);
	            else
	                return instance_create(argument0, argument1, obj_fireflower);
	            break
	        case -21:
	            return instance_create(argument0, argument1, obj_star);
	        case -18:
	            return instance_create(argument0, argument1, obj_1up);
	        case -81:
	            return instance_create(argument0, argument1, obj_shell_drybones);
	        case -74:
	            return instance_create(argument0, argument1, obj_egg);
	        case -75:
	            return instance_create(argument0, argument1, obj_egg_red);
	        case -22:
	            return instance_create(argument0, argument1, obj_key_appear);
	        case -76:
	            return instance_create(argument0, argument1, obj_pink_coin);
	        case -55:
	            return instance_create(argument0, argument1, obj_galoomba);
	        case -56:
	            return instance_create(argument0, argument1, obj_galoomba2);
	        case -31:
	            return instance_create(argument0, argument1, obj_koopa);
	        case -90:
	            return instance_create(argument0, argument1, obj_koopa_b);
	        case -32:
	            return instance_create(argument0, argument1, obj_koopa_red);
	        case -91:
	            return instance_create(argument0, argument1, obj_koopa_red_b);
	        case -57:
	            return instance_create(argument0, argument1, obj_bobomb);
	        case -58:
	            return instance_create(argument0, argument1, obj_bobomb_ready);
	        case -34:
	            return instance_create(argument0, argument1, obj_buzzybeetle);
	        case -33:
	            return instance_create(argument0, argument1, obj_spiny);
	        case -59:
	            return instance_create(argument0, argument1, obj_hammerbro);
	        case -72:
	            return instance_create(argument0, argument1, obj_sledgebro);
	        case -63:
	            return instance_create(argument0, argument1, obj_jumppiranha);
	        case -71:
	            return instance_create(argument0, argument1, obj_plant_fire);
	        case -64:
	            return instance_create(argument0, argument1, obj_drybones);
	        case -73:
	            return instance_create(argument0, argument1, obj_podoboo);
	        case -54:
	            return instance_create(argument0, argument1, obj_cheepcheep);
	        case -79:
	            return instance_create(argument0, argument1, obj_cheepcheep2);
	        case -62:
	            return instance_create(argument0, argument1, obj_monty_chase);
	        case -61:
	            return instance_create(argument0, argument1, obj_muncher);
	        case -60:
	            return instance_create(argument0, argument1, obj_boo);
	        case -25:
	            return instance_create(argument0, argument1, obj_pswitch);
	        case -65:
	            return instance_create(argument0, argument1, obj_block_pow_hold);
	        case -23:
	            return instance_create(argument0, argument1, obj_spring);
	        case -66:
	            return instance_create(argument0, argument1, obj_spring_land);
	        case -67:
	            return instance_create(argument0, argument1, obj_clown);
	        case -68:
	            return instance_create(argument0, argument1, obj_clown_fire);
	        case -69:
	            return instance_create(argument0, argument1, obj_shell_empty);
	        case -70:
	            return instance_create(argument0, argument1, obj_spiny_empty);
	        case -106:
	            return instance_create(argument0, argument1, obj_waddlewing);
	    }

	}



}
