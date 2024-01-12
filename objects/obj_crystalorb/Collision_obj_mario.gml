if ((global.condiciones == 0) || ((global.condiciones == 1) && ((global.condiciones_clear == 1) && (show == 1))))
{
    with (instance_create(other.x, other.y, obj_player_goal_smb2))
    {
        vspeed = obj_mario.vspeed
        direct = obj_mario.direct
    }
    audio_stop_sound(scr_snd_switchsong())
    audio_stop_sound(scr_snd_starman())
    alarm[0] = 270
    if (room != rm_editor)
    {
        if ((obj_persistent.modo_android == 1) && (global.controles_tactiles == 1))
        {
            with (obj_persistent)
            {
                event_user(4)
                event_user(5)
            }
        }
    }
    with (obj_levelmanager)
    {
        event_user(3)
        alarm[2] = 0
        alarm[4] = -1
    }
    global.checkpoint = -4
    if instance_exists(obj_hawmask)
    {
        with (obj_hawmask)
            alarm[0] = 15
    }
    with (obj_mario)
        instance_destroy()
    instance_create(x, y, obj_smoke)
    show = 0
}
instance_destroy(obj_mario)
instance_destroy(obj_mario_temp)
if instance_exists(obj_meteorites)
{
instance_destroy(obj_meteorites)
}
if instance_exists(obj_meteorites_big)
{
instance_destroy(obj_meteorites_big)
}

