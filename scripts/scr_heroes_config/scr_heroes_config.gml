enum DRHero {
	Clogs = 0,
	Sluzishy = 1,
	Ralsbajeej = 2,
	Noelle = 3,
	
	Starwalker = 4,
	
	__MAX__ = 5,
}

enum DRCharacter {
	None = 0,
	Clogs = 1,
	Sluzishy = 2,
	Ralsbajeej = 3,
	Noelle = 4,
	
	Starwalker = 5,
	
	__MAX__ = 6,
}

function scr_hero_has_pacify(heroIdx) {
	return heroIdx == DRHero.Ralsbajeej || heroIdx == DRHero.Noelle;
}

function scr_character_is_lightner(charIdx) {
	return charIdx == DRCharacter.Clogs || charIdx == DRCharacter.Sluzishy || charIdx == DRCharacter.Noelle;	
}

function scr_hero_get_pacify_spell_cost(heroIdx) {
	switch (heroIdx) {
		case DRHero.Ralsbajeej: return 40;
		case DRHero.Noelle: return 80;
		
		default: return -1;
	}
}

function scr_hero_uses_acts_instead_of_spells(heroIdx) {
	switch (heroIdx) {
		case DRHero.Clogs: return true;
		
		default: return false;
	}
}

function scr_hero_get_color(heroIdx) {
	switch (heroIdx) {
		case DRHero.Clogs:	return make_color_rgb(255, 0, 0);
		case DRHero.Sluzishy:	return make_color_rgb(102, 45, 145);
		case DRHero.Ralsbajeej: return make_color_rgb(0, 255, 0);
		case DRHero.Noelle: return c_yellow;
		
		case DRHero.Starwalker: return c_yellow;
		
		default: return c_white;
	}
}

function scr_hero_get_attackbackground_color(heroIdx) {
	switch (heroIdx) {
		case DRHero.Clogs:	return make_color_rgb(61, 0, 0);
		case DRHero.Sluzishy:	return make_color_rgb(44, 0, 68);
		case DRHero.Ralsbajeej: return make_color_rgb(0, 61, 0);
		
		default: return scr_hero_get_color(heroIdx);
	}
}

function scr_hero_get_attacktarget_color(heroIdx) {
	switch (heroIdx) {
		case DRHero.Clogs:	return make_color_rgb(255, 0, 0);
		case DRHero.Sluzishy:	return make_color_rgb(102, 45, 145);
		case DRHero.Ralsbajeej: return make_color_rgb(0, 255, 0);
		case DRHero.Noelle: return make_color_rgb(255, 255, 153);
		
		case DRHero.Starwalker: return make_color_rgb(255, 255, 153);
		
		default: return c_white;
	}
}

function scr_hero_get_battle_instance(heroIdx) {
	switch (heroIdx) {
		case DRHero.Clogs:	return obj_heroclogs;
		case DRHero.Sluzishy:	return obj_herosluzishy;
		case DRHero.Ralsbajeej: return obj_heroralsbajeej;
		case DRHero.Noelle: return obj_heronoelle;
		
		case DRHero.Starwalker: return obj_herostarwalker;
		
		default: return obj_heroclogs;
	}
}

function scr_hero_get_nameplate(heroIdx) {
	switch (heroIdx) {
		default:
		case DRHero.Clogs: {
			headspr = spr_headclogs;
			namespr = spr_bnameclogs;
			break;	
		}
		
		case DRHero.Sluzishy: {
			headspr = spr_headsluzishy;
			namespr = spr_bnamesluzishy;
			break;
		}
				
		case DRHero.Ralsbajeej: {
			headspr = spr_headralsbajeej;
			namespr = spr_bnameralsbajeej;
			break;
		}
				
		case DRHero.Noelle: {
			headspr = spr_headnoelle;
			namespr = spr_bnamenoelle;
			break;
		}
		
		// mod
		case DRHero.Starwalker: {
			headspr = spr_headstarwalker;
			namespr = spr_bnamestarwalker;
			break;
		}
	}	
}

