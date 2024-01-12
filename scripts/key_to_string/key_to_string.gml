function key_to_string(argument0) {
	switch argument0
	{
	    case 8:
	        return "backspace";
	    case 9:
	        return "tab";
	    case 12:
	        return "pad-middle";
	    case 13:
	        return "enter";
	    case 16:
	        return "shift";
	    case 17:
	        return "ctrl";
	    case 18:
	        return "alt";
	    case 19:
	        return "pause";
	    case 20:
	        return "c-lock";
	    case 27:
	        return "esc";
	    case 32:
	        return "space";
	    case 33:
	        return "p-up";
	    case 34:
	        return "p-down";
	    case 35:
	        return "end";
	    case 36:
	        return "home";
	    case 37:
	        return "left";
	    case 38:
	        return "up";
	    case 39:
	        return "right";
	    case 40:
	        return "down";
	    case 44:
	        return "p-screen";
	    case 45:
	        return "insert";
	    case 46:
	        return "delito";
	    case 91:
	        return "l-wind";
	    case 92:
	        return "r-wind";
	    case 93:
	        return "menu";
	    case 96:
	        return "pad 0";
	    case 97:
	        return "pad 1";
	    case 98:
	        return "pad 2";
	    case 99:
	        return "pad 3";
	    case 100:
	        return "pad 4";
	    case 101:
	        return "pad 5";
	    case 102:
	        return "pad 6";
	    case 103:
	        return "pad 7";
	    case 104:
	        return "pad 8";
	    case 105:
	        return "pad 9";
	    case 106:
	        return "pad *";
	    case 107:
	        return "pad +";
	    case 109:
	        return "pad -";
	    case 110:
	        return "pad .";
	    case 111:
	        return "pad /";
	    case 112:
	        return "F1";
	    case 113:
	        return "F2";
	    case 114:
	        return "F3";
	    case 115:
	        return "F4";
	    case 116:
	        return "F5";
	    case 117:
	        return "F6";
	    case 118:
	        return "F7";
	    case 119:
	        return "F8";
	    case 120:
	        return "F9";
	    case 121:
	        return "F10";
	    case 122:
	        return "F11";
	    case 123:
	        return "F12";
	    case 144:
	        return "n-lock";
	    case 145:
	        return "s-lock";
	    default:
	        return chr(argument0);
	}




}
