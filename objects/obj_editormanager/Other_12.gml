instance_activate_all()
if instance_exists(obj_enemyparent)
{
    with (obj_enemyparent)
    {
        image_speed = 0.15
        alarm[10] = 1
    }
}
if instance_exists(obj_monty_chase)
{
    with (obj_monty_chase)
        image_speed = 0.2
}
if instance_exists(obj_spike)
{
    with (obj_spike)
    {
        alarm[10] = 1
        alarm[0] = 2
        image_speed = 0.15
    }
}
if instance_exists(obj_magikoopa)
{
    with (obj_magikoopa)
    {
        alarm[10] = -1
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = -1
        image_speed = 0
        hspeed = 0
    }
}
if instance_exists(obj_boomboom)
{
    with (obj_boomboom)
        alarm[10] = 1
}
if instance_exists(obj_boomboom_b)
{
    with (obj_boomboom_b)
        alarm[10] = 1
}
if instance_exists(obj_icecoin)
{
    with (obj_icecoin)
        image_speed = 0.15
}
if instance_exists(obj_pink_coin)
{
    with (obj_pink_coin)
    {
        alarm[0] = 1
        image_speed = 0.15
    }
}
if instance_exists(obj_chain_chomp_free)
{
    with (obj_chain_chomp_free)
        alarm[10] = 2
}
if instance_exists(obj_key)
{
    with (obj_key)
        image_speed = 0.18
}
if instance_exists(obj_egg)
{
    with (obj_egg)
    {
        image_speed = 0
        if (global.apariencia == 1)
        {
            alarm[2] = 7
            alarm[10] = 2
        }
    }
}
if instance_exists(obj_torbellino)
{
    with (obj_torbellino)
    {
        image_speed = 0.15
        alarm[0] = 5
        alarm[10] = 1
    }
}
if instance_exists(obj_plant_fire)
{
    with (obj_plant_fire)
    {
        image_speed = 0.1
        alarm[10] = 1
        alarm[2] = 120
    }
}
if instance_exists(obj_angrysun)
{
    with (obj_angrysun)
    {
        image_speed = 0.15
        alarm[10] = -1
        hspeed = 0
    }
}
if instance_exists(obj_sledgebro)
{
    with (obj_sledgebro)
    {
        image_speed = 0.125
        alarm[0] = 70
        alarm[1] = 300
        alarm[3] = 60
    }
}
if instance_exists(obj_podoboo)
{
    with (obj_podoboo)
    {
        image_speed = 0.2
        gravity = 0.2
        hspeed = 0
        alarm[10] = -1
    }
}
if instance_exists(obj_grinder)
{
    with (obj_grinder)
    {
        image_speed = 0.45
        hspeed = 0
    }
}
if instance_exists(obj_banzaibill)
{
    with (obj_banzaibill)
        alarm[10] = 1
}
if instance_exists(obj_bobomb_ready)
{
    with (obj_bobomb_ready)
    {
        image_speed = 0.2
        alarm[1] = 360
        alarm[10] = 1
    }
}
if instance_exists(obj_galoomba)
{
    with (obj_galoomba)
        alarm[0] = 120
}
if instance_exists(obj_jumppiranha)
{
    with (obj_jumppiranha)
    {
        if (global.apariencia == 1)
            image_speed = 0.125
        else if (global.apariencia == 2)
        {
            sprite_index = spr_jumppiranha_falll
            image_speed = 0.55
            alarm[0] = 180
        }
        alarm[10] = -1
        hspeed = 0
    }
}
if instance_exists(obj_thwomp)
{
    with (obj_thwomp)
        image_speed = 0
}
if instance_exists(obj_bullebill_base)
{
    with (obj_bullebill_base)
    {
        alarm[0] = 180
        image_speed = 0
        alarm[10] = -1
        hspeed = 0
    }
}
if instance_exists(obj_hammerbro)
{
    with (obj_hammerbro)
    {
        image_speed = 0.125
        alarm[0] = 50
        alarm[1] = 152
        alarm[2] = 17
    }
}
if instance_exists(obj_firebro)
{
    with (obj_firebro)
    {
        image_speed = 0.125
        alarm[0] = 50
        alarm[1] = 152
        alarm[2] = 17
    }
}
if instance_exists(obj_cap)
{
    with (obj_cap)
        alarm[0] = 1
}
if instance_exists(obj_muncher)
{
    with (obj_muncher)
        image_speed = 0.15
}
if instance_exists(obj_fireflower)
{
    with (obj_fireflower)
        image_speed = 0.15
}
if instance_exists(obj_pinchos)
{
    with (obj_pinchos)
        image_speed = 0.1
}
if instance_exists(obj_holdparent)
{
    with (obj_holdparent)
        image_speed = 0
}
if instance_exists(obj_block)
{
    with (obj_block)
        image_speed = 0.15
}
if instance_exists(obj_flipblock)
{
    if (global.apariencia == 1)
    {
        with (obj_flipblock)
            image_speed = 0.15
    }
}
if instance_exists(obj_noteblock)
{
    with (obj_noteblock)
        image_speed = 0.15
}
if instance_exists(obj_coin)
{
    with (obj_coin)
        image_speed = 0.15
}
if instance_exists(obj_coin10)
{
    with (obj_coin10)
        image_speed = 0.15
}
if instance_exists(obj_mushroom)
{
    with (obj_mushroom)
        hspeed = 1.1
}
if instance_exists(obj_1up)
{
    with (obj_1up)
        alarm[10] = 2
}
if instance_exists(obj_star)
{
    with (obj_star)
    {
        alarm[10] = 1
        image_speed = 0.3
    }
}
if instance_exists(obj_drybones)
{
    with (obj_drybones)
        alarm[0] = 180
}
if instance_exists(obj_clown)
{
    with (obj_clown)
    {
        image_speed = 0.4
        alarm[0] = 120
    }
}
if instance_exists(obj_bumper)
{
    with (obj_bumper)
        alarm[0] = 120
}
if instance_exists(obj_pswitch)
{
    with (obj_pswitch)
        image_speed = 0.15
}
if instance_exists(obj_block_pow_hold)
{
    with (obj_block_pow_hold)
        image_speed = 0.15
}
if instance_exists(obj_onoffblock)
{
    with (obj_onoffblock)
        image_speed = 0.09
}
if instance_exists(obj_checkpoint)
{
    if (global.apariencia == 2)
    {
        with (obj_checkpoint)
            image_speed = 0.15
    }
}
if instance_exists(obj_goalcard)
{
    with (obj_goalcard)
        alarm[0] = 10
}
if instance_exists(obj_goalgate_tape)
{
    with (obj_goalgate_tape)
        instance_destroy()
    instance_create((obj_goalgate.x + 8), (obj_goalgate.y + 8), obj_goalgate_tape)
}
with (obj_creator_jugar_editar)
    alarm[0] = 5

