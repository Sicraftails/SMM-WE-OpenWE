state = 2
jump = 2
groundpount = 1
if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
    vspeed = -0.5
else
    vspeed = -6
hspeed = 0
audio_stop_sound(snd_NSMBU_bowserjr_jump)
audio_play_sound(snd_NSMBU_bowserjr_jump, 0, false)
audio_play_sound(snd_NSMBU_bowserjr_groundpount, 0, false)
