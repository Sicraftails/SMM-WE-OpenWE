var enemy;
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        if (object_index == obj_boo)
            boo_huida = 1
        else if (object_index == obj_egg || object_index == obj_egg_red || object_index == obj_podoboo || object_index == obj_podoboo_b)
        {
            with (instance_create(x, y, obj_smoke))
                sprite_index = spr_destroy_enemy
            instance_destroy()
        }
        else if (object_index != obj_grinder)
        {
            enemy = instance_create(x, y, obj_enemy_dead_castle)
            enemy.sprite_index = sprite_index
            enemy.image_index = image_index
            enemy.direct = direct
            instance_destroy()
        }
    }
}
if instance_exists(obj_bowserjr_shell)
{
    instance_create(x, y, obj_bowserjr_dead_castle)
    instance_destroy()
}
if instance_exists(obj_bossparent)
{
    with (obj_bossparent)
    {
        if (object_index == obj_SMB_bowser || object_index == obj_SMB3_bowser || object_index == obj_SMW_bowser || object_index == obj_NSMBU_bowser)
        {
            enemy = instance_create(x, y, obj_bowser_dead_castle)
            enemy.sprite_index = sprite_index
            enemy.image_index = image_index
            enemy.direct = direct
        }
        else if (object_index == obj_bowserjr || object_index == obj_NSMBU_bowserjr)
        {
            enemy = instance_create(x, y, obj_bowserjr_dead_castle)
            enemy.sprite_index = sprite_index
            enemy.image_index = image_index
            enemy.direct = direct
        }
        else
        {
            enemy = instance_create(x, y, obj_enemy_dead_castle)
            enemy.sprite_index = sprite_index
            enemy.image_index = image_index
            enemy.direct = direct
        }
        instance_destroy()
    }
}

