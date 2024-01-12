if (place_meeting(x, (y + 16), obj_ground) || place_meeting(x, (y + 16), obj_parent_resource_block) || place_meeting(x, (y + 16), obj_bullebill_base_res) || place_meeting(x, (y + 16), obj_muncher_res) || place_meeting(x, (y + 16), obj_nube_res) || place_meeting(x, (y + 16), obj_donut_res) || place_meeting(x, (y + 16), obj_thwomp_res) || place_meeting(x, (y + 16), obj_icicle_res) || place_meeting(x, (y + 16), obj_icicle2_res) || place_meeting(x, (y + 16), obj_mini_icicle_res) || place_meeting(x, (y + 16), obj_mini_icicle2_res) || place_meeting(x, (y + 16), obj_spring_land_res))
{
    u = 0
    d = 1
    l = 0
    r = 0
    if (direct > 4)
        direct = 2
}
else if (place_meeting(x, (y - 16), obj_ground) || place_meeting(x, (y - 16), obj_parent_resource_block))
{
    u = 1
    d = 0
    l = 0
    r = 0
    if (direct != 0 && direct != 4 && direct != 5 && direct != 6 && direct != 7)
        direct = 6
}
else if (place_meeting((x - 16), y, obj_ground) || place_meeting((x - 16), y, obj_parent_resource_block))
{
    u = 0
    d = 0
    l = 1
    r = 0
    if (direct != 0 && direct != 1 && direct != 2 && direct != 6 && direct != 7)
        direct = 0
}
else if (place_meeting((x + 16), y, obj_ground) || place_meeting((x + 16), y, obj_parent_resource_block))
{
    u = 0
    d = 0
    l = 0
    r = 1
    if (direct != 2 && direct != 3 && direct != 4 && direct != 5 && direct != 6)
        direct = 4
}
else
{
    u = 0
    d = 1
    l = 0
    r = 0
    if (direct > 4)
        direct = 2
}
