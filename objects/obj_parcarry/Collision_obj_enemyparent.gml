if ((ready == 1) && ((inmune == 0) && (bill == 0)))
{
    if ((held == 0) && ((other.hardness < 99) && ((other.sprite_index != spr_beachkoopa) && (other.sprite_index != spr_beachkoopa_red))))
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (other.id)
            event_user(0)
        event_user(0)
    }
}
else if ((ready == 1) && ((inmune == 1) && (bill == 0)))
{
    if ((held == 1) && (other.hardness < 99))
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (other.id)
            event_user(0)
        event_user(0)
    }
}

