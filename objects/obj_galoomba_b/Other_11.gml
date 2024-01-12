if (wings == 1)
{
    if (global.apariencia == 3)
    {
        with (instance_create((x + (9 * direct)), (y + 8), obj_wings_dead_b))
            direct = other.direct
    }
    else
    {
        with (instance_create((x + 9), (y + 8),  obj_wings_dead_b))
            direct = -1*2
        with (instance_create((x - 11), (y + 8),  obj_wings_dead_b))
        {
            sprite_index = spr_wings_dead2
            direct = -1*2
        }
    }
    hspeed = 0
    alarm[10] = 2
    wings = 0
}
else{
if (global.apariencia == 2)
{
            with (instance_create(x, y, obj_galoomba_hold_b))
            {
				
                key = other.key
                direct = other.direct
            }
            key = 0
    if (key == 1 && global.apariencia != 2)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
        key = 0
    }
    instance_destroy()
}
else if (global.apariencia != 2)
{
    with (instance_create_depth(x -32, y - 32, -2, obj_smoke_goomba)) {
	if (global.apariencia != 3)
	{
	direct = direct*2
	image_xscale = 2;
	image_yscale = 2;
	}
	else{
	direct = direct*2
	image_xscale = 2;
	image_yscale = 2;
	}
	}
	audio_stop_sound(goomba_stomped);
    audio_play_sound(goomba_stomped, 0, false);
	with (instance_create_depth(x+24, y, 0, obj_galoomba)) { vspeed = -3; hspeed = 0.5; }
	with (instance_create_depth(x-24, y, 0, obj_galoomba)) { vspeed = -3; hspeed = -0.5; }
}
instance_destroy()
}
