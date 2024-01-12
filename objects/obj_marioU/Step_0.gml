if (flashAlpha > 0)
    flashAlpha -= 0.03
var pblock = collision_rectangle((bbox_right - 5), (bbox_top + 5), (bbox_left + 5), (bbox_bottom - 5), obj_enabledsolid, 1, 0)
if pblock
{
    speed = 0
    gravity = 0
    state = 0
    isduck = 1
    jumpnow = 0
    canjump = 0
}
else
    canjump = 1
if ((global.modo_noche == 1 && global.bg_level == "snow") || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_ice, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_icecoin, 0, 0)) && global.powerup != -38))
    snow = 1
else
    snow = 0
if ((collision_rectangle(bbox_left, (bbox_bottom - 5), bbox_right, (bbox_bottom + 5), obj_platform_parent, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 5), bbox_right, (bbox_bottom + 5), obj_block_pow_hold, 0, 0)) && state < 2)
    platform_m = 1
else
    platform_m = 0
if (walljump == 0 && audio_is_playing(snd_NSMBU_desllizarse_walljump))
    audio_stop_sound(snd_NSMBU_desllizarse_walljump)
if (boostme > 0)
{
    boostme--
    if (abs(hspeed) < hspeedmax)
        boostme = 0
}
if (vspeed >= 0)
{
    var solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    var solidphy = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    var b_drybones = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_lava_water_drybones, 0, 0)
    if (solidtop && bbox_bottom < (solidtop.yprevious + 5) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (solidtop.y - 1), obj_solid, 1, 0))))
    {
        y = (solidtop.y - 32)
        vspeed = 0
        gravity = 0
        event_user(15)
    }
    if (solidphy && bbox_bottom < (solidphy.yprevious + 5) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (solidphy.y - 1), obj_solid, 1, 0))))
    {
        y = (solidphy.y - 32)
        vspeed = 0
        gravity = 0
        event_user(15)
    }
    if (b_drybones && bbox_bottom < (b_drybones.yprevious + 5) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (b_drybones.y - 1), obj_solid, 1, 0))) && (instance_exists(obj_kuribo_drybones) || (global.powerup == -38 && slide == 1)))
    {
        y = (b_drybones.y - 32)
        vspeed = 0
        gravity = 0
        event_user(15)
    }
}
if (stuntime > 0)
{
    stuntime--
    if (stuntime == 0)
    {
        groundpount = 0
        disablecontrols = 0
    }
}
if (isswim == 0)
{
    switch state
    {
        case 3:
            event_user(4)
            break
        default:
            event_user(2)
    }

}
else
{
    switch state
    {
        case 3:
            event_user(4)
            break
        default:
            event_user(3)
    }

}
if (new_swim == 0 && audio_is_playing(snd_NSMBU_swim2))
    audio_stop_sound(snd_NSMBU_swim2)
