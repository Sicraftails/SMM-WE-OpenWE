if (switchon == 1)
    global.pswitch = alarm[10]
audio_stop_sound(snd_pmeter)
audio_stop_sound(scr_snd_soplete())
with (obj_rainmaker)
    instance_destroy()
with (obj_leafmaker)
    instance_destroy()
audio_stop_sound(bgm_sm1clear)
audio_stop_sound(snd_SMB_course_clear_castle)
audio_stop_sound(snd_SMB3_course_clear)
audio_stop_sound(snd_SMB3_course_clear_castle)
audio_stop_sound(bgm_smwclear)
audio_stop_sound(bgm_smwclear_castle)
audio_stop_sound(snd_NSMBU_clear)
audio_stop_sound(snd_NSMBU_clear_castle)
audio_stop_sound(scr_snd_switchsong())
audio_stop_sound(scr_snd_starman())
audio_stop_sound(snd_n64)
audio_stop_sound(scr_music_link())
global.timer = 0
if (room == rm_editor)
    global.powerup = 0
global.condiciones = 0
global.condiciones_type = 0
global.condiciones_object = 0
global.condiciones_count = 0
if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1 && room == rm_title)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}

