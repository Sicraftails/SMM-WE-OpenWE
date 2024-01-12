///Ninji logic

//Inherit event
event_inherited();

//Animate
if (gravity > 0) {

    //If jumping and moving down, wait until floor is reached
    if (vspeed > 0)
    && (jumping == 1)
        jumping = 2;
}
else {

    if (jumping == 2) {
    
        //Animate
        image_speed = 0.125;
        
        //End jump
        jumping = 0;
        
        //Jump again
        alarm[1] = 15+random(round(30));
    }
}

//Look at Mario
if instance_exists(obj_mario)
{
    if obj_mario.x > x
        direct = 1
    else
        direct = -1
}
if jumping = 0
	image_index = 0