function scr_hero_set_sprites(heroObject) {
	switch (heroObject) {
		default:
		case obj_heroclogs: {
			normalsprite = spr_clogsr;
		    idlesprite = spr_clogsb_idle;
		    defendsprite = spr_clogsb_defend;
		    hurtsprite = spr_clogsb_hurt;
		    attackreadysprite = spr_clogsb_attackready;
		    attacksprite = spr_clogsb_attack;
		    itemsprite = spr_clogsb_item;
		    actreadysprite = spr_clogsb_actready;
		    actsprite = spr_clogsb_act;
		    itemreadysprite = spr_clogsb_itemready;
		    spellreadysprite = spr_clogsb_actready;
		    spellsprite = spr_clogsb_act;
		    defeatsprite = spr_clogsb_defeat;
		    victorysprite = spr_clogsb_victory;
		    actframes = 7;
		    actreturnframes = 10;
		    attackframes = 6;
		    itemframes = 6;
		    defendframes = 5;
		    spellframes = 10;
		    attackspeed = 0.5;
		    victoryframes = sprite_get_number(victorysprite);
		    mywidth = 68;
		    myheight = 74;
			break;	
		}
		
		case obj_herosluzishy: {
			attackframes = 5;
		    itemframes = 5;
		    defendframes = 5;
		    actframes = 7;
		    actreturnframes = 10;
		    spellframes = 8;
		    attackspeed = 0.5;
		    normalsprite = spr_sluzishy_walk_right;
		    idlesprite = spr_sluzishyb_idle;
		    defendsprite = spr_susieb_defend;
		    hurtsprite = spr_susieb_hurt;
		    actreadysprite = spr_susieb_actready;
		    actsprite = spr_susieb_act;
		    attackreadysprite = spr_susieb_attackready;
		    attacksprite = spr_susieb_attack;
    
		    itemsprite = spr_susieb_item;
		    itemreadysprite = spr_susieb_itemready;
		    spellreadysprite = spr_susieb_spellready;
		    spellsprite = spr_sluzishyb_spell;
		    defeatsprite = spr_susieb_defeat;
	
		    victorysprite = spr_sluzishyb_victory;
		    victoryframes = sprite_get_number(victorysprite);
		    mywidth = 70;
		    myheight = 82;
			break;
		}
		
		case obj_heroralsbajeej: {
			attackframes = 6;
		    itemframes = 6;
		    defendframes = 7;
		    actframes = 7;
		    actreturnframes = 10;
		    attackspeed = 0.5;
		    normalsprite = spr_ralsbajeej_right;
		    idlesprite = spr_ralsbajeej_idle;
		    defendsprite = spr_ralsei_defend;
		    hurtsprite = spr_ralsei_hurt_fixed;
		    attackreadysprite = spr_ralsei_attackready;
		    attacksprite = spr_ralsei_attack;
		    itemsprite = spr_ralsei_item;
		    itemreadysprite = spr_ralsei_itemready;
		    spellreadysprite = spr_ralsei_spellready;
		    spellsprite = spr_ralsei_spell;
		    defeatsprite = spr_ralsei_defeat;
		    victorysprite = spr_ralsei_victory;
		    actreadysprite = spr_ralsei_actready;
		    actsprite = spr_ralsei_act;
		    victoryframes = sprite_get_number(victorysprite);
		    mywidth = 52;
		    myheight = 86;
			break;
		}
		
		case obj_heronoelle: {
			attackframes = 4;
			itemframes = 9;
			defendframes = 0;
			actframes = 7;
			actreturnframes = 10;
			attackspeed = 0.5;
			spellframes = 6;
			normalsprite = spr_noelle_walk_right_dw;
			idlesprite = spr_noelleb_idle;
    
			//if (global.encounterno == 73)
			//    idlesprite = spr_noelle_shocked_dw;
    
			defendsprite = spr_noelleb_defend;
			hurtsprite = spr_noelleb_hurt;
			attackreadysprite = spr_noelleb_attackready;
			attacksprite = spr_noelleb_attack;
			itemsprite = spr_noelleb_item;
			itemreadysprite = spr_noelleb_itemready;
			spellreadysprite = spr_noelleb_spellready;
    
			//if (global.encounterno == 82)
			//    spellreadysprite = spr_noelleb_spellready; what does this even do, like, the sprite is the same one
    
			spellsprite = spr_noelleb_spell;
			defeatsprite = spr_noelleb_defeat;
			victorysprite = spr_noelleb_victory;
			actreadysprite = spr_noelleb_actready;
			actsprite = spr_noelleb_act;
			victoryframes = sprite_get_number(victorysprite);
			_sideb = false;
			
			//if (scr_sideb_get_phase() >= 2)
			//	_sideb = true;
				
			//import these yourself i dont care about you're snowgraves
			if (_sideb)
			{/*
			    attackreadysprite = spr_noelleb_attackready;
			    attacksprite = spr_noelleb_spell;
			    attackframes = 6;
			    victorysprite = spr_noelleb_pray;
			    victoryframes = 10;
			    defendframes = 5;
			    defendsprite = spr_noelleb_defend_sideb;
			    hurtsprite = spr_noelleb_hurt_sideb;
			    idlesprite = spr_noelleb_idle_sideb;
			*/}
    
			mywidth = 52;
			myheight = 86;
			break;
		}
		
		case obj_herostarwalker: {
			attackframes = 1;
		    itemframes = 1;
		    defendframes = 1;
		    actframes = 1;
		    actreturnframes = 1;
		    attackspeed = 0.5;
		    normalsprite = spr_originalmoonstalker;
		    idlesprite = spr_originalmoonstalker;
		    defendsprite = spr_originalmoonstalker;
		    hurtsprite = spr_originalmoonstalker;
		    attackreadysprite = spr_originalmoonstalker;
		    attacksprite = spr_originalmoonstalker;
		    itemsprite = spr_originalmoonstalker;
		    itemreadysprite = spr_originalmoonstalker;
		    spellreadysprite = spr_originalmoonstalker;
		    spellsprite = spr_originalmoonstalker;
		    defeatsprite = spr_originalmoonstalker;
		    victorysprite = spr_originalmoonstalker;
		    actreadysprite = spr_originalmoonstalker;
		    actsprite = spr_originalmoonstalker;
		    victoryframes = sprite_get_number(victorysprite);
		    mywidth = 37;
		    myheight = 36;
			break;
		}
	}
}

