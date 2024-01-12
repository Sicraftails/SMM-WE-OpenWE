if doublejump = 0{
	if hspeed < 0 
    {
        if ((!(collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_solidtop, 0, 0))) && (!(collision_rectangle((bbox_left + 3), (bbox_bottom - 1), (bbox_left + 3), (bbox_bottom + 4), obj_physicssolid, 0, 0)))){
            doublejump = 1
			timer_ardilla = 0
			walljump_ex = 0
		}
    }
    else if hspeed > 0
    {
        if ((!(collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_solidtop, 0, 0))) && (!(collision_rectangle((bbox_right - 3), (bbox_bottom - 1), (bbox_right - 3), (bbox_bottom + 4), obj_physicssolid, 0, 0)))){
            doublejump = 1
			timer_ardilla = 0
			walljump_ex = 0
		}
    }
}
	if doublejump = 1 and timer_ardilla != 14{
		
		timer_ardilla += 1
	}
	if doublejump = 1  and timer_ardilla != 0 and timer_ardilla < 12{
		vspeed = -3
		hspeed += 0.2*direct
	}
	else if timer_ardilla > 12 and vspeed >= 0{
		timer_ardilla = 14
		doublejump = 2
	}
	if doublejump = 2{
		vspeed = 0
		if walljump_ex = 0
		vspeed += 0.655
		else
			vspeed += 1
	}
