if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
if (global.powerup == 0 && (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solid, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_pinchos, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_muncher, 1, 0)))
{
    if (other.holding == 2 && global.apariencia == 2)
    {
        other.isduck = 1
        other.isduckhold = 1
    }
    else
        other.isduck = 1
}
with (instance_create(x, y, obj_score))
    event_user(3)
if (global.apariencia == 1)
{
    if (global.powerup == 0)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
                audio_play_sound(snd_changeleaf, 0, false)
            }
        }
    }
    else if (global.powerup == 2 || global.powerup == -46)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
                audio_play_sound(snd_changeleaf, 0, false)
            }
        }
    }
    else if (global.powerup == 1)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
                audio_play_sound(snd_changeleaf, 0, false)
            }
        }
    }
    else
        audio_play_sound(scr_snd_powerup(), 0, false)
}
else if (global.apariencia == 2)
{
    if (global.powerup == 0)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create(other.x, other.y, obj_cap_mario)
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                cap = 1
                sprite_powerup = other.sprite_index
                audio_play_sound(snd_powerup_cap, 0, false)
            }
        }
    }
    else if (global.powerup == 2)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create(other.x, other.y, obj_cap_mario)
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                cap = 1
                sprite_powerup = spr_cap
                audio_play_sound(snd_powerup_cap, 0, false)
            }
        }
    }
    else if (global.powerup == 1)
    {
        if (obj_mario.holding != 2)
            obj_mario.holding = 0
        instance_create(other.x, other.y, obj_cap_mario)
        instance_create((obj_mario.x - 8), (obj_mario.y + 8), obj_smoke_cap)
        global.powerup = 3
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                cap = 1
                audio_play_sound(snd_powerup_cap, 0, false)
            }
        }
    }
    else
        audio_play_sound(snd_powerup, 0, false)
}
instance_destroy()

