/*
audio_bus_main.effects[0] = undefined;
/**/
global.powerup = 0
global.mariostart = 0
global.modojuego = 0
global.level_g = 1
c_cont = make_colour_rgb(255, 215, 91)
active = 1
instance_create((camera_get_view_x(view_get_camera(0)) + 361), camera_get_view_y(view_get_camera(0)) + 4, obj_menu_editor_ext)
instance_create(376, 58, obj_scrollbar2)
can_anim = 1
anim = 0
audio_play_sound(snd_guardabot, 99, true)
pos_x = 38
pos_y = 55
list_post = 0
cont_scroll = 1
my_list = ds_list_create()
if global.idioma = 1
	gb_head = spr_guardabot_head_en
else if global.idioma = 3
	gb_head = spr_guardabot_head_it
else if global.idioma = 4
	gb_head = spr_guardabot_head_ch
else
	gb_head = spr_guardabot_head
gb_text_level = scr_language(172)
for (fname = file_find_first((global.directorio + "*.swe"), 0); fname != ""; fname = file_find_next())
    ds_list_add(my_list, fname)
cantidad = string(ds_list_size(my_list))
if (cantidad > 9)
    can_x = 306
else
    can_x = 310
event_user(0)
alarm[0] = 60

