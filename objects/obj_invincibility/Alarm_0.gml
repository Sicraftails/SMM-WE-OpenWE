audio_stop_sound(scr_snd_starman())
with (obj_levelmanager)
    alarm[0] = 1

//Give Mario temporary invincibility + disable flashing effects
with (obj_mario)
{
    isflashing = 0
    invincible = 1
    event_user(6)
}

//Destroy
instance_destroy()