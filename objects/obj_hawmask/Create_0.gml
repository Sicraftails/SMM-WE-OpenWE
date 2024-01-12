if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
    sprite_index = spr_SMB2_hawmask_night
image_speed = 0
image_index = 0
ready = 0
ready2 = 0
solido = instance_create((x + 16), y, obj_solid)
with (solido)
    image_yscale = 4
if (global.modo_noche == 1)
    sprite_cover = spr_SMB2_goal_ground_night
else
    sprite_cover = spr_SMB2_goal_ground
if (global.bg_level == "underground")
    index_cover = 1
else if (global.bg_level == "castle")
    index_cover = 2
else if (global.bg_level == "underwater")
    index_cover = 3
else if (global.bg_level == "ghost")
    index_cover = 4
else if ((global.bg_level == "airship") || (global.bg_level == "sky"))
    index_cover = 5
else if (global.bg_level == "desert")
    index_cover = 6
else if (global.bg_level == "forest")
    index_cover = 7
else if (global.bg_level == "snow")
    index_cover = 8
else
    index_cover = 0

