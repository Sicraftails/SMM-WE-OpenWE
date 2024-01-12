if (global.lives > 1 || global.dsm == 0){
instance_activate_all()
instance_activate_object(obj_mario)
if sprite_exists(back)
    sprite_delete(back)
if instance_exists(obj_cursor)
{
    with (obj_cursor)
        instance_destroy()
}
global.checkpoint = -4
global.checkpointroom = -4
global.checkpoint_x = 0
global.checkpoint_y = 0
global.pinkcoins_count = 0
global.pink_coins = 0
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
with (obj_levelmanager)
    switchon = 0
with (obj_persistent)
    alarm[6] = -1
global.ms_check = 0
if audio_is_paused(music)
    audio_stop_sound(music)
if audio_is_paused(scr_snd_starman())
    audio_stop_sound(scr_snd_starman())
if audio_is_paused(scr_snd_switchsong())
    audio_stop_sound(scr_snd_switchsong())
if audio_is_paused(scr_music_link())
    audio_resume_sound(scr_music_link())
if audio_is_paused(scr_snd_dead())
    audio_stop_sound(scr_snd_dead())
if audio_is_paused(scr_snd_hurryup())
    audio_stop_sound(scr_snd_hurryup())
if audio_is_paused(bgm_sm1clear)
    audio_stop_sound(bgm_sm1clear)
if audio_is_paused(snd_SMB_clear_superball)
    audio_stop_sound(snd_SMB_clear_superball)
if audio_is_paused(snd_SMB3_course_clear)
    audio_stop_sound(snd_SMB3_course_clear)
if audio_is_paused(bgm_smwclear)
    audio_stop_sound(bgm_smwclear)
if audio_is_paused(snd_SMB_course_clear_castle)
    audio_stop_sound(snd_SMB_course_clear_castle)
if audio_is_paused(snd_SMB3_course_clear_castle)
    audio_stop_sound(snd_SMB3_course_clear_castle)
if audio_is_paused(bgm_smwclear_castle)
    audio_stop_sound(bgm_smwclear_castle)
if audio_is_paused(scr_snd_skid())
    audio_stop_sound(scr_snd_skid())
if audio_is_paused(snd_pmeter)
    audio_stop_sound(snd_pmeter)
if audio_is_paused(snd_boomboom_ruleta)
    audio_stop_sound(snd_boomboom_ruleta)
if global.dsm = 1
	global.coins = 0	
scr_restart()
instance_destroy()
}