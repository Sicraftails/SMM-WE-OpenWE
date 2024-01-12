if keyboard_check(global.abajo)
{
    if (cont_invincible >= 50)
    {
        cont_invincible = 0
        alarm[5] = 1
    }
    else
    {
        cont_invincible++
        alarm[4] = 2
    }
}
else
    alarm[5] = 1
