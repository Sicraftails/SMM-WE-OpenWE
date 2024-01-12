var spd;
if (hold == 0 && ready == 0 && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    if (other.sprite_index == spr_SMB_shell_empty || other.sprite_index == spr_SMB_shell_empty_night || other.sprite_index == spr_SMB3_shell_empty || other.sprite_index == spr_SMB3_shell_empty_night || other.sprite_index == spr_shell_buzzy_empty || other.sprite_index == spr_NSMBU_shell_buzzy_empty)
        hold_obj = instance_create(other.x, other.y, obj_shell_empty)
    else if (other.sprite_index == spr_SMB_shell_empty_spiny || other.sprite_index == spr_SMB3_shell_spiny_empty || other.sprite_index == spr_shell_spiny_empty || other.sprite_index == spr_NSMBU_shell_spiny_empty)
        hold_obj = instance_create(other.x, other.y, obj_spiny_empty)
    else
    {
        hold_obj = instance_create(other.x, other.y, obj_shell)
        hold_obj.sprite_index = other.sprite_index
        hold_obj.koopainside = other.koopainside
        hold_obj.flip = other.flip
        if (global.apariencia == 2)
        {
            if (other.koopainside != 0)
            {
                hold_obj.koopainside = other.koopainside
                hold_obj.alarm[3] = 540
                hold_obj.alarm[4] = 600
            }
        }
        else if (other.koopainside != 0)
        {
            hold_obj.koopainside = other.koopainside
            hold_obj.alarm[3] = 540
            hold_obj.alarm[4] = 640
        }
    }
    posx = sprite_get_xoffset(hold_obj.sprite_index)
    if (posx != 0)
        posx = 0
    else
        posx = 8
    posy = 9
    release = 1
    alarm[1] = 30
    if (other.hspeed > 3)
        spd = 3
    else if (other.hspeed < -3)
        spd = -3
    else
        spd = other.hspeed
    knopen_xspeed[segmenten] = spd
    with (other.id)
        instance_destroy()
}


