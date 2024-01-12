///Hop

//Move up
y--

//Hop higher if he hopped more than twice
if hopcount > 2
{
    vspeed = -5
    hopcount = 0
}

//Otherwise, hop low
else
{
    vspeed = -3
    hopcount++
}

//Jump animation
if (global.apariencia != 3)
	image_index = 1
else
{
		sprite_index = spr_NSMBU_ninji_jump2
}
//Hop again
alarm[0] = 100