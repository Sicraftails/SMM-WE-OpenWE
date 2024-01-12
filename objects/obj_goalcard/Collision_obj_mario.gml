if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
{
    with (instance_create(other.x, other.y, obj_player_goal_smb3))
    {
        mygoal = other.id
        vspeed = obj_mario.vspeed
        direct = obj_mario.direct
    }
    audio_stop_sound(scr_snd_switchsong())
    audio_stop_sound(scr_snd_starman())
    audio_stop_sound(scr_music_link())
    audio_stop_sound(snd_n64)
    alarm[3] = 120
    alarm[2] = 270
    if (room != rm_editor)
    {
        if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
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
    ready = 1
    event_user(2)
    with (obj_mario)
        instance_destroy()
}