event_inherited()
if (convertirse == 1)
{
    if audio_is_playing(scr_snd_switchsong())
    {
        with (instance_create(x, ystart, obj_coin))
            convertirse = 0
        instance_destroy()
    }
}
else if (convertirse == 0)
{
    if (!audio_is_playing(scr_snd_switchsong()))
    {
        with (instance_create(x, ystart, obj_coin))
            convertirse = 1
        instance_destroy()
    }
}
if place_meeting(x, y, obj_skewertrunk)
{
    alarm[2] = 1
}
if (ready == 0 && global.powerup != 0 && global.yoshi == 0 && instance_exists(obj_mario) && obj_mario.stompstyle == 1 && global.apariencia == 2 && obj_mario.vspeed > 0 && place_meeting(x, (y - (obj_mario.vspeed * 2.5)), obj_mario))
{
    audio_play_sound(snd_break, 0, false)
    with (obj_mario)
        event_user(1)
    instance_destroy()
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(45, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(60, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(120, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(135, 6)
        sprite_index = spr_shard
    }
}
if (ready == 0 && global.apariencia == 3 && global.yoshi == 0 && instance_exists(obj_marioU) && obj_marioU.helice_fly == 4 && obj_marioU.vspeed > 1 && place_meeting(x, (y - (obj_marioU.vspeed * 2.5)), obj_marioU))
{
    audio_play_sound(snd_NSMBU_break, 0, false)
	with (obj_marioU)
		vspeed = 0
    instance_destroy()
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(45, 6)
        sprite_index = spr_NSMBU_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(60, 6)
        sprite_index = spr_NSMBU_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(120, 6)
        sprite_index = spr_NSMBU_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(135, 6)
        sprite_index = spr_NSMBU_shard
    }
}
/*
//Flying block
    if (y > (ystart + 16))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 16))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
	/**/