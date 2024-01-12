function scr_music_link() {
	switch global.bg_level
	    {
	        case "underground":
	            return snd_SMB_master_sword_underground;
	        case "ghost":
	            return snd_SMB_master_sword_underground;
	        case "castle":
	            return snd_SMB_master_sword_castle;
	        case "airship":
	            return snd_SMB_master_sword_castle;
	        default:
	            return snd_SMB_master_sword;
	    }



}