function scr_character_set_caterpillar_sprites(charIdx) {
	switch (charIdx) {
		default:
		case DRCharacter.Sluzishy: {
			name = "Sluzishy";
			
			usprite = global.darkzone ? (global.chapter >= 2 ? spr_sluzishy_walk_up : spr_sluzishy_walk_up) : spr_sluzishy_walk_up;
			dsprite = global.darkzone ? (global.chapter >= 2 ? spr_sluzishy_walk_down : spr_sluzishy_walk_down) : spr_sluzishy_walk_down;
			rsprite = global.darkzone ? (global.chapter >= 2 ? spr_sluzishy_walk_right : spr_sluzishy_walk_right) : spr_sluzishy_walk_right;
			lsprite = global.darkzone ? (global.chapter >= 2 ? spr_sluzishy_walk_left : spr_sluzishy_walk_left) : spr_sluzishy_walk_left;
			
			x -= (global.darkzone == 1) ? 6 : 3;
			y -= (global.darkzone == 1) ? 16 : 6;
			
			break;
		}
		
		case DRCharacter.Ralsbajeej: {
			name = "Ralsbajeej";
                
            usprite = spr_ralsbajeej_up;
            dsprite = spr_ralsbajeej_down;
            rsprite = spr_ralsbajeej_right;
            lsprite = spr_ralsbajeej_left;
			
			usprite_blush = spr_ralsbajeej_up;
			dsprite_blush = spr_ralsei_walk_down_blush;
			rsprite_blush = spr_ralsei_walk_right_blush;
			lsprite_blush = spr_ralsei_walk_left_blush;
			
			x -= 2;
			y -= 12;
			
			break;
		}
		
		case DRCharacter.Noelle: { 
			name = "noelle"; 
			
            slidesprite = spr_noelle_walk_down_dw;
			usprite = (global.darkzone == 1) ? spr_noelle_walk_up_dw : spr_noelle_walk_up_lw;
			rsprite = (global.darkzone == 1) ? spr_noelle_walk_right_dw : spr_noelle_walk_right_lw;
			lsprite = (global.darkzone == 1) ? spr_noelle_walk_left_dw : spr_noelle_walk_left_lw;
			dsprite = (global.darkzone == 1) ? spr_noelle_walk_down_dw : spr_noelle_walk_down_lw;
			
			x -= (global.darkzone == 1) ? 4 : 6;
			y -= (global.darkzone == 1) ? 20 : 9;
			
			break; 
		}
		
		case DRCharacter.Starwalker: {
			name = "starwalker";
			
			usprite = spr_originalmoonstalker;
            dsprite = spr_originalmoonstalker;
            rsprite = spr_originalmoonstalker;
            lsprite = spr_originalmoonstalker;
			break;
		}
	}
}

function scr_character_get_max_hp(charIdx) {
	var chapter = global.chapter;
	var defaultChapterIncreaseFormula = (chapter > 1 ? 30 : 0) + (chapter - 1) * 40;
	
	switch (charIdx) {
		case DRCharacter.Clogs: return 90 + defaultChapterIncreaseFormula + 20;
		case DRCharacter.Sluzishy: return 110 + defaultChapterIncreaseFormula + 20;
		case DRCharacter.Ralsbajeej: return 70 + defaultChapterIncreaseFormula + 20;
		
		default:
		case DRCharacter.Noelle: return 999;
	}
}

