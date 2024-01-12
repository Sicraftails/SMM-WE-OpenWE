s_down = spr_NSMBU_mariojump_start
s_idle = spr_NSMBU_mariojump_start
event_user(0)
if (global.apariencia == 3)
{
    image_speed = 0.5
    posyy = 109
}
else
{
    image_speed = 0
    image_index = 0
    posyy = 83
}
event_user(1)
vspeed = -5.1
draw_lives = 0
ready = 0


