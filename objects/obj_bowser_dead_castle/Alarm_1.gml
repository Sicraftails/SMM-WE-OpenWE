gravity = 0.2
switch global.apariencia
{
    case 0:
        audio_stop_sound(snd_SMB_bowser_dead)
        audio_play_sound(snd_SMB_bowser_dead, 0, false)
        break
    case 1:
        audio_stop_sound(snd_SMB3_bowser_dead)
        audio_play_sound(snd_SMB3_bowser_dead, 0, false)
        break
    case 2:
        audio_stop_sound(snd_bowser_dead)
        audio_play_sound(snd_bowser_dead, 0, false)
        break
    case 3:
        audio_stop_sound(snd_NSMBU_bowser_castle2)
        audio_play_sound(snd_NSMBU_bowser_castle2, 0, false)
        audio_stop_sound(snd_NSMBU_bowser_dead)
        audio_play_sound(snd_NSMBU_bowser_dead, 0, false)
        break
}


