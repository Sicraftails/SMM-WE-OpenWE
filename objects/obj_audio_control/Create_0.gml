//Create reverb effect and modify properties
_ef_reverb = audio_effect_create(AudioEffectType.Reverb1);
_ef_reverb.bypass = false
_ef_reverb.size = 0.7;
_ef_reverb.mix = 0.5;

//Apply to main bus
/*
audio_bus_main.effects[0] = _ef_reverb;
/**/