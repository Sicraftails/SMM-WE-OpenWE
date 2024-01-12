var block_col = place_meeting(x, y, obj_blockparent)
var rock_col = place_meeting(x, y, obj_rockparent)
var solid_col = place_meeting(x, y, obj_solidtop)
if block_col or rock_col or solid_col
event_user(1)