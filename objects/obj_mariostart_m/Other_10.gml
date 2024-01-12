if (global.apariencia == 3)
    sprite_index = spr_NSMBU_mariojump_start
else
{
    sprite_index = scr_mariojump()
    s_down = scr_mariodrop()
    s_idle = scr_marioidle()
}


