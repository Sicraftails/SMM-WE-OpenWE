function turn_towards_direction(argument0, argument1) {
	if (abs((argument0 - direction)) > 180)
	{
	    if (argument0 > 180)
	    {
	        if (abs(((argument0 - 360) - direction)) > argument1)
	            direction -= argument1
	        else
	            direction = argument0
	    }
	    else if (abs(((argument0 + 360) - direction)) > argument1)
	        direction += argument1
	    else
	        direction = argument0
	}
	else if (abs((argument0 - direction)) > argument1)
	{
	    if (argument0 > direction)
	        direction += argument1
	    else
	        direction -= argument1
	}
	else
	    direction = argument0



}
