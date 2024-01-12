hspeed = 0
if (hitpoints == 1)
    event_user(0)
else
{
    cooldown = 6
    hitpoints--
    if (vspeed == 0)
        vspeed = -2
    else
        vspeed = 1
    alarm[7] = 15
}
stomp = -1

