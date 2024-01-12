if (global.powerup == -82)
{
    sprite_index = spr_helmet_pballoon
    image_speed = 0
    image_index = 1
    return;
}
if (global.apariencia == 0)
{
    if (global.powerup == 0 || global.powerup == -78 || global.powerup == -85)
        sprite_index = spr_SMB_helmet_spiny_small
    else if (global.powerup == -77)
        sprite_index = spr_SMB_helmet_spiny_mega
    else
        sprite_index = spr_SMB_helmet_spiny_big
    image_index = 0
}
else if (global.apariencia == 1)
{
    if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
    {
        if (global.powerup == 0)
        {
            sprite_index = spr_SMB3_helmet_spiny_small_climb
            image_index = 0
        }
        else
        {
            sprite_index = spr_SMB3_helmet_spiny_round
            image_index = 2
        }
    }
    else if instance_exists(obj_spinner)
    {
        sprite_index = spr_SMB3_helmet_spiny_round
        image_index = obj_spinner.image_index
    }
    else if (global.powerup == 0)
    {
        sprite_index = spr_SMB3_helmet_spiny_small
        image_index = 0
    }
    else
    {
        sprite_index = spr_SMB3_helmet_spiny_big
        image_index = 0
    }
}
if (global.apariencia == 2)
{
    if instance_exists(obj_yoshi2)
    {
        sprite_index = spr_helmet_spiny_yoshi
        image_index = 0
    }
    else if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
    {
        sprite_index = spr_helmet_spiny
        image_index = 3
    }
    else if (instance_exists(obj_mario) && (obj_mario.stompstyle == 1 || obj_mario.caped > 0))
    {
        sprite_index = spr_helmet_spiny
        image_index = obj_mario.image_index
    }
    else if (instance_exists(obj_mario) && (obj_mario.isup == 1 || obj_mario.isuphold == 1) && obj_mario.state == 0)
    {
        sprite_index = spr_helmet_spiny_up
        image_index = 0
    }
    else
    {
        sprite_index = spr_helmet_spiny
        image_index = 0
    }
}
