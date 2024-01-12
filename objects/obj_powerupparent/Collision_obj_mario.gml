if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
if (global.powerup == 0 && (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solid, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_hurtsolid2, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)))
{
    if (other.holding == 2 && (global.apariencia == 2 || global.apariencia == 4))
    {
        other.isduck = 1
        other.isduckhold = 1
    }
    else
        other.isduck = 1
}
with (instance_create(x, y, obj_score))
    event_user(3)
if (global.apariencia == 3)
{
    with (instance_create((x + 8), y, obj_smoke))
    {
        sprite_index = spr_NSMBU_effect_powerup
        image_speed = 0.25
        depth = -10
    }
}
if (global.powerup != scr_sprite_get_constant(sprite_index))
{
    other.vspeed = 0
    other.gravity = 0
    if (global.powerup == 0)
    {
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
            }
            if (object_index == obj_superflower)
            {
                audio_stop_sound(snd_SMB_powerup_superflower)
                audio_play_sound(snd_SMB_powerup_superflower, 0, false)
            }
            else if (object_index == obj_megamushroom)
            {
                audio_stop_sound(snd_SMB_powerup_supermushroom)
                audio_play_sound(snd_SMB_powerup_supermushroom, 0, false)
            }
            else
            {
                audio_stop_sound(scr_snd_powerup())
                audio_play_sound(scr_snd_powerup(), 0, false)
            }
        }
    }
    else if (global.powerup == 3)
    {
        if instance_exists(obj_mario)
        {
            if instance_exists(obj_cap_mario)
            {
                with (obj_cap_mario)
                {
                    cap_invisible = 1
                    visible = false
                }
            }
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                cap = 2
                sprite_powerup = other.sprite_index
            }
            audio_stop_sound(scr_snd_powerup())
            audio_play_sound(scr_snd_powerup(), 0, false)
        }
    }
    else
    {
        if (global.powerup == -50 || global.powerup == -85)
            obj_levelmanager.mchange = 3
        if instance_exists(obj_mario)
        {
            with (instance_create(0, 0, obj_mario_transform2))
            {
                c_powerup = 1
                sprite_powerup = other.sprite_index
            }
            if (object_index == obj_megamushroom)
            {
                audio_stop_sound(snd_SMB_powerup_supermushroom)
                audio_play_sound(snd_SMB_powerup_supermushroom, 0, false)
            }
            else
            {
                audio_stop_sound(scr_snd_powerup())
                audio_play_sound(scr_snd_powerup(), 0, false)
            }
        }
    }
}
else if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_powerup_second)
    audio_play_sound(snd_NSMBU_powerup_second, 0, false)
}
else
{
    audio_stop_sound(scr_snd_powerup())
    audio_play_sound(scr_snd_powerup(), 0, false)
}
instance_destroy()