if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0)
{
    if (hspeed > 0)
        hspeed = 0
    while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_solid, 0, 0))))
        x--
    if collision_rectangle((bbox_left + 4), (bbox_top + 4), (bbox_right + 1), bbox_bottom, obj_pinchos, 0, 0)
        event_user(0)
}
else if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0)
{
    if (hspeed < 0)
        hspeed = 0
    while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_solid, 0, 0))))
        x++
    if collision_rectangle((bbox_left - 1), (bbox_top + 4), (bbox_right - 4), bbox_bottom, obj_pinchos, 0, 0)
        event_user(0)
}
if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_physicssolid, 1, 0)
{
    if (hspeed > 0)
        hspeed = 0
    if ((!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0))))
    {
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_physicssolid, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_physicssolid, 0, 0))))
            x--
    }
    if collision_rectangle((bbox_left + 4), (bbox_top + 4), (bbox_right + 1), bbox_bottom, obj_muncher, 0, 0)
        event_user(0)
}
else if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, 1, 0)
{
    if (hspeed < 0)
        hspeed = 0
    if ((!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 1, 0))))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 4), (bbox_left + 1), (bbox_bottom - 1), obj_physicssolid, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_physicssolid, 0, 0))))
            x++
    }
    if collision_rectangle((bbox_left - 1), (bbox_top + 4), (bbox_right - 4), bbox_bottom, obj_muncher, 0, 0)
        event_user(0)
}
if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 1, 0)
{
    if (hspeed > 0)
        hspeed = 0
    if ((!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0))) && (!(collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0))))
    {
        while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_bullebill_base, 0, 0))))
            x--
    }
}
else if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0)
{
    if (hspeed < 0)
        hspeed = 0
    if ((!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0))) && (!(collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 1, 0))))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_solidphy, 0, 0))))
            x++
    }
}
var col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 1, 0)
var col_one_left = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 1, 0)
if col_one_right
{
    if (hspeed < 0)
    {
        hspeed = 0
        with (col_one_right)
        {
            rot = 1
            event_user(0)
        }
    }
    while (collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_onewaygate_right, 0, 0))))
        x++
}
else if col_one_left
{
    if (hspeed > 0)
    {
        hspeed = 0
        with (col_one_left)
        {
            rot = 1
            event_user(0)
        }
    }
    while (collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_left, 1, 0) && (!(collision_point(x, (bbox_top + 4), obj_onewaygate_left, 0, 0))))
        x--
}
pow = collision_rectangle((bbox_left + 1), (bbox_top - 2), (bbox_right - 1), bbox_top, obj_block_pow_hold, 1, 0)
if (vspeed < 0 && pow && pow.held == 0 && pow.inmune == 0 && (pow.y + 8) < bbox_top)
{
    vspeed = 0
    with (pow)
    {
        explode = 1
        event_user(6)
    }
}
pswitch = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_pswitch, 1, 0)
if (pswitch && pswitch.inmune == 0 && pswitch.inup == 1)
{
    with (pswitch)
        event_user(6)
}
var one_2 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)
//If moving upwards
if (vspeed < 0 
&& (collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0) 
|| collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0) 
|| collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0) 
|| (pswitch && pswitch.held == 0 && (pswitch.y + 16) < bbox_top) 
|| (one_2 && (bbox_top + 5) >= one_2.bbox_bottom))) {
	
	//Prevent the player from getting stuck on a ceiling when jumping/climbing
    if (state > 1 && canjump == 1)
    {
        while collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0)
            y++
    }
	
    vspeed = 0
	
    if (helmet == 0 && (collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_bottom - 2), obj_pinchos, 0, 0) 
	|| collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, (bbox_bottom - 2), obj_muncher, 0, 0)))
        event_user(0)
		
    var col_one_bottom = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)
	
    if col_one_bottom
    {
        with (col_one_bottom)
        {
            rot = 1
            event_user(0)
        }
    }
    else if (!audio_is_playing(scr_snd_bump()))
    {
        audio_stop_sound(scr_jump())
        audio_play_sound(scr_snd_bump(), 0, false)
    }
    var block_col = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_blockparent, 0, 0)
    var rock_parent = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_rockparent, 1, 0)
    if (instance_exists(obj_helmet_spiny) && rock_parent && rock_parent.vspeed == 0)
    {
        with (rock_parent)
            alarm[0] = 1
    }
    if ((instance_exists(obj_helmet_spiny) || global.powerup == -77) && block_col && block_col.vspeed == 0 && block_col.object_index != obj_onoffblock && block_col.object_index != obj_noteblock && block_col.object_index != obj_musicblock && block_col.object_index != obj_noteblock_s)
    {
        with (block_col)
            alarm[2] = 1
    }
    if (block_col && block_col.vspeed == 0 && block_col.object_index == obj_flipblock && global.apariencia != 2 && (global.powerup != 0 || (global.powerup == 0 && instance_exists(obj_helmet))))
    {
        with (block_col)
            alarm[2] = 1
    }
    else if (block_col && block_col.object_index == obj_onoffblock && block_col.ready == 0)
    {
        with (block_col)
            event_user(1)
    }
    else if block_col
    {
        if (block_col.ready == 0)
        {
            with (block_col)
            {
				if object_index != obj_noteblock && object_index != obj_musicblock
						expand = 1
                ready = 1
                vspeed = -2
                if (object_index == obj_noteblock || object_index == obj_musicblock || object_index == obj_noteblock_s)
                    alarm[0] = 7
                else
                    alarm[0] = 4
                event_user(0)
            }
        }
    }
