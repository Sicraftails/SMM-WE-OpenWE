if walljump == 0 and gravity != 0 {
    if collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_solid, true, false) 
	or collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_physicssolid, true, false) 
	or collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_bullebill_base, true, false) 
	or collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_onewaygate_left, true, false) {
        walljump = 1;
        doublejump = 0;
		fly_anim = 0;
        direct = 1;
    } 
	else if collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_solid, true, false) 
	or collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_physicssolid, true, false)
	or collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_bullebill_base, true, false) 
	or collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_onewaygate_right, true, false) {	
        walljump = 1;
        doublejump = 0;
		fly_anim = 0;
        direct = -1;
    }
}

if walljump == 1 {
	    hspeed = 0;
        gravity = 0;
		vspeed = 0;
		timer_walljump += 1;
}
    
    if timer_walljump > 50 {
        hspeed = 0.5 * direct;
        doublejump = 1
		walljump = 2
		walljump_ex = 1
        timer_walljump = 0;
		timer_ardilla = 0;
    }
if !collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_solid, true, false) 
and !collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_solid, true, false) 
and !collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_physicssolid, true, false) 
and !collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_physicssolid, true, false) 
and !collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_bullebill_base, true, false) 
and !collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_bullebill_base, true, false) 
and !collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_onewaygate_left, true, false) 
and !collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_onewaygate_right, true, false)
	walljump = 0