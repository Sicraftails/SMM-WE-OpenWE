var val;
if (vspeed == 0 && state == 1 && jump == 0 && fire_anim == 0 && multi_fire == 0 && turning == 0)
{
    val = choose(0, 1)
    if ((sprite_index == spr_NSMBU_bowser_walk && image_index > 3) || val == 0)
    {
        alarm[3] = 5
        exit
    }
    audio_stop_sound(snd_NSMBU_bowser_multifire)
    audio_play_sound(snd_NSMBU_bowser_multifire, 0, false)
    multi_fire = 1
}
else
    alarm[3] = 60

