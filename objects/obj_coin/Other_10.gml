var col_enemy, col_enemy_held, col_munchers, col_bosses, col_clown, col_bullet, col_powerup, col_cannon;
col_enemy = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemyparent, 0, 0)
col_enemy_held = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_enemyparent_held, 0, 0)
col_munchers = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_muncher, 0, 0)
col_bosses = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bossparent, 0, 0)
col_clown = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_clown, 0, 0)
col_bullet = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0)
col_powerup = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_powerupparent, 0, 0)
col_cannon = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_cannon, 0, 0)
if (col_enemy && place_meeting(x, y, obj_enemyparent))
{
    if (col_enemy.object_index != obj_grinder && col_enemy.object_index != obj_podoboo && col_enemy.object_index != obj_boo && col_enemy.object_index != obj_banzaibill && col_enemy.object_index != obj_bulletbill && col_enemy.object_index != obj_cannonball && col_enemy.object_index != obj_cannonball_red && col_enemy.object_index != obj_cheepcheep)
    {
        if (col_enemy.object_index == obj_bobomb || col_enemy.object_index == obj_bobomb_ready)
        {
            with (col_enemy)
            {
                instance_create(x, y, obj_explosion)
                instance_destroy()
            }
        }
        else
        {
            with (col_enemy)
                event_user(0)
        }
    }
}
if (col_enemy_held && col_enemy_held.held == 0 && place_meeting(x, y, obj_enemyparent_held))
{
    if (col_enemy_held.object_index == obj_bobomb_hold)
    {
        with (col_enemy_held)
        {
            instance_create(x, y, obj_explosion)
            instance_destroy()
        }
    }
    else
    {
        with (col_enemy_held)
            event_user(0)
    }
}
if (col_munchers && place_meeting(x, y, obj_muncher))
{
    with (col_munchers)
        event_user(0)
}
if (col_bosses && place_meeting(x, y, obj_bossparent))
{
    with (col_bosses)
        event_user(0)
}
if (col_clown && place_meeting(x, y, obj_clown))
{
    with (col_clown)
        event_user(0)
}
if (col_bullet && place_meeting(x, y, obj_bullebill_base))
{
    with (col_bullet)
        event_user(0)
}
if (col_powerup && place_meeting(x, y, obj_powerupparent))
{
    with (col_powerup)
    {
        instance_create(x, y, obj_smoke)
        instance_destroy()
    }
}
if (col_cannon && place_meeting(x, y, obj_cannon))
{
    with (col_cannon)
        event_user(0)
}

