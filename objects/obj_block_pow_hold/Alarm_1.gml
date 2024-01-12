inmune = 0
if (!(place_meeting(x, y, obj_mario)))
{
    if (mytop == obj_lighting)
        mytop = instance_create(x, y, obj_solidphy)
}
else
    alarm[1] = 1