function scr_character_get_base_stats(charIdx) {
	var chapter = global.chapter;
	var defaultChapterHpIncreaseFormula = (chapter > 1 ? 30 : 0) + max((chapter - 2) * 40, 0);
	
	__hp = 250;
	__atk = 10;
	__def = 2;
	__mag = 0;
	__guts = 0;
	
	__weapon = DRWeapon.WoodBlade;
	__armors = [DRArmor.None, DRArmor.None];
	
	__spells = [];
	
	switch (charIdx) {
		case DRCharacter.Clogs: {
			__hp = 90 + defaultChapterHpIncreaseFormula;
			__atk = 10 + chapter * 2 + max(chapter - 3, 0);
			__weapon = DRWeapon.WoodBlade;
			
			if chapter >= 2 __armors = [DRArmor.AmberCard, DRArmor.AmberCard];
			if chapter >= 3 {
				__weapon = DRWeapon.MechaSaber;
				__armors[1] = DRArmor.GlowWrist;
			}
			if chapter >= 4 {
				__weapon = DRWeapon.Saber10;
				__armors[0] = DRArmor.GingerGuard;
			}
			
			__spells[0] = DRSpell.ACT;
			break;
		}
		case DRCharacter.Sluzishy: {
			__hp = 110 + defaultChapterHpIncreaseFormula;
			__atk = 14 + chapter * 2 + 2 * max(chapter - 3, 0);
			__mag = 1 + max(chapter - 2, 0);
			__weapon = DRWeapon.ManeAx;
			
			if chapter >= 2 __armors = [DRArmor.AmberCard, DRArmor.AmberCard];
			if chapter >= 3 {
				__weapon = DRWeapon.AutoAxe;
				__armors[1] = DRArmor.GlowWrist;
			}
			if chapter >= 4 {
				__weapon = DRWeapon.ToxicAxe;
				__armors[0] = DRArmor.GingerGuard;
			}
			
			__spells[0] = DRSpell.RudeBuster;
			__spells[1] = DRSpell.UltraHeal;
			break;
		}
		case DRCharacter.Ralsbajeej: {
			__hp = 70 + defaultChapterHpIncreaseFormula;
			__atk = 8 + chapter * 2 + max(chapter - 3, 0);
			__mag = 7 + chapter * 2 + max(chapter - 3, 0);
			__weapon = DRWeapon.RedScarf;
			
			if chapter >= 2 __armors = [DRArmor.AmberCard, DRArmor.WhiteRibbon];
			if chapter >= 3 {
				__weapon = DRWeapon.FiberScarf;
				__armors = [DRArmor.GingerGuard, DRArmor.GlowWrist];
			}
			if chapter >= 4 __weapon = DRWeapon.FlexScarf;
			
			__spells[0] = DRSpell.Pacify;
			__spells[1] = DRSpell.HealPrayer;
			break;
		}
		
		case DRCharacter.Starwalker: {
			__hp = 150 + defaultChapterHpIncreaseFormula;
			__atk = 10 + chapter * 2 + max(chapter - 3, 0);
			__mag = 12 + chapter * 2 + max(chapter - 3, 0);
			__armors = [DRArmor.ShadowMantle, DRArmor.ShadowMantle];
			__weapon = DRWeapon.TwistedSwd;
			__spells[0] = DRSpell.HealPrayer;
		    __spells[1] = DRSpell.SleepMist;
		    __spells[2] = DRSpell.IceShock;
			break;
		}
		
		default:
		case DRCharacter.Noelle: {
			__hp = 90;
			__atk = 3;
			__def = 1;
			__mag = 11;
			__weapon = DRWeapon.SnowRing;
			__armors = [DRArmor.SilverWatch, DRArmor.RoyalPin];
			__spells[0] = DRSpell.HealPrayer;
		    __spells[1] = DRSpell.SleepMist;
		    __spells[2] = DRSpell.IceShock;
			break;
		}
	}
}

