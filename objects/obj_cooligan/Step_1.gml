// Inherit the parent event
event_inherited();
switch global.apariencia
{
    case 0:
        s_idle = spr_SMB_cooligan_idle
        s_fly = spr_SMB_cooligan_fly
        s_hurt = spr_SMB_cooligan_hurt
        break
    case 1:
	if (global.modo_noche == 0) and (global.bg_level != "underground") and (global.bg_level != "ghost"){
        s_idle = spr_SMB3_cooligan_idle
        s_fly = spr_SMB3_cooligan_fly
        s_hurt = spr_SMB3_cooligan_hurt
	}
	else{
		s_idle = spr_SMB3_cooligan_idle_n
        s_fly = spr_SMB3_cooligan_fly_n
        s_hurt = spr_SMB3_cooligan_hurt_n
	}
        break
    case 2:
        s_idle = spr_cooligan_idle
        s_fly = spr_cooligan_fly
        s_hurt = spr_cooligan_hurt
        break
    case 3:
        s_idle = spr_NSMBU_cooligan_idle
        sprite_index = spr_NSMBU_cooligan_idle
        s_fly = spr_NSMBU_cooligan_fly
        s_hurt = spr_NSMBU_cooligan_hurt
}
// Make the Cooligan move
if (touch_ground == 0) and (hurted == 0){
	if !place_meeting(x, y + 1, obj_solidtop) and !place_meeting(x, y + 1, obj_physicssolid) or place_meeting(x, y, obj_solid) or place_meeting(x, y, obj_pinchos) {
		hspeed = 0; // Set hspeed to 0
		vspeed *= 0.9; // Decrease vspeed by 10%
		sprite_index = s_fly
	}
	}
else if (touch_ground == 0) and (hurted == 1){
	if !place_meeting(x, y + 1, obj_solidtop) and !place_meeting(x, y + 1, obj_physicssolid) or place_meeting(x, y, obj_solid) or place_meeting(x, y, obj_pinchos) {
		hspeed = 0; // Set hspeed to 0
		vspeed *= 0.9; // Decrease vspeed by 10%
		sprite_index = s_hurt
	}
	}	
if place_meeting(x, y + 1, obj_solidtop) or place_meeting(x, y + 1, obj_physicssolid) or place_meeting(x, y, obj_solid) or place_meeting(x, y, obj_pinchos) {
	if hurted = 0
	{
	if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
       hspeed = (0.3 * direct)
    else
       hspeed = (2 * direct)
	sprite_index = s_idle
	}
	else if hurted = 1
	{
	if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
       hspeed = (0.15 * direct)
    else
       hspeed = (1 * direct)
	sprite_index = s_hurt
	}
	if touch_ground = 0
		touch_ground = 1
}
else {
	if (touch_ground == 1)
	{
    // If there is no collision, decrease vspeed
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
       hspeed = (0.3 * direct)
    else
       hspeed = (2 * direct)
	vspeed *= 0.9; // Decrease vspeed by 10%
	if (hurted = 0){
	// If there is no collision, decrease vspeed
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
       hspeed = (0.3 * direct)
    else
       hspeed = (2 * direct)
	sprite_index = s_fly
	}
	else{
	    // If there is no collision, decrease vspeed
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
       hspeed = (0.15 * direct)
    else
       hspeed = (1 * direct)
	sprite_index = s_hurt
	}
	}
}