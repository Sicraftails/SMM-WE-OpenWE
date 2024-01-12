///Start jumping

//If the ninji is not jumping
if (jumping == 0) {

    //If the player does exists
    if (instance_exists(obj_mario)) {
        
        //If the player is nearby
        if ((obj_mario.x > x-32) && (obj_mario.x < x+32)) {
        
            if (!swimming)
                vspeed = -4;
            else
                vspeed = -2;
        }
        else {
        
            if (!swimming)
                vspeed = -2;
            else
                vspeed = -1;
        }
    }
    
    //Otherwise, if it does not exist
    else {
    
        if (!swimming)
            vspeed = -2;
        else
            vspeed = -1;
    }
    
    //Boost jump
    y--;
    
    //Jump
    jumping = 1;

    //Stop animation
    sprite_index = spr_NSMBU_ninji_jump;
}