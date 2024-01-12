///Ninji

//How vulnerable is this enemy to various items?
hardness = 0;

//How vulnerable is this enemy to the player?
stomp = 1;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
direct = 1;

//Is this enemy heavy?
isheavy = 0;

//Whether the object is swimming
swimming = false;

//Whether the object is jumping
jumping = 0;

//Do not animate
image_speed = 0.125;

//Start jumping
alarm[1] = 15+random(round(30));

//Set sprites
if (global.apariencia == 0)
	sprite_index = spr_SMB_ninji
else if (global.apariencia == 1)
	sprite_index = spr_SMB3_ninji	
else if (global.apariencia == 2)
	sprite_index = spr_ninji
	
