/// @description Give Mario temporary invincibility

//If Mario is not star invincible
if invincible != -1
{

    //Make Mario invincible
    invincible = 1

    //Make Mario's alpha blink
    alarm[1] = 1

    //Make Mario not invincible after a cooldown
    alarm[3] = 120

}

