/// @description Encogerse y destruirse 

scale -= shrink_rate;
if (scale < 0)
    instance_destroy();
    
if (vspeed > 2)
    vspeed = 2;