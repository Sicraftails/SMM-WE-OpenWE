powerup_actual = 0
powerup_nuevo = 0
sprite_powerup = 0
small = 0
cap = 0
c_powerup = 0
powerdown = 0
ready = 0
if instance_exists(obj_mario)
{
    if (obj_mario.alarm[3] != -1)
        invincible_restart = 1
    else
        invincible_restart = 0
    if instance_exists(obj_mario_pballon)
        obj_mario_pballon.visible = false
    if instance_exists(obj_smoke_cap)
        obj_smoke_cap.visible = false
    if instance_exists(obj_spinner)
    {
        with (obj_spinner)
            instance_destroy()
    }
    if instance_exists(obj_kuriboshoe)
    {
        with (obj_kuriboshoe)
            visible = false
    }
    if instance_exists(obj_yoshi2)
    {
        with (obj_yoshi2)
            visible = false
    }
    if instance_exists(obj_helmet)
    {
        with (obj_helmet)
            visible = false
    }
    if (global.apariencia == 3)
    {
        if (obj_mario.skidnow == 1)
            m_sprite = scr_NSMBU_skid()
        else if (obj_mario.state == 1)
            m_sprite = scr_NSMBU_walk(obj_mario.isswim)
        else if (obj_mario.state == 0)
            m_sprite = scr_NSMBU_idle(obj_mario.isswim)
        else
            m_sprite = obj_mario.sprite_index
    }
    else if (obj_mario.skidnow == 1)
        m_sprite = scr_marioskid()
    else if (obj_mario.state == 1)
        m_sprite = scr_mariowalk()
    else if (obj_mario.state == 0)
        m_sprite = scr_marioidle()
    else
        m_sprite = obj_mario.sprite_index
    m_index = obj_mario.image_index
    m_hspeed = obj_mario.hspeed
    m_vspeed = obj_mario.vspeed
    m_x = obj_mario.x
    m_y = obj_mario.y
    m_state = obj_mario.state
    m_skidnow = obj_mario.skidnow
    obj_mario.hspeed = 0
    if (obj_mario.link_transform == 0)
        obj_mario.image_speed = 0
    obj_mario.visible = false
    with (obj_mario)
    {
        disablecontrols = 1
        invincible = 1
        gravity = 0
        if (link_transform == 0)
        {
            image_speed = 0
            image_index = other.m_index
        }
        x = other.m_x
        y = other.m_y
        alarm[1] = -1
        alarm[3] = -1
        image_alpha = 1
    }
}
if instance_exists(obj_cap_mario)
{
    obj_cap_mario.image_speed = 0
    cap_speed = obj_cap_mario.image_speed
}
bg_speed = __background_get((11 << 0), 0)
__background_set((11 << 0), 0, c_black)
with (obj_rainmaker)
    event_user(0)
alarm[0] = 1