//If penguin Mario is not swimming, and Mario is not climbing or wall climbing
    if noisy = 0
    and state < 3
	and vspeed < 0
    {
        //Stop variable jumping
        jumpnow = 2
		
        //Bump sound
	    audio_stop_sound(scr_snd_bump())
        audio_stop_sound(scr_jump())
        audio_play_sound(scr_snd_bump(), 0, false)
    }

}
if (state < 3)
{
    if (state != 2 && disablecontrols == 0)
    {
        if (global.powerup == -38 && isswim == 1)
            isduck = 0
        else if (keyboard_check(global.abajo) && (holding == 0 || holding == 3) && noisy == 0)
        {
            if (gravity == 0 && isduck == 0)
            {
                audio_stop_sound(snd_NSMBU_duck)
                audio_play_sound(snd_NSMBU_duck, 0, false)
            }
            isduck = 1
        }
        else if ((!keyboard_check(global.abajo)) && (collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 12), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)) && global.powerup != 0 && isduck == 1)
            isduck = 1
        else
            isduck = 0
    }
    else if (state == 2 && disablecontrols == 0)
    {
        if ((!keyboard_check(global.abajo)) && isduck == 1 && (!(collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 6), bbox_right, bbox_top, obj_bullebill_base, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 12), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 12), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))) && place_free(x, (y + 1)) && vspeed > 0)
        {
            jump_type = 1
            sprite_index = scr_NSMBU_jump1()
            image_speed = 0
            image_index = 19
            isduck = 0
        }
    }
    if (keyboard_check_pressed(global.lanzar_agarrar) && instance_exists(obj_levelmanager) && obj_levelmanager.barrier == 0)
        alarm[10] = 1
}
else
    isduck = 0