function scr_character_get_rank(charIdx) {
	char_desc = "LV1 ";
	
	switch (charIdx) {
		case DRCharacter.Clogs: {
			char_desc = stringsetsub("LV~1 Tactician#Commands the party#by ACTs.", global.chapter);
			break;
		}
		
		case DRCharacter.Sluzishy: {
			char_desc = stringsetsub("LV~1 Dark Knight#Does damage using#dark energy.", global.chapter);
			break;
		}
		
		case DRCharacter.Ralsbajeej: {
			char_desc = stringsetsub("LV~1 Dark Prince#Dark-World being.#Has friends.", global.chapter);
			break;
		}
		
		case DRCharacter.Starwalker: {
			char_desc = "LV99 Starwalker#Starwalker";
			break;
		}
		
		default: { char_desc = stringsetsub("LV~1 Party Member#Came along for#the ride.", global.chapter); break; }
	}
}

function scr_character_get_powers(charIdx) {
	_powers = [false, false]; // array of [ color, text, customDrawFunc(ch_y), icon, value ]
	
	switch (charIdx) {
		case DRCharacter.Clogs: {
			guts_amount = global.chapter > 1 ? 2 : 1;
			
			_powers[0] = false; // ???
			_powers[1] = [c_dkgray, "???", obj_darkcontroller.dograndom >= 97 ? function (ch_y) {
				draw_set_color(c_white);
		        draw_text(xx + 100, ch_y, string_hash_to_newline("Dog:"));
		        draw_sprite_ext(spr_dog_sleep, -threebuffer / 30, xx + 220, ch_y + 5, 2, 2, 0, c_white, 1);
			} : false, false, false] // Dog or ???
			break;
		}
		
		case DRCharacter.Sluzishy: {
			guts_amount = global.chapter >= 3 ? 3 : 2;
			rude_amount = global.chapter >= 2 ? 89 : 100;
			
			_powers[0] = [c_white, "Rudeness", false, 13, rude_amount]; // Rudeness
			_powers[1] = false; // ???
			break;	
		}
		
		case DRCharacter.Ralsbajeej: {
			guts_amount = global.chapter >= 3 ? 1 : 0;
			fluff_amount = 1;
			kindness_amount = obj_darkcontroller.dograndom >= 97 ? 1 : 100;
	        kind_icon = obj_darkcontroller.dograndom >= 97 ? 11 : 10;
	        kind_text = obj_darkcontroller.dograndom >= 97 ? "Dogness" : "Kindness";
			
			_powers[0] = false;
			_powers[1] = [c_dkgray, "???", function (ch_y) {
				draw_set_color(c_white);
				draw_text_transformed(xx + 100, ch_y, "Fluffiness", 0.8, 1, 0);
		        draw_item_icon(xx + 74, ch_y + 6, 12);
        
		        for (i = 0; i < fluff_amount; i += 1)
		            draw_item_icon(xx + 230 + (i * 20), ch_y + 6, 12);
			}];
			break;
		}
		
		case DRCharacter.Starwalker: {
			_powers[0] = [c_white, "Stars", function (ch_y) {
				draw_set_color(c_white);
		        draw_text(xx + 100, ch_y, string_hash_to_newline("Stars:"));
		        draw_sprite_ext(spr_sparestar, 0, xx + 260, ch_y + 10, 1, 1, 0, c_white, 1);
				draw_sprite_ext(spr_sparestar, 0, xx + 260 - 16 - 2, ch_y + 10, 1, 1, 0, c_white, 1);
				draw_sprite_ext(spr_sparestar, 0, xx + 260 - 32 - 4, ch_y + 10, 1, 1, 0, c_white, 1);
			}];
			_powers[1] = false;
			break;
		}
		
		default:
		case DRCharacter.Noelle: {
			// im too lazy, do it yourself
			_powers[0] = false;
			_powers[1] = false;
			break;
		}
	}
}

function scr_character_has_magic(charIdx) {
	switch (charIdx) {
		case DRCharacter.Clogs: return false;
		
		default: return true;
	}
}

function scr_character_get_act_name_override(charIdx) {
	switch (charIdx) {
		default:
		case DRCharacter.Clogs: return "";
		
		case DRCharacter.Sluzishy: return "S-Action";
		case DRCharacter.Ralsbajeej: return "R-Action";
		case DRCharacter.Noelle: return "N-Action";
		
		case DRCharacter.Starwalker: return "S-TARction";
	}
}

function scr_character_set_names() {
	global.lcharname = "Clogs";
    global.charname[DRCharacter.None] = " ";
    global.charname[DRCharacter.Clogs] = "Clogs";
    global.charname[DRCharacter.Sluzishy] = "Sluzishy";
    global.charname[DRCharacter.Ralsbajeej] = "Ralsbajeej";
    global.charname[DRCharacter.Noelle] = "Noelle";	
	
	global.charname[DRCharacter.Starwalker] = "Starwalker";
}