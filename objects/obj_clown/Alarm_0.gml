if (sprite_index != s_clown_evil && sprite_index != s_clown_bounce && sprite_index != s_clown_evil_bounce && sprite_index != s_clown_damage)
{
    if (sprite_index == s_clown)
    {
        sprite_index = s_clown_eyes
        alarm[0] = 10
    }
    else
    {
        sprite_index = s_clown
        alarm[0] = (120 + random(round(120)))
    }
}
else
    alarm[0] = 30
