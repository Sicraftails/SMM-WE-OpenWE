with (obj_levelmanager)
    temp_ready = 0
with (obj_holdparent)
    held = 0
blend_star = c_white
flashAlpha = 1
cp = 0
cp_cont = 0
color[0] = make_colour_rgb(255, 255, 72)
color[1] = make_colour_rgb(254, 138, 139)
color[2] = make_colour_rgb(102, 245, 157)
direct = 1
yview = (y + 32)
global.checkpoint = -4
global.checkpointroom = -4
global.pinkcoins_count = 0
global.pink_coins = 0
global.n64_music = 0
global.boss_music = 0
global.bowser_obj = 0
global.bonus_music = 0
global.bonus_obj = 0
global.ef_repeat = 0
global.pink_coin1_x = 0
global.pink_coin1_y = 0
global.pink_coin2_x = 0
global.pink_coin2_y = 0
global.pink_coin3_x = 0
global.pink_coin3_y = 0
global.pink_coin4_x = 0
global.pink_coin4_y = 0
global.pink_coin5_x = 0
global.pink_coin5_y = 0
global.pink_coin6_x = 0
global.pink_coin6_y = 0
global.pink_coin7_x = 0
global.pink_coin7_y = 0
global.pink_coin8_x = 0
global.pink_coin8_y = 0
global.pink_coin9_x = 0
global.pink_coin9_y = 0
global.pink_coin10_x = 0
global.pink_coin10_y = 0
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if (object_index != obj_grinder)
        {
            instance_create(x, y, obj_detroy_enemy)
            instance_destroy()
        }
    }
}
if instance_exists(obj_enemyparent_held)
{
    with (obj_enemyparent_held)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_bossparent)
{
    with (obj_bossparent)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_clown)
{
    with (obj_clown)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_powerupparent)
{
    with (obj_powerupparent)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_bullebill_base)
{
    with (obj_bullebill_base)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_physicssolid)
{
    with (obj_physicssolid)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_meteorites_maker)
{
    with (obj_meteorites_maker)
        instance_destroy()
}
if instance_exists(obj_meteorites)
{
    with (obj_meteorites)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if instance_exists(obj_meteorites_big)
{
    with (obj_meteorites_big)
    {
        instance_create(x, y, obj_detroy_enemy)
        instance_destroy()
    }
}
if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}

