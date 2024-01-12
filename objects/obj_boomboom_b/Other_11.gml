///Default hurt script

//If not ready
if (ready == 0) {

    //Stop horizontal speed
    hspeed = 0;

    //If boom-boom has only one hp left
    if (hitpoints == 1) {
    
        //Set defeat sprite
        sprite_index = s_boomboom_dead;
        
        //Get 4000 points
		with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
            event_user(5)
        if (key == 1)
        {
            with (instance_create((x - 8), (y - 8), obj_key_appear))
                vspeed = -4
            key = 0
        }
        //Explode
        alarm[0] = 120;
    }
    
    //Otherwise, decrement hitpoints
    else {
    
        //Set hurt sprite
        switch global.apariencia
        {
            case 0:
                sprite_index = s_boomboom_dead
                break
            case 1:
                sprite_index = s_boomboom_dead
                break
            case 2:
                sprite_index = spr_boomboom_hurt_b
                break
        }
        
        //Get 1000 / 2000 points
        if (hitpoints == 3) {
        
            hitpoints = 2;
            increment = 1.5;
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
                event_user(5);
        }
        else {
        
            hitpoints = 1;
            increment = 2;
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
                event_user(6);            
        }
        
        //Return to normal
        alarm[2] = 60;
    }
    
    //Prevent getting stomped
    ready = 1;
    
    //Animate
    image_speed = 0.15
    
    //Reset alarms
    alarm[1] = -1;
    alarm[9] = -1;
    alarm[10] = -1;
    alarm[11] = -1;
	alarm[3] = -1;
    alarm[4] = -1;
        
    //Set vulnerability
    stomp = -1;
}

