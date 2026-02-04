function scr_npc_setup() {
	var handled = true;
	
	switch (room) {
		case room_dw_test: {
			// set dark world room "room_dw_test" appearance here
			sprite_index = spr_maus_idle;
			break;	
		}
		
		case room_lw_test: {
			// set light world room "room_lw_test" appearance here
			sprite_index = spr_virovirokun_idle;
			break;
		}
		
		default: handled = false; break;	
	}
	
	return handled;
}

function scr_npc_interact() {
	var handled = true;
	
	switch (room) {
		case room_dw_test: {
			// set dialogue here
			msgset(0, "* According to all known laws of aviation, there is no way a bee should be able to fly./");
			msgnext("* Its wings are too small to get its fat little body off the ground./");
			msgnext("* The bee, of course, flies anyway /");
			msgnext("* because bees don't care what humans think is impossible./");
			msgnext("* Yellow, black. Yellow, black./");
			msgnext("* Yellow, black. Yellow, black./");
			msgnext("* Ooh, black and yellow!/");
			msgnext("* Let's shake it up a little./%");
			break;
		}
		
		case room_lw_test: {
			msgset(0, "* CL0G5 H3lP {[me]}../");
			msgnext("* 1'm STuCK 1N TH15 {piece of puzzles} [bellay]!/");
			msgnext("* Hey,^1 Clogs,^1 could you carry me back into the Dark World?/");
			msgnext("* I don't wanna be here./");
			msgnext("* D0Nt [Ignore] M3! 4G{Kno}[LODGE] ME!/");
			msgnext("* CL0G5!!/%");
			break;
		}
		
		default: handled = false; break;	
	}
	
	return handled;
}