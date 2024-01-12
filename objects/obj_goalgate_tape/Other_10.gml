var mario_y;
if !audio_is_playing(bgm_smwclear)
	audio_play_sound(bgm_smwclear, 0, false)
with (obj_goalgate)
    alarm[1] = 560
if (room != rm_editor)
{
    if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
    {
        with (obj_persistent)
        {
            event_user(4)
            event_user(5)
        }
    }
}
if instance_exists(obj_mario)
{
    if (bonus == 1)
    {
        myscore = instance_create((x - 8), y, obj_score)
        with (myscore)
            visible = false
        mario_y = (obj_mario.y + 16)
        if (mario_y < (ystart + 5))
        {
            with (myscore)
                event_user(7)
            bonus_a = 2
            bonus_b = 5
        }
        else if (mario_y < (ystart + 41))
        {
            with (myscore)
                event_user(11)
            bonus_a = 4
            bonus_b = 0
        }
        else if (mario_y < (ystart + 65))
        {
            with (myscore)
                event_user(11)
            bonus_a = 4
            bonus_b = 0
        }
        else if (mario_y < (ystart + 89))
        {
            with (myscore)
                event_user(10)
            bonus_a = 2
            bonus_b = 5
        }
        else if (mario_y < (ystart - 113))
        {
            with (myscore)
                event_user(9)
            bonus_a = 1
            bonus_b = 0
        }
        else
        {
            with (myscore)
                event_user(8)
            bonus_a = -1
            bonus_b = 5
        }
        with (obj_goalgate_front)
        {
            bonus = 1
            bonus_a = other.bonus_a
            bonus_b = other.bonus_b
            alarm[0] = 210
            alarm[1] = 1
        }
    }
    with (obj_mario)
    {
        with (instance_create(x, y, obj_player_goal_smw))
        {
            vspeed = other.vspeed
            direct = other.direct
            swim = other.isswim
            if instance_exists(obj_helmet_spiny)
                helmet = 2
            else if instance_exists(obj_helmet)
                helmet = 1
            sprite_index = other.sprite_index
        }
        instance_destroy()
    }
}
with (instance_create((x + 16), (y - 16), obj_smoke))
    sprite_index = spr_smokethwomp
instance_destroy()

