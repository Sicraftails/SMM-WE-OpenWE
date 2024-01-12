if instance_exists(obj_physicsparent)
{
    with (obj_physicsparent)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
with (obj_shell_held)
{
    speed = 0
    gravity = 0
    image_speed = 0
}
with (obj_piranhaplant)
{
    for (i = 0; i < 4; i++)
        alarm[i] = -1
    vspeed = 0
}
with (obj_soplete_global)
{
    for (i = 0; i < 3; i++)
        alarm[i] = -1
    image_speed = 0
}
with (obj_soplete_invert_global)
{
    for (i = 0; i < 3; i++)
        alarm[i] = -1
    image_speed = 0
}
with (obj_enemy_dead)
{
    speed = 0
    gravity = 0
    image_speed = 0
}
with (obj_bowser_dead)
{
    speed = 0
    gravity = 0
    image_speed = 0
}
with (obj_enemy_dead_castle)
{
    speed = 0
    gravity = 0
    image_speed = 0
}
if instance_exists(obj_brohammer)
{
    with (obj_brohammer)
    {
        image_speed = 0
        speed = 0
        gravity = 0
    }
}
if instance_exists(obj_magic)
{
    with (obj_magic)
    {
        image_speed = 0
        speed = 0
        gravity = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_powerupparent)
{
    with (obj_powerupparent)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
if instance_exists(obj_solidtop)
{
    with (obj_solidtop)
    {
        speed = 0
        image_speed = 0
    }
}
if instance_exists(obj_plataforma)
{
    with (obj_plataforma)
    {
        speed = 0
        image_speed = 0
        alarm[0] = -1
        alarm[1] = -1
    }
}
if instance_exists(obj_plataforma_blue)
{
    with (obj_plataforma_blue)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = -1
    }
}
if instance_exists(obj_lava_lift)
{
    with (obj_lava_lift)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = -1
    }
}
if instance_exists(obj_holdparent)
{
    with (obj_holdparent)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
if instance_exists(obj_spike)
{
    with (obj_spike)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[10] = -1
        alarm[0] = -1
    }
}
if instance_exists(obj_spike_ball)
{
    with (obj_spike_ball)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        ready = 2
    }
}
if instance_exists(obj_key_appear)
{
    with (obj_key_appear)
    {
        image_speed = 0
        speed = 0
        alarm[1] = -1
    }
}
if instance_exists(obj_magikoopa)
{
    with (obj_magikoopa)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
if instance_exists(obj_boomboom)
{
    with (obj_boomboom)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
if instance_exists(obj_icecoin)
{
    with (obj_icecoin)
    {
        image_speed = 0
        image_index = 0
    }
}
if instance_exists(obj_pink_coin)
{
    with (obj_pink_coin)
    {
        image_speed = 0
        image_index = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_key)
{
    with (obj_key)
    {
        speed = 0
        image_index = 0
        image_speed = 0
    }
}
if instance_exists(obj_egg)
{
    with (obj_egg)
    {
        speed = 0
        image_speed = 0
        gravity = 0
        image_index = 0
        alarm[2] = -1
        alarm[10] = -1
    }
}
if instance_exists(obj_cheepcheep)
{
    with (obj_cheepcheep)
    {
        speed = 0
        image_speed = 0
        gravity = 0
        image_index = 0
        alarm[1] = -1
    }
}
if instance_exists(obj_cheepcheep2)
{
    with (obj_cheepcheep)
    {
        speed = 0
        image_speed = 0
        gravity = 0
        image_index = 0
        alarm[1] = -1
    }
}
if instance_exists(obj_chain_chomp_free)
{
    with (obj_chain_chomp_free)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        fallow_chomp = 0
        alarm[10] = -1
    }
}
if instance_exists(obj_1up)
{
    with (obj_1up)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[10] = -1
    }
}
if instance_exists(obj_torbellino)
{
    with (obj_torbellino)
    {
        image_speed = 0
        image_index = 0
        speed = 0
        gravity = 0
        alarm[0] = -1
        alarm[10] = -1
    }
}
if instance_exists(obj_bullebill_base)
{
    with (obj_bullebill_base)
    {
        image_speed = 0
        speed = 0
        gravity = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_galoomba)
{
    with (obj_galoomba)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_plant_fire)
{
    with (obj_plant_fire)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
        alarm[2] = -1
    }
}
if instance_exists(obj_jumppiranha)
{
    with (obj_jumppiranha)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_hammerbro)
{
    with (obj_hammerbro)
    {
        speed = 0
        gravity = 0
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = -1
        image_speed = 0
    }
}
if instance_exists(obj_firebro)
{
    with (obj_firebro)
    {
        speed = 0
        gravity = 0
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = -1
        image_speed = 0
    }
}
if instance_exists(obj_sledgebro)
{
    with (obj_sledgebro)
    {
        speed = 0
        gravity = 0
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = -1
        image_speed = 0
    }
}
if instance_exists(obj_bobomb_ready)
{
    with (obj_bobomb_ready)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[1] = -1
    }
}
if instance_exists(obj_banzaibill)
{
    with (obj_banzaibill)
    {
        speed = 0
        gravity = 0
        alarm[10] = -1
    }
}
if instance_exists(obj_smoke)
{
    with (obj_smoke)
        image_speed = 0
}
if instance_exists(obj_rotten_signal)
{
    with (obj_rotten_signal)
    {
        vspeed = 0
        image_speed = 0
    }
}
if instance_exists(obj_blockparent)
{
    with (obj_blockparent)
    {
        image_speed = 0
        speed = 0
    }
}
if instance_exists(obj_cap)
{
    with (obj_cap)
    {
        speed = 0
        image_speed = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_coin)
{
    with (obj_coin)
    {
        image_speed = 0
        image_index = 0
        speed = 0
    }
}
if instance_exists(obj_coin10)
{
    with (obj_coin10)
        image_speed = 0
}
if instance_exists(obj_drybones)
{
    with (obj_drybones)
    {
        speed = 0
        gravity = 0
        image_speed = 0
        alarm[0] = -1
    }
}
if instance_exists(obj_clown)
{
    with (obj_clown)
    {
        image_speed = 0
        alarm[0] = -1
        alarm[4] = -1
    }
}
if instance_exists(obj_bumper)
{
    with (obj_bumper)
        alarm[0] = -1
}
if instance_exists(obj_checkpoint)
{
    with (obj_checkpoint)
        image_speed = 0
}
if instance_exists(obj_pinchos)
{
    with (obj_pinchos)
        image_speed = 0
}
if instance_exists(obj_cinta)
{
    with (obj_cinta)
    {
        speed = 0
        gravity = 0
        image_speed = 0
    }
}
if instance_exists(obj_meteorites)
{
    with (obj_meteorites)
    {
        speed = 0
        gravity = 0
		alarm[0] = -1
        image_speed = 0
    }
}
if instance_exists(obj_meteorites_big)
{
    with (obj_meteorites_big)
    {
        speed = 0
        gravity = 0
		alarm[0] = -1
        image_speed = 0
    }
}