x = (camera_get_view_x(view_get_camera(0)) + x_pos)
y = (camera_get_view_y(view_get_camera(0)) - obj_cursor.anim_top)
if (instance_exists(obj_card_block_sounds) && obj_card_block_sounds.modo_sonidos == 1)
{
    sprite_card = spr_cards_sounds
    s_card_top = spr_cardtop_sounds
}
else
{
    switch global.apariencia
    {
        case 0:
            sprite_card = spr_cards_SMB
            break
        case 1:
            sprite_card = spr_cards_SMB3
            break
        case 2:
            sprite_card = spr_cards_SMW
            break
        case 3:
            sprite_card = spr_cards_NSMBU
            break
    }

    s_card_top = spr_card_top
}
if (obj_levelmanager.editor_sonidos == 0)
{
    var b = instance_number(obj_bowser_res)
    var bjr = instance_number(obj_bowserjr_res)
    var boss = (b + bjr)
    if ((obj == obj_pink_coin_res && instance_number(obj_pink_coin_res) > 4) || (obj == obj_angrysun_res && instance_number(obj_angrysun_res) > 0) || (obj == obj_checkpoint_res && instance_number(obj_checkpoint_res) > 0) || ((obj == obj_bowser_res || obj == obj_bowserjr_res) && boss > 2) || (obj == obj_boomboom_res && instance_number(obj_boomboom_res) > 4) || (obj == obj_boomboom_b_res && instance_number(obj_boomboom_b_res) > 4) || (obj == obj_door_res && instance_number(obj_door_res) > 3) || (obj == obj_door_switch_res && instance_number(obj_door_switch_res) > 3) || (obj == obj_door_lock_res && instance_number(obj_door_lock_res) > 3) || (obj == obj_door_lock_res && instance_number(obj_tuberia_res) > 10))
    {
        if (disabled == 0)
        {
            disabled = 1
            global.select_resource = obj_resource_empty
        }
        active = 0
    }
    else
        disabled = 0
}
if (active == 0)
    sprite_index = spr_card_item
else
    sprite_index = spr_card_item_selected