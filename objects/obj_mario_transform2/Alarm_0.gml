if (instance_exists(obj_creator_jugar_editar) && obj_creator_jugar_editar.alarm[0] != -1 && obj_creator_jugar_editar.alarm[7] != -1)
{
    instance_destroy()
    exit
}
    var sx = obj_persistent.s
back = background_create_from_surface(application_surface, 0, 0, (global.gw * sx), (global.gh * sx), false, false)
if instance_exists(obj_lighting)
{
    with (obj_lighting)
        instance_destroy()
}
ready = 1
global.instance_deactivate = 0
instance_deactivate_all(true)
instance_activate_object(obj_persistent)
instance_activate_object(obj_mario)
instance_activate_object(obj_cap_mario)
instance_activate_object(obj_kuriboshoe)
instance_activate_object(obj_helmet)
instance_activate_object(obj_yoshi2)
instance_activate_object(obj_smoke_cap)
instance_activate_object(obj_autoscroll)
instance_activate_object(obj_rainmaker)
if (global.yoshi == 0)
{
    if instance_exists(obj_mario)
        obj_mario.visible = true
}
if instance_exists(obj_kuriboshoe)
    obj_kuriboshoe.visible = true
if instance_exists(obj_yoshi2)
    obj_yoshi2.visible = true
if instance_exists(obj_levelmanager)
{
    with (obj_levelmanager)
        alarm[2] = 0
}
if (c_powerup == 1)
{
    if (small == 2)
    {
        powerup_actual = global.powerup
        powerup_nuevo = 0
    }
    else
    {
        powerup_actual = global.powerup
        powerup_nuevo = scr_sprite_get_constant(sprite_powerup)
    }
    global.powerup = powerup_nuevo
}
if (cap != 0)
{
    instance_activate_object(obj_cap_mario)
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
        {
            cap_invisible = 0
            visible = true
        }
    }
}
alarm[1] = 6


