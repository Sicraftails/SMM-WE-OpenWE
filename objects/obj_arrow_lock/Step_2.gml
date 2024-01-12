if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1 && place_meeting(x, y, obj_parent_resource) && (!((place_meeting(x, y, id) && instance_exists(obj_cursor) && obj_cursor.move == 1))))
    visible = true
else
    visible = false
if instance_exists(obj_ground2)
{
    x = obj_ground2.x
    y = (obj_ground2.y - 48)
}


