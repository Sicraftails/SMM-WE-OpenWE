var tono, pitch;
tono = round((y / 16))
tono -= 13
if (tono >= 1 || tono <= -1)
{
    tono = (tono * -1)
    pitch = power(2, ((0 + tono) / 12))
    audio_sound_pitch(index, pitch)
}
else
    audio_sound_pitch(index, 1)
audio_play_sound(index, 0, false)

