if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
if (global.powerup == 0 && (collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_solid, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_pinchos, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(other.bbox_left, (other.bbox_top - 16), other.bbox_right, other.bbox_top, obj_muncher, 1, 0)))
    other.isduck = 1
with (instance_create(x, y, obj_score))
    event_user(3)
audio_stop_sound(snd_hen_powerup)
audio_stop_sound(snd_SMB_powerup_superflower)
audio_stop_sound(snd_SMB_powerup_supermushroom)
audio_stop_sound(snd_SMB3_powerup)
if (global.powerup == -50)
    obj_levelmanager.mchange = 3
if (global.powerup == -78)
    audio_play_sound(scr_snd_powerup(), 0, false)
else
{
    audio_play_sound(snd_hen_powerup, 0, false)
    if instance_exists(obj_mario)
    {
        with (instance_create(0, 0, obj_mario_transform2))
        {
            c_powerup = 1
            small = 1
            sprite_powerup = other.sprite_index
        }
    }
}
instance_destroy()

