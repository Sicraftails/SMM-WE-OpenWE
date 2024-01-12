function init_shake() {
	if instance_exists(obj_levelmanager)
	{
	    if (obj_levelmanager.shake_time == 0)
	    {
	        obj_levelmanager.shake_long = argument[0]
	        obj_levelmanager.alarm[11] = 1
	    }
	}



}
