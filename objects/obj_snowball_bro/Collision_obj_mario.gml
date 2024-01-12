if ((!instance_exists(obj_frozenmario)) && (!instance_exists(obj_invincibility)) && other.invincible == 0)
{
    audio_stop_sound(snd_NSMBU_snowball_freeze)
    audio_play_sound(snd_NSMBU_snowball_freeze, 0, false)
    with (instance_create(other.x, other.y, obj_smoke))
    {
        sprite_index = spr_NSMBU_smoke_foo
        image_speed = 0.5
    }
    var frozen = instance_create(other.x, other.y, obj_frozenmario)
    if instance_exists(obj_mario_pballon)
    {
        frozen.sprite = obj_mario_pballon.sprite_index
        frozen.index = obj_mario_pballon.image_index
        frozen.rotacion = obj_mario_pballon.image_angle
        frozen.direct = 1
    }
    else
    {
        frozen.sprite = other.sprite_index
        frozen.index = other.image_index
        frozen.direct = other.direct
    }
    if (global.powerup == 3 && instance_exists(obj_cap_mario))
    {
        frozen.cap_sprite = obj_cap_mario.sprite_index
        frozen.cap_index = obj_cap_mario.image_index
        frozen.cap_x = obj_cap_mario.pos_x
        frozen.cap_y = obj_cap_mario.pos_y
    }
    if instance_exists(obj_brickhelmet)
    {
        frozen.helmet_sprite = obj_brickhelmet.sprite_index
        frozen.helmet_index = obj_brickhelmet.image_index
        frozen.helmet_y = obj_brickhelmet.pos_y
    }
    else if instance_exists(obj_helmet_spiny)
    {
        frozen.helmet_sprite = obj_helmet_spiny.sprite_index
        frozen.helmet_index = obj_helmet_spiny.image_index
        frozen.helmet_y = obj_helmet_spiny.pos_y
    }
    else if instance_exists(obj_helmet)
    {
        frozen.helmet_sprite = obj_helmet.sprite_index
        frozen.helmet_index = obj_helmet.image_index
        frozen.helmet_y = obj_helmet.pos_y
    }
    frozen.helmet = other.helmet
    if (global.powerup == 0 || global.powerup == -85)
        frozen.sprite_index = spr_frozenblock_32x32_2
    with (other.id)
        instance_destroy()
    instance_destroy()
}


