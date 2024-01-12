if (instance_exists(obj_mario_transform2) && ready_cap == 1)
    exit
if (cap_invisible == 1 || (instance_exists(obj_kuribo_drybones) && obj_kuribo_drybones.invincible == 1))
    visible = false
else if instance_exists(obj_mario)
{
    if (obj_mario.modo_vuelo == 1)
        visible = false
    else
        visible = true
}
else if instance_exists(obj_player_goal_smw)
    visible = true

