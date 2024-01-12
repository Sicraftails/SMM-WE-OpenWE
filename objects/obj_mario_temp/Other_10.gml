if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        if ((!place_meeting(x, (y + 16), obj_solidtop)) && (!place_meeting(x, (y + 32), obj_solidtop)) && (!place_meeting(x, (y + 48), obj_solidtop)) && (!place_meeting(x, (y + 64), obj_solidtop)) && (!place_meeting(x, (y + 96), obj_solidtop)) && (!place_meeting(x, (y + 112), obj_solidtop)) && (!place_meeting(x, (y + 128), obj_solidtop)) && (!place_meeting(x, (y + 144), obj_solidtop)) && (!place_meeting(x, (y + 160), obj_solidtop)) && (!place_meeting(x, (y + 176), obj_solidtop)) && (!place_meeting(x, (y + 192), obj_solidtop)) && (!place_meeting(x, (y + 208), obj_solidtop)) && (!place_meeting(x, (y + 224), obj_solidtop)) && (!place_meeting(x, (y + 240), obj_solidtop)) && (!place_meeting(x, (y + 256), obj_solidtop)) && (!place_meeting(x, (y + 272), obj_solidtop)) && (!place_meeting(x, (y + 16), obj_slopeparent)) && (!place_meeting(x, (y + 32), obj_slopeparent)) && (!place_meeting(x, (y + 48), obj_slopeparent)) && (!place_meeting(x, (y + 64), obj_slopeparent)) && (!place_meeting(x, (y + 96), obj_slopeparent)) && (!place_meeting(x, (y + 112), obj_slopeparent)) && (!place_meeting(x, (y + 128), obj_slopeparent)) && (!place_meeting(x, (y + 144), obj_slopeparent)) && (!place_meeting(x, (y + 160), obj_slopeparent)) && (!place_meeting(x, (y + 176), obj_slopeparent)) && (!place_meeting(x, (y + 192), obj_slopeparent)) && (!place_meeting(x, (y + 208), obj_slopeparent)) && (!place_meeting(x, (y + 224), obj_slopeparent)) && (!place_meeting(x, (y + 240), obj_slopeparent)) && (!place_meeting(x, (y + 256), obj_slopeparent)) && (!place_meeting(x, (y + 272), obj_slopeparent)) && global.bg_level != "underwater")
            instance_create((x - 24), (y + 32), obj_platform_help)
    }
}

