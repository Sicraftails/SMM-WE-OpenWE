hspeed = 0
if (sprite_index == spr_bowser_walk || sprite_index == spr_SMB3_bowser_dead || sprite_index == spr_bowser_walk)
{
    gravity = 0.1
    if (vspeed > 0.05)
        vspeed = 0.04
}
else
{
    gravity = 0.03
    if (vspeed > 0.03)
        vspeed = 0.03
}
if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 16) && obj_lava_water.vspeed > 0)
    y = (obj_lava_water.y + 16)
if (y >= (room_height + 16) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1))))
    instance_destroy()

