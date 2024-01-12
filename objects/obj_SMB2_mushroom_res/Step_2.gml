if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB2_mushroom
            break
        case 1:
			global.smb2mush = 0
            instance_change(obj_mushroom_res, false);
            break
        case 2:
			global.smb2mush = 0
            instance_change(obj_mushroom_res, false);
            break
        case 3:
			global.smb2mush = 0
            instance_change(obj_mushroom_res, false);
            break
    }

}

