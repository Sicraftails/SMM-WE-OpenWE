var bullet_base, physolido, solidphy, spd;
if (other.object_index == obj_jumppiranha && other.inup > 0)
    exit
if (((!held) && other.object_index != obj_banzaibill && other.object_index != obj_billbanzai_red && other.object_index != obj_bulletbill && other.object_index != obj_bulletbull_red && other.object_index != obj_fire_clown && other.object_index != obj_cap && other.object_index != obj_podoboo && other.object_index != obj_angrysun && other.object_index != obj_yoshifire && other.object_index != obj_yoshifire_one && other.object_index != obj_cheepcheep && other.object_index != obj_thwomp && other.object_index != obj_grinder && other.object_index != obj_boo && other.object_index != obj_cannonball && other.object_index != obj_cannonball_red && other.object_index != obj_helmet && other.object_index != obj_helmet_spiny && other.object_index != obj_player_goal_smb1 && other.object_index != obj_player_goal_smw_castle && other.object_index != obj_magikoopa && other.object_index != obj_piranhaplant && other.object_index != obj_rocky && other.object_index != obj_lakitu) || (other.object_index == obj_player_goal_smb1 && (other.ready == 2 || other.ready == 3)) || (other.object_index == obj_player_goal_smw_castle && other.fall == 1))
{
    if (other.bbox_bottom < ((bbox_top - vspeed) + 8) && other.vspeed > 0)
    {
        bullet_base = collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)
        physolido = collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_physicssolid, 1, 0)
        solidphy = collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0)
        if ((!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solid, 1, 0)) && ((!bullet_base) || (bullet_base && bullet_base.id == other.id)) && ((!physolido) || (physolido && physolido.id == other.id)) && ((!solidphy) || (solidphy && solidphy.id == other.id)))
            spd = 5.225
        else
            spd = 0.5
        if (other.object_index == obj_clown || other.object_index == obj_clown_fire || (other.object_index == obj_jumppiranha && global.apariencia == 2))
            spd = (spd / 3.5)
        if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && other.y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
            other.vspeed = (-(spd / 2))
        else
            other.vspeed = (-spd)
        if (image_speed == 0)
            image_speed = 0.3
        if (!outside_view())
        {
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
        }
    }
}

