if audio_is_playing(scr_snd_switchsong())
{
    if (mysolid == obj_lighting)
        mysolid = instance_create(x, y, obj_enabledsolid)
    image_index = 0
}
else
{
    if (mysolid != obj_lighting && instance_exists(mysolid))
    {
        with (mysolid)
            instance_destroy()
        mysolid = obj_lighting
    }
    image_index = 1
}

