audio_stop_sound(scr_snd_coin())
audio_play_sound(scr_snd_coin(), 0, false)
global.coins++
with (instance_create(x, y, obj_score))
{
    event_user(0)
    visible = false
}
    #region Efecto
//Crear anillo
with (instance_create_depth(x + 8, y + 8, -2, obj_blend_ring)) image_blend = make_colour_rgb(248, 216, 0);
//Repetir 6 veces
    repeat (6) {
        with (instance_create_depth(x + 8, y + 8, -2, obj_sparkles_blend)) {
    
            sprite_index = spr_sparkles_blend;
            gravity = 0.2;
            shrink_rate = 0.0324;
            motion_set(random_range(80, 100), random_range(1, 3));            
        }
    }
#endregion
instance_destroy()