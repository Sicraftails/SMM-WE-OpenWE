var col_enemy;
col_enemy = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, bbox_top, obj_enemyparent, 1, 0)
if (col_enemy && col_enemy.hardness < 99 && col_enemy.object_index != obj_grinder && col_enemy.object_index != obj_piranhaplant && col_enemy.object_index != obj_rocky && col_enemy.object_index != obj_boo && col_enemy.object_index != obj_charginchuck && col_enemy.object_index != obj_NSMBU_charginchuck)
{
    with (col_enemy)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create(x, y, obj_score))
            event_user(0)
        if (object_index == obj_koopa || object_index == obj_koopa_red || object_index == obj_buzzybeetle || object_index == obj_spiny || object_index == obj_galoomba || object_index == obj_snow_ball_held || object_index == obj_shell_held)
            event_user(5)
        else if (object_index == obj_galoomba && global.apariencia == 2)
        {
            with (instance_create((x - 8), y, obj_galoomba_hold))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else if (object_index == obj_galoomba2 && global.apariencia == 2)
        {
            with (instance_create((x - 8), y, obj_galoomba_hold2))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else if (object_index == obj_bobomb || object_index == obj_bobomb_ready)
        {
            with (instance_create((x - 8), y, obj_bobomb_hold))
            {
                direct = other.direct
                vspeed = -2.2
            }
        }
        else
            event_user(0)
    }
}
switch global.apariencia
{
    case 0:
        switch sprite_index
        {
            case spr_SMB_empty_block:
                tipo = spr_SMB_shard_empty
                subimagen = image_index
                break
            case spr_SMB_qblock:
                tipo = spr_SMB_shard
                subimagen = image_index
                break
            case spr_SMB_block:
                tipo = spr_SMB_shard_item
                subimagen = 0
                break
            case spr_SMB_block_night:
                tipo = spr_SMB_shard_item
                subimagen = 1
                break
            case spr_SMB_block_dark:
                tipo = spr_SMB_shard_item
                subimagen = 2
                break
            case spr_SMB_block_snow:
                tipo = spr_SMB_shard_item
                subimagen = 3
                break
            case spr_SMB_block_ice:
                tipo = spr_SMB_shard_item
                subimagen = 4
                break
        }

        break
    case 1:
        switch sprite_index
        {
            case spr_SMB3_empty_block:
                tipo = spr_SMB3_shard
                subimagen = image_index
                break
            case spr_SMB3_qblock:
                tipo = spr_SMB3_shard
                subimagen = 0
                break
            case spr_SMB3_block:
                tipo = spr_SMB3_shard
                subimagen = 0
                break
            case spr_SMB3_qblock_night:
                tipo = spr_SMB3_shard
                subimagen = 1
                break
            case spr_SMB3_block_night:
                tipo = spr_SMB3_shard
                subimagen = 1
                break
            case spr_SMB3_qblock_dark:
                tipo = spr_SMB3_shard
                subimagen = 2
                break
            case spr_SMB3_block_dark:
                tipo = spr_SMB3_shard
                subimagen = 2
                break
            default:
                tipo = spr_SMB3_shard
                subimagen = 3
                break
        }

        break
    case 2:
        subimagen = 0
        if (sprite_index == spr_qblock_empty)
            tipo = spr_shard_th
        else
            tipo = spr_shard
        break
    case 3:
        switch sprite_index
        {
            case spr_NSMBU_qblock_empty:
                tipo = spr_NSMBU_shard
                subimagen = 0
                break
            case spr_NSMBU_block:
                tipo = spr_NSMBU_shard
                subimagen = 0
                break
            case spr_NSMBU_block_night:
                tipo = spr_NSMBU_shard
                subimagen = 1
                break
            case spr_NSMBU_block_dark:
                tipo = spr_NSMBU_shard
                subimagen = 2
                break
            default:
                tipo = spr_NSMBU_shard
                subimagen = 0
        }

        break
}

audio_stop_sound(scr_snd_break())
audio_play_sound(scr_snd_break(), 0, false)
with (instance_create((x + 4), (y + 4), obj_shard))
{
    motion_set(45, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 1
}
with (instance_create((x + 4), (y + 12), obj_shard))
{
    motion_set(60, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 1
}
with (instance_create((x + 12), (y + 12), obj_shard))
{
    motion_set(120, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 0
}
with (instance_create((x + 12), (y + 4), obj_shard))
{
    motion_set(135, 5)
    sprite_index = other.tipo
    image_index = other.subimagen
    dir = 0
}
instance_destroy()

