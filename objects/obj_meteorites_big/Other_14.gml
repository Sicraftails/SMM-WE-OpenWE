if (instance_exists(obj_mario))
{
gravity = 0.1
if (vspeed > 0.5)
vspeed = 0.5
image_angle -= random_range( 1.5, 3)
}
else
{
vspeed = 0
}

