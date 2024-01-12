if (rot2 >= 20)
{
    alarm[8] = 1
    alarm[0] = -1
}
else
{
    rot1 -= 5
    rot2 += 5
    alarm[0] = 1
}
with (obj_mario_transform2)
    instance_destroy()

