if (os_type == os_android)
    visible = false	
switch global.jugador
{
	case 0:
		cursor = spr_cursor_mario
		break
	case 1:
		cursor = spr_cursor_luigi
		break
	case 2:
		cursor = spr_cursor_toad
		break
	case 3:
		cursor = spr_cursor_toadette
		break
}
msx = 0
msy = 0
position_resource = 0
dont_move = 0
image_speed = 0
image_index = 0
item_add = 0
item_add_temp = 0
move = 0
move_view = 0
anim_touch = 0
cont_add = 0
move_tuberia = 0
active_menu = 0
fast_clean = 0
can_clean = 0
i_index = 0
instance_create(x, y, obj_creation_preview)
global.select_resource = obj_resource_empty
global.size = 1
anim_right = 0
cont_panel_right = 0
anim_left = 0
cont_panel_left = 0
anim_top = 0
cont_panel_top = 0
anim_creator = 0
cont_panel_creator = 0
anim_bottom = 0
cont_panel_bottom = 0
copy = 1