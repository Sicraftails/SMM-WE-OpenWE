s = (filter + 1)
display_reset(0, 0)
window_set_size((global.gw * s), (global.gh * s))
display_set_gui_size((global.gw * s), (global.gh * s))
surface_resize(application_surface, (global.gw * 2), (global.gh * 2))
alarm[2] = 1

