if (instance_exists(obj_mario) && keyboard_check(global.abajo))
{
    obj_mario.hspeed = hspeed
    obj_mario.direct = direct
    obj_mario.x = x
	y = obj_mario.y
    obj_mario.invincible = 1
}
else
{
    instance_destroy()
    exit
}
if (type == 0)
{
    sprite_index = scr_marioslide()
    if (global.powerup == 0)
        mask_index = spr_smallmask
	else if (global.powerup == -85)
        mask_index = spr_smallmask
    else
        mask_index = spr_bigmask
}
else
{
    if (keyboard_check_pressed(global.saltar) && obj_mario.state < 2)
    {
        audio_play_sound(snd_jump, 0, false)
        with (obj_mario)
        {
            vspeed = -3
            state = 2
        }
    }
    if (type == 2)
    {
        if (hspeed > 0)
            direct = 1
        else
            direct = -1
    }
}
if collision_rectangle(bbox_right, bbox_bottom-2, bbox_right, (bbox_bottom + 2), obj_slopeparent, 1, 0)
    hspeed -= 0.1
if collision_rectangle(bbox_left, bbox_bottom-2, bbox_left, (bbox_bottom + 2), obj_slopeparent, 1, 0)
    hspeed += 0.1
if (hspeed > 3)
    hspeed = 3
if (hspeed < -3)
    hspeed = -3
if (obj_mario.state < 2 && (!collision_rectangle(bbox_right, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_slopeparent, 1, 0)) && (!collision_rectangle(bbox_left, bbox_bottom, bbox_left, (bbox_bottom + 2), obj_slopeparent, 1, 0)))
{
    if (type == 0)
        friction = 0.1
    else
        friction = 0.02
    if (abs(hspeed) < 0.05)
        instance_destroy()
}
else
    friction = 0
if ((hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0)))
{
    if (type == 1)
    {
        audio_play_sound(snd_bump, 0, false)
        instance_create((x - 8), (y + 16), obj_blockbumper)
        with (instance_create((x + (8 * sign(hspeed))), (y + 24), obj_smoke))
            sprite_index = spr_shellbump
        hspeed = (-hspeed)
    }
    else
        instance_destroy()
}
if keyboard_check_pressed(global.saltar) && (obj_mario.jumpnow == 0)
{
	audio_play_sound(scr_jump(), 0, false)
	with obj_mario {
            state = 2
            jumpnow = 1
            if (isswim == 1)
                vspeed = -1.8
            else
                vspeed = -3.75
	}
}
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_solidtop, 0, 0)) {
    
            //If the player is not on contact with a slippery surface.
            if (obj_mario.isslip == 0) {
            
                //Slowdown
                hspeed = max(0,abs(hspeed)-0.05)*sign(hspeed);
                if ((hspeed > -0.05) && (hspeed < 0.05)) {
                
                    //Stop horizontal speed.
                    hspeed = 0;
                    
                    //End combo
                    obj_mario.hitpoint = 0;
                    
                }
            }
			else if (obj_mario.isslip == 1) {
            
                //Slowdown
                hspeed = max(0,abs(hspeed)-0.0125)*sign(hspeed);
                if ((hspeed > -0.0125) && (hspeed < 0.0125)) {
                
                    //Stop horizontal speed.
                    hspeed = 0;
                    
                    //End combo
                    obj_mario.hitpoint = 0;
                    
                }        
            }        
}