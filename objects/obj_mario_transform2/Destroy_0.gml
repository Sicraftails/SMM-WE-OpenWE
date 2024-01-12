if (ready == 1)
    sprite_delete(back)
ready = 0
__background_set( e__BG.HSpeed, 0, bg_speed )
if (global.modo_noche == 1 && (global.bg_level == "ghost" || global.bg_level == "underwater"))
{
    if (!instance_exists(obj_lighting))
        instance_create(x, y, obj_lighting)
}
global.instance_deactivate = 1
instance_activate_all()
instance_activate_object(obj_parent_save)
if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1)
{
    with (obj_parent_save)
        visible = true
}
timeline_running = 1
if instance_exists(obj_levelmanager)
{
    with (obj_levelmanager)
        alarm[2] = 60
}
if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        invincible = 0
        helice_fly = 0
        groundpount = 0
        link_transform = 0
        dash_atack = 0
        dash_cont = 0
        down_atack = 0
        down_cont = 0
        arrow = 0
        arrow_ready = 0
        if (stuntime == 0)
        {
            if instance_exists(obj_kuribo_drybones)
            {
                if (obj_kuribo_drybones.invincible == 0)
                    disablecontrols = 0
            }
            else
                disablecontrols = 0
        }
        hspeed = other.m_hspeed
        vspeed = other.m_vspeed
        if (other.powerdown == 1 || other.invincible_restart == 1)
            event_user(6)
    }
}
if (cap == 1)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            image_speed = other.cap_speed
    }
}
else if (cap == 2)
{
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            instance_destroy()
    }
}
if (global.powerup == -82 && instance_exists(obj_mario_pballon))
{
    with (obj_mario_pballon)
        visible = true
}
if instance_exists(obj_autoscroll)
{
    with (obj_autoscroll)
        hspeed = velocidad
}
with (obj_rainmaker)
    event_user(0)


