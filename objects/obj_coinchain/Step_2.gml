sprite_index = spr_coin
if keyboard_check_pressed(vk_up)
    nextdir = 90
else if keyboard_check_pressed(vk_down)
    nextdir = 270
else if keyboard_check_pressed(vk_left)
    nextdir = 180
else if keyboard_check_pressed(vk_right)
    nextdir = 0

