if (sprite_index == spr_NSMBU_bowserjr_shell_outside)
{
    with (instance_create(x, y, obj_NSMBU_bowserjr))
    {
        firehitpoints = other.firehitpoints
        hitpoints = other.hitpoints
        wings = other.wings
        key = other.key
    }
    instance_destroy()
}

