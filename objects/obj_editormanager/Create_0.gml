instance_create((camera_get_view_x(view_get_camera(0)) + 346), (camera_get_view_x(view_get_camera(0)) + 100), obj_expand_panels)
instance_create((camera_get_view_x(view_get_camera(0)) + 58), (camera_get_view_x(view_get_camera(0)) + 100), obj_expand_panels_left)
instance_create((camera_get_view_x(view_get_camera(0)) + 181), (camera_get_view_x(view_get_camera(0)) + 34), obj_expand_paneles_top)
can_move = 0
with (obj_levelmanager)
    alarm[2] = -1
camera_set_view_target(view_get_camera(0), id)
global.modojuego = 0
velocidad = 4
move_velocity = 0
expand_open = 0
anim_goma = 0
card1 = 0
card2 = 0
card3 = 0
card4 = 0
card5 = 0
card6 = 0
card7 = 0
card8 = 0
card9 = 0
card10 = 0
card11 = 0
card12 = 0
card1_s = 0
card2_s = 0
card3_s = 0
audio_stop_sound(snd_music_ground)
global.timer = 0
global.mariostart = 0
global.carrieditem = -4
global.carriedsprite = -4
global.shallihold = 0
global.pswitch = 0
global.star = 0
global.onoffblock = 0
global.died = 0
zoom = 0
OW = camera_get_view_width(view_get_camera(0))
OH = camera_get_view_height(view_get_camera(0))
panel_circle = 0
door_symbol_1 = 0
door_symbol_2 = 0
door_symbol_3 = 0
door_symbol_4 = 0
door_p_symbol_1 = 0
door_p_symbol_2 = 0
door_p_symbol_3 = 0
door_p_symbol_4 = 0
door_l_symbol_1 = 0
door_l_symbol_2 = 0
door_l_symbol_3 = 0
door_l_symbol_4 = 0
alarm[2] = 1

