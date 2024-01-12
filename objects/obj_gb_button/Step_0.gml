var b;
if instance_exists(obj_guardabot)
    b = obj_guardabot.cont_scroll
else
    b = 1
y = (start_y - (((b - 2) * 50) * global.scroll_perc))

