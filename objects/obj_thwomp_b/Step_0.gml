var pow, ground_block, rock_block, spd;
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (collision_rectangle(bbox_left, (bbox_top + 2), bbox_right, (bbox_bottom - 1), obj_lava_water, 0, 0) && global.apariencia != 0)
{
    if (salpi == 0)
    {
        salpicadura = 1
        salpi = 1
        alarm[1] = 1
    }
}
else
{
    salpi = 0
    salpicadura = 0
}
switch direct_t
{
    case 1:
        if (ready < 2)
            event_user(4)
        if (ready == 0 && instance_exists(obj_mario) && obj_mario.x > (bbox_left - 16) && obj_mario.x < (bbox_right + 16) && y < (obj_mario.y + 9))
        {
            if (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_spring, 0, 0))
            {
                vspeed = -1.5
                ready = 1
            }
            else
                ready = 1
        }
        else if (ready == 1)
        {
		if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_spring, 0, 0)) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_nube, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_blockparent, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_rock, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0))))
        {
            if (gravity == 0)
            {
                audio_stop_sound(scr_snd_thwomp())
                audio_play_sound(scr_snd_thwomp(), 0, false)
                init_shake(1)
                groundpount_cont = 4
                vspeed = 0
                ready = 2
                if (global.apariencia == 3)
                {
                    with (instance_create(x, bbox_bottom, obj_smoke))
                    {
                        sprite_index = spr_NSMBU_smoke_thwomp
                        depth = -3
                    }
                }
                else
                {
                    instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
                    instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
                }
                alarm[0] = 60
            }
		}
		else
		{
		if (gravity == 0)
		{
			audio_stop_sound(scr_snd_thwomp())
            audio_play_sound(scr_snd_thwomp(), 0, false)
			groundpount_cont = 4
		}
		}
        }
        else if (ready == 3)
        {
            if (collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_solid, 0, 0) || collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_onewaygate_bottom, 0, 0))
            {
                ready = 0
                groundpount_cont = 0
                vspeed = 0
                ystart = y
                y = ystart
            }
            else if (y < (ystart + 1))
            {
                ready = 0
                groundpount_cont = 0
                vspeed = 0
                y = ystart
            }
        }
        if (groundpount_cont > 0)
        {
            groundpount_cont--
            pow = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_block_pow_hold, 0, 0)
            if pow
            {
                with (pow)
                {
                    explode = 1
                    event_user(6)
                }
            }
            ground_block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, 0, 0)
			rock_block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_rockparent, 0, 0)
            if (ground_block && ground_block.object_index != obj_noteblock && ground_block.object_index != obj_musicblock && ground_block.object_index != obj_noteblock_s && ground_block.ready == 0)
            {
                if (ground_block.object_index == obj_flipblock)
                {
                    with (ground_block)
                        alarm[2] = 1
                }
                else
                {
                    with (ground_block)
                        event_user(3)
                }
            }
			if rock_block
            {
                    with (rock_block)
                        alarm[0] = 1
            }
        }
        break
    case 2:
        event_user(3)
        if (ready == 0 && instance_exists(obj_mario) && obj_mario.x < (bbox_left + 2) && obj_mario.x > (bbox_left - 56) && obj_mario.y > (bbox_top - 20) && obj_mario.y < (bbox_bottom - 4))
            ready = 1
        else if (ready == 1)
        {
			if ((collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_solid, 0, 0)  || collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_onewaygate_right, 0, 0)) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_blockparent, 0, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_rock, 0, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_ice, 0, 0))))
            {
                audio_stop_sound(scr_snd_thwomp())
                audio_play_sound(scr_snd_thwomp(), 0, false)
                init_shake(1)
                groundpount_cont = 4
                ready = 2
                hspeed = 0
                instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
                instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
                alarm[0] = 60
            }
			else if (((collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_blockparent, 0, 0))) or ((collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_rock, 0, 0))) or ((collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_ice, 0, 0))))
			{
				audio_stop_sound(scr_snd_thwomp())
				audio_play_sound(scr_snd_thwomp(), 0, false)
				groundpount_cont = 4
			}
            else
            {
                hspeed -= 0.05
                spd = (3 - (1.5 * swimming))
                if (hspeed < (-spd))
                    hspeed = (-spd)
            }
        }
        else if (ready == 3)
        {
            if (collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_onewaygate_left, 0, 0))
            {
                ready = 0
                hspeed = 0
                xstart = x
                x = xstart
            }
            else if (x > (xstart + 1))
            {
                ready = 0
                hspeed = 0
                x = xstart
            }
        }
        if (groundpount_cont > 0)
        {
            groundpount_cont--
            ground_block = collision_rectangle(((bbox_left + hspeed) - 2), bbox_top, bbox_left, bbox_bottom, obj_blockparent, 0, 0)
			rock_block = collision_rectangle(((bbox_left + hspeed) - 2), bbox_top, bbox_left, bbox_bottom, obj_rockparent, 0, 0)
            if (ground_block && ground_block.ready == 0)
            {
                if (ground_block.object_index == obj_flipblock)
                {
                    with (ground_block)
                        alarm[2] = 1
                }
                else
                {
                    with (ground_block)
					{
						event_user(15)
					}
                }
            }
			if rock_block
            {
                    with (rock_block)
                        alarm[0] = 1
            }
        }
        break
    case 3:
        event_user(3)
        if (ready == 0 && instance_exists(obj_mario) && obj_mario.x > (bbox_right - 2) && obj_mario.x < (bbox_right + 56) && obj_mario.y > (bbox_top - 20) && obj_mario.y < (bbox_bottom - 4))
            ready = 1
        else if (ready == 1)
        {
            if ((collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_solid, 0, 0) ||  collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), bbox_bottom, obj_onewaygate_left, 0, 0)) && (!(collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_blockparent, 0, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_rock, 0, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_ice, 0, 0))))
            {
                audio_stop_sound(scr_snd_thwomp())
                audio_play_sound(scr_snd_thwomp(), 0, false)
                init_shake(1)
                groundpount_cont = 4
                ready = 2
                hspeed = 0
                instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
                instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
                alarm[0] = 60
            }
			else if ((collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_blockparent, 0, 0))) or ((collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_rock, 0, 0))) or ((collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_ice, 0, 0)))
			{
				audio_stop_sound(scr_snd_thwomp())
                audio_play_sound(scr_snd_thwomp(), 0, false)
                groundpount_cont = 4
			}
            else
            {
                hspeed += 0.05
                spd = (3 - (1.5 * swimming))
                if (hspeed > spd)
                    hspeed = spd
            }
        }
        else if (ready == 3)
        {
            if (collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_solid, 0, 0) || collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_physicssolid, 0, 0) || collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle((bbox_left - 1), bbox_top, bbox_left, bbox_bottom, obj_onewaygate_right, 0, 0))
            {
                ready = 0
                hspeed = 0
                xstart = x
                x = xstart
            }
            else if (x < (xstart - 1))
            {
                ready = 0
                hspeed = 0
                x = xstart
            }
        }
        if (groundpount_cont > 0)
        {
            groundpount_cont--
            ground_block = collision_rectangle(bbox_right, bbox_top, ((bbox_right + hspeed) + 2), bbox_bottom, obj_blockparent, 0, 0)
			rock_block = collision_rectangle(bbox_right, bbox_top, ((bbox_right + hspeed) + 2), bbox_bottom, obj_rockparent, 0, 0)
            if (ground_block && ground_block.ready == 0)
            {
                if (ground_block.object_index == obj_flipblock)
                {
                    with (ground_block)
                        alarm[2] = 1
                }
                else
                {
                    with (ground_block)
                        event_user(2)
                }
            }
			if rock_block
            {
                    with (rock_block)
                        alarm[0] = 1
            }
			
        }
        break
}


