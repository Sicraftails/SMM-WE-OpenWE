var shoot;
audio_stop_sound(snd_podoboo)
audio_play_sound(snd_podoboo, 0, false)
if (global.apariencia != 3)
    image_index = 0
if (sprite_index == s_up || sprite_index == spr_NSMBU_pplant_up_shoot)
    posy_fire = (y - 11)
else if (sprite_index == s_down || sprite_index == spr_NSMBU_pplant_down_shoot)
    posy_fire = (y - 6)
shoot = instance_create((x + (10 * direct)), posy_fire, obj_plantfire)
shoot.hspeed = ((1 - (0.5 * swimming)) * sign(direct))
if (sprite_index == s_up || sprite_index == spr_NSMBU_pplant_up_shoot)
    shoot.vspeed = (-(0.5 - (0.25 * swimming)))
else if (sprite_index == s_down || sprite_index == spr_NSMBU_pplant_down_shoot)
    shoot.vspeed = (0.5 - (0.25 * swimming))
if (global.apariencia != 3)
    alarm[4] = 40

