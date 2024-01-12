/// @description Mario's wall climbing + wall jumping step event
//If Mario reaches the floor
if collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1.5,obj_solidtop,0,0)
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1.5,obj_slopeparent,1,0)
{

    //Switch to the jump state
    state = 2

    //Disable variable jumping
    jumpnow = 0

    //Do not execute the rest of this event
    exit

}