var left, right, up, down, diff;
if (instance_exists(obj_mario) && (collision_rectangle((bbox_left - 2), (bbox_top - 1), (bbox_right + 1), (bbox_bottom + 1), obj_muncher, 0, 0) || collision_rectangle((bbox_left - 2), (bbox_top - 1), (bbox_right + 1), (bbox_bottom + 1), obj_pinchos, 0, 0)))
{
    with (obj_mario)
        event_user(0)
}
if (instance_exists(obj_mario) && global.powerup == -82)
{
    obj_mario.visible = false
    obj_mario.x = x
    obj_mario.y = (y - 24)
    obj_mario.speed = 0
    obj_mario.state = 0
    obj_mario.holding = 0
    obj_mario.disablecontrols = 1
    obj_mario.stompstyle = 0
}
else if instance_exists(obj_player_goal_parent)
{
    obj_player_goal_parent.visible = false
    obj_player_goal_parent.x = (x + 3)
    obj_player_goal_parent.y = (y - 16)
    obj_player_goal_parent.speed = 0
    ready = 0
}
else if (!instance_exists(obj_mario_transform2))
    instance_destroy()
if instance_exists(obj_helmet)
{
    xDiff_h = lengthdir_x(8, direction)
    yDiff_h = lengthdir_y(8, direction)
    obj_helmet.x = (x + xDiff_h)
    obj_helmet.y = (y + yDiff_h)
}
event_user(0)
event_user(1)
event_user(3)
event_user(4)
if (ready == 2 && speed != 0)
{
    if (!audio_is_playing(snd_pballon_c))
        audio_play_sound(snd_pballon_c, 1, true)
}
else
    audio_stop_sound(snd_pballon_c)
if instance_exists(obj_mario)
{
    if (keyboard_check(global.saltar) || keyboard_check(global.lanzar_agarrar))
        ready = 2
    else
        ready = 0
    left = keyboard_check(global.izquierda)
    right = keyboard_check(global.derecha)
    up = keyboard_check(global.arriba)
    down = keyboard_check(global.abajo)
}
else if instance_exists(obj_player_goal_parent)
{
    left = -1
    down = -1
    if (mov == 1)
    {
        if (global.bg_level == "castle")
        {
            right = 1
            up = -1
        }
        else if (x >= ((obj_goalgate_front.x - 8) + 71))
        {
            right = -1
            up = -1
            mov = 2
        }
        else
        {
            right = 1
            up = -1
        }
    }
    else if (mov == 2)
    {
        right = -1
        if (direction == 90)
            up = -1
        else
            up = 1
    }
    else
    {
        right = -1
        left = -1
        down = -1
        up = -1
    }
}
else
{
    right = -1
    left = -1
    down = -1
    up = -1
}
if left
{
    moving = 1
    if up
        angle = 135
    else if down
        angle = 225
    else
        angle = 180
}
else if right
{
    moving = 1
    if up
        angle = 45
    else if down
        angle = 315
    else
        angle = 0
}
else if down
{
    moving = 1
    if left
        angle = 225
    else if right
        angle = 315
    else
        angle = 270
}
else if up
{
    moving = 1
    if left
        angle = 135
    else if right
        angle = 45
    else
        angle = 90
}
else
    moving = 0
if (moving == 1)
{
    speed += 0.03
    diff = angle_difference(direction, angle)
    direction -= (min((1 * sign(diff)), abs(diff)) * 5)
    image_angle = direction
}
if (ready == 2)
    max_speed = 2
else
    max_speed = 0.6
if (speed > max_speed)
    speed = max_speed
if (abs(speed) < 1)
    xx = 1
else
    xx = abs(speed)
	
//Slope Collision

