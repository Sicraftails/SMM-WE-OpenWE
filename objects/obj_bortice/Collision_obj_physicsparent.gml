var v1, v2, v3;
if (other.y < (y + 8))
{
    if (other.object_index == obj_jumppiranha && other.inup > 0)
        exit
    if ((!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_physicssolid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)))
    {
        if ((other.object_index != obj_grinder && other.object_index != obj_banzaibill && other.object_index != obj_billbanzai_red && other.object_index != obj_bulletbill && other.object_index != obj_bulletbull_red && other.object_index != obj_fireball && other.object_index != obj_snowball && other.object_index != obj_boo && other.object_index != obj_fire_clown && other.object_index != obj_fire_clown_small && other.object_index != obj_angrysun && other.object_index != obj_torbellino && other.object_index != obj_cap_mario && other.object_index != obj_helmet && other.object_index != obj_podoboo && other.object_index != obj_yoshifire && other.object_index != obj_yoshifire_one && other.object_index != obj_cannon && other.object_index != obj_cannon_red && other.object_index != obj_cannonball && other.object_index != obj_cannonball_red && other.object_index != obj_cannon && other.object_index != obj_bullebill_base && other.object_index != obj_player_goal_smb1 && other.object_index != obj_player_goal_smw_castle && other.object_index != obj_magikoopa && other.object_index != obj_pokey && other.object_index != obj_floruga && other.object_index != obj_floruga_body && other.object_index != obj_foo && other.object_index != obj_rocky && other.object_index != obj_piranhaplant && other.object_index != obj_lakitu) || (other.bbox_bottom < bbox_top && other.object_index == obj_player_goal_smb1 && (other.ready == 2 || other.ready == 3)) || (other.bbox_bottom < bbox_top && other.object_index == obj_player_goal_smw_castle && other.fall == 1))
        {
            if (other.object_index == obj_clown || other.object_index == obj_clown_fire)
            {
                v1 = 0.2
                v2 = 0.4
                v3 = 0.3
            }
            else
            {
                v1 = 0.4
                v2 = 3
                v3 = 2
            }
            if (other.vspeed > 0)
                other.vspeed -= v1
            else if (other.y <= (y - 92))
            {
                other.vspeed--
                if (other.vspeed < (-v2))
                    other.vspeed = (-v2)
            }
            else
            {
                other.vspeed--
                if (other.vspeed < (-v3))
                    other.vspeed = (-v3)
            }
        }
    }
}

