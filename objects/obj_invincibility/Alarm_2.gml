///Handle Mario's invincibility flashing

//Make Mario flash

with (obj_mario)
{
    if (isflashing == 0)
        isflashing = 1
    else
        isflashing = 0
}
//Keep flashing
alarm[2] = 4