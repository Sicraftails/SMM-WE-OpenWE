if (place_meeting(x, (y + 16), obj_ground) || place_meeting(x, (y + 16), obj_block_res) || place_meeting(x, (y + 16), obj_qblock_res) || place_meeting(x, (y + 16), obj_rock_res) || place_meeting(x, (y + 16), obj_ice_res) || place_meeting(x, (y + 16), obj_onoffplatform_res) || place_meeting(x, (y + 16), obj_onoffblock_res) || place_meeting(x, (y + 16), obj_pinchos_res))
    d2 = 1
else
    d2 = 0
if (place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_block_res) || place_meeting(x, (y - 16), obj_qblock_res) || place_meeting(x, (y - 16), obj_rock_res) || place_meeting(x, (y - 16), obj_ice_res) || place_meeting(x, (y - 16), obj_onoffblock_res) || place_meeting(x, (y - 16), obj_onoffplatform_res) || place_meeting(x, (y - 16), obj_pinchos_res))
    u2 = 1
else
    u2 = 0
if (place_meeting((x - 16), y, obj_ground) || place_meeting((x - 16), y, obj_block_res) || place_meeting((x - 16), y, obj_qblock_res) || place_meeting((x - 16), y, obj_rock_res) || place_meeting((x - 16), y, obj_ice_res) || place_meeting((x - 16), y, obj_onoffblock_res) || place_meeting((x - 16), y, obj_onoffplatform_res) || place_meeting((x - 16), y, obj_pinchos_res))
    l2 = 1
else
    l2 = 0
if (place_meeting((x + 16), y, obj_ground) || place_meeting((x + 16), y, obj_block_res) || place_meeting((x + 16), y, obj_qblock_res) || place_meeting((x + 16), y, obj_rock_res) || place_meeting((x + 16), y, obj_ice_res) || place_meeting((x + 16), y, obj_onoffblock_res) || place_meeting((x + 16), y, obj_onoffplatform_res) || place_meeting((x + 16), y, obj_pinchos_res))
    r2 = 1
else
    r2 = 0
