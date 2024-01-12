if (other.object_index == obj_mushroom_res || other.object_index == obj_qblock_res || other.object_index == obj_SMB2_mushroom_res || other.object_index == obj_fireflower_res || other.object_index == obj_superflower_res || other.object_index == obj_hen_mushroom_res || other.object_index == obj_frogsuit_res || other.object_index == obj_cap_res || other.object_index == obj_1up_res || other.object_index == obj_star_res || other.object_index == obj_egg_res || other.object_index == obj_egg_red_res || other.object_index == obj_vine_res || other.object_index == obj_coin_res || other.object_index == obj_spring_res || other.object_index == obj_pswitch_res || other.object_index == obj_spring_land_res || other.object_index == obj_pow_res || other.object_index == obj_clown_res || other.object_index == obj_clown_fire_res || other.object_index == obj_buzzy_shell_res || other.object_index == obj_spiny_shell_res || other.object_index == obj_shell_drybones_res || other.object_index == obj_key_res || other.object_index == obj_koopa_res || other.object_index == obj_koopa_red_res || other.object_index == obj_buzzybeetle_res || other.object_index == obj_spiny_res || other.object_index == obj_cheepcheep_res || other.object_index == obj_cheepcheep2_res || other.object_index == obj_goomba_res || other.object_index == obj_goombrat_res || other.object_index == obj_bobomb_res || other.object_index == obj_bobomb_ready_res || other.object_index == obj_hammerbro_res || other.object_index == obj_boo_res || other.object_index == obj_muncher_res || other.object_index == obj_monty_res || other.object_index == obj_pplant_res || other.object_index == obj_drybones_res || other.object_index == obj_plant_fire_res || other.object_index == obj_podoboo_res || other.object_index == obj_sledgebro)
{
if (drag == 0 && other.drag == 0)
{
    audio_play_sound(snd_colocar_item_bloque, 0, false);
    sprout = other.sprite_index;
    draw_enemy = 1;
    drawX = other.x; // Set drawX to the x coordinate of the placed object
    with (other.id)
        instance_destroy();
}
}