if (isswim == 0 && (global.bg_level == "underwater" || (global.bg_level == "castle" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && global.bg_level == "forest" && global.modo_noche == 0 && (y + 18) >= obj_lava_water.y) || (instance_exists(obj_lava_water) && global.bg_level == "beach" && (y + 18) >= obj_lava_water.y)))
{
    isswim = 1
    groundpount = 0
    disablecontrols = 0
    event_user(15)
    walljump = 0
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12))
        instance_create(x, (obj_lava_water.y - 26), obj_splash_agua)
    if (state > 2)
        state = 2
}
switch global.bg_level
{
    case "underwater":
        if (instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1)
        {
            if (y < (camera_get_view_y(view_get_camera(0)) - 16))
                y = (camera_get_view_y(view_get_camera(0)) - 16)
        }
        else if (y < -16)
            y = -16
        break
    case "castle":
        if (global.modo_noche == 1 && instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1)
        {
            if (y < (camera_get_view_y(view_get_camera(0)) - 16))
                y = (camera_get_view_y(view_get_camera(0)) - 16)
        }
        else if (y < -16)
            y = -16
        break
    default:
        if (instance_exists(obj_mario_pballon) && instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1)
        {
            if (obj_mario_pballon.y < camera_get_view_y(view_get_camera(0)))
                obj_mario_pballon.y = camera_get_view_y(view_get_camera(0))
            break
        }
}
if (y < -96)
        y = -96
    else if (((bbox_top - 32) > room_height) && (global.bg_level != "castle"))
    {
        if ((global.powerup == 24) && (doublejump != -1))
        {
            doublejump = -1
            vspeed = -4.5
            y -= 8
            jumpnow = 1
            audio_play_sound(snd_jump, 0, false)
            audio_play_sound(snd_stomp, 0, false)
        }
        else
        {
            with (instance_create(x, (room_height - 32), obj_deadmario))
                visible = false
            instance_destroy()
        }
    }
    else if ((instance_exists(obj_lava_water) && (((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1))) && (((y + 32) >= obj_lava_water.y) && (!instance_exists(obj_kuribo_drybones))))) || (instance_exists(obj_lava_water) && (((global.bg_level == "castle") || ((global.bg_level == "forest") && (global.modo_noche == 1))) && (((y + 32) >= (obj_lava_water.y + 12)) && instance_exists(obj_kuribo_drybones)))))
    {
		if global.bg_level = "castle"
				global.dead_type = 2
		else if global.bg_level = "forest"
			global.dead_type = 1
        instance_create(x, y, obj_deadmario)
        instance_destroy()
    }
    else if ((instance_exists(obj_lava_water) && ((global.bg_level == "mountain") && (global.modo_noche == 1)) && (((y + 32) >= obj_lava_water.y) && (!instance_exists(obj_kuribo_drybones))) || (instance_exists(obj_lava_water) && ((global.bg_level == "mountain") && (global.modo_noche == 1)) && (((y + 32) >= (obj_lava_water.y + 12)) && instance_exists(obj_kuribo_drybones)))))
    {
		global.dead_type = 2
        instance_create(x, y, obj_deadmario)
        instance_destroy()
    }
  if (((global.bg_level == "underwater") && (isswim == 0)) || (((global.bg_level == "castle") && ((global.modo_noche == 1) && (isswim == 0))) || (instance_exists(obj_lava_water) && ((global.bg_level == "forest") && ((global.modo_noche == 0) && (((y + 18) >= obj_lava_water.y) && (isswim == 0)))))))
    {
        if ((holding == 2) && (global.apariencia == 2))
            isswimhold = 1
        isswim = 1
        powerupfly = 0
        walljump = 0
        squirrelpropel = 0
        doublejump = 0
        if (collision_point(x, (y - 17), obj_lava_water, 0, 0) && (!collision_point(x, (y - 16), obj_lava_water, 0, 0)))
        {
            vspeed = 0
            if (global.apariencia != 0)
            {
                with (instance_create(x, (y + 7), obj_smoke))
                {
                    if (global.apariencia == 1)
                        sprite_index = spr_SMB3_splash
                    else if (global.apariencia == 2)
                        sprite_index = spr_splash
                    depth = -10
                }
            }
        }
        isfloating = 0
        if (floatnow == 1)
        {
            audio_stop_sound(snd_spin)
            floatnow = 0
        }
        if (state > 2)
            state = 2
    }
if instance_exists(obj_cinta) && instance_exists(obj_marioU)
{

conveyor = false
player_on_conveyor = collision_rectangle((bbox_left - 2), (bbox_top + 10), (bbox_right + 2), (bbox_bottom + 10), obj_cinta_parent, 0, 0)
solid_col = (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom - 1), obj_solidtop, 0, 0))
solid_col_2 = (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0))
if (player_on_conveyor)
{
conveyor_first_col = true
}
else if (solid_col) or (solid_col_2){
	conveyor_first_col = false
}
if (conveyor_first_col == true){
	conveyor = collision_rectangle((bbox_left - 2), obj_cinta_parent.y - 48, (bbox_right + 2), obj_cinta_parent.y, obj_cinta_parent, 0, 0);
}
else if (conveyor_first_col == false){
	conveyor = false
}

if (conveyor && obj_marioU.y > obj_cinta_parent.y) {
    conveyor = false;
}
    if (conveyor && (conveyor.image_speed != 0))
    {
        if (conveyor.image_speed > 0)
        {
            if ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 2), (bbox_bottom - 4), obj_onewaygate_left, 1, 0)))))))
                x -= conveyor.image_speed
        }
        else if (conveyor.image_speed < 0)
        {
            if ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle((bbox_left - 2), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)))))))
                x -= conveyor.image_speed
        }
    }
}