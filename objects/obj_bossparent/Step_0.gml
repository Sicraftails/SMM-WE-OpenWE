event_perform_object(obj_enemyparent, ev_step, ev_step_normal)
if (hitpoints > 1)
{
    inv--
    if (inv < 0)
    {
        inv = 0
        hardness = 0
    }
}
else
    inv = 0
if (cooldown > 0)
{
    cooldown--
}
