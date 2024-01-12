if (other.sprite_index == spr_SMB_link_shield && ready == 0 && ((other.direct == 1 && (x + 8) > other.x) || (other.direct == -1 && (x + 8) < other.x)))
{
    audio_play_sound(snd_SMB_link_guardbullet, 0, false)
    with (other.id)
        hspeed = (-((2 * direct)))
    ready = 1
    exit
}
else if (ready == 0)
{
    with (other.id)
        event_user(0)
}


