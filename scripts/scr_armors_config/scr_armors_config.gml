enum DRArmor {
    None = 0,

    // Chapter 1
    AmberCard = 1,
    DiceBrace = 2,
    PinkRibbon = 3,
    WhiteRibbon = 4,
    IronShackle = 5,
    MouseToken = 6,
    Jevilstail = 7,

    // Chapter 2
    SilverCard = 8,
    TwinRibbon = 9,
    GlowWrist = 10,
    ChainMail = 11,
    BShotBowtie = 12,
    SpikeBand = 13,
    SilverWatch = 14,
    TensionBow = 15,
    Mannequin = 16,
    DarkGoldBand = 17,
    SkyMantle = 18,
    SpikeShackle = 19,
    FrayedBowtie = 20,
    Dealmaker = 21,
    RoyalPin = 22,

    // Chapter 3
    ShadowMantle = 23,
    LodeStone = 24,
    GingerGuard = 25,
    BlueRibbon = 26,
    TennaTie = 27,
	
	// Chapter 4
	Waferguard = 50,
	MysticBand = 51,
	PowerBand = 52,
	PrincessRibbon = 53,
	GoldWidow = 54,
}

function scr_armorinfo(armorid)
{
    armornametemp = " ";
    armordesctemp = " ";
    armorattemp = 0;
    armordftemp = 0;
    armormagtemp = 0;
    armorboltstemp = 0;
    armorgrazeamttemp = 0;
    armorgrazesizetemp = 0;
    for (p = 0; p < DRCharacter.__MAX__; p++) {
        // susie does not let you take off her armor
        amessagetemp[p] = p == DRCharacter.Sluzishy ? "Hey, hands off!" : " ";
        armorchartemp[p] = p != DRCharacter.Sluzishy;
    }
    armorabilitytemp = " ";
    armorabilityicontemp = 0;
    armoricontemp = DRIcon.None;
    value = 0;
	armorelementtemp = 0;
    armorelementamounttemp = 0;
    
    switch (armorid)
    {
        default:
        case DRArmor.None:
            break;
        
        // Chapter 1
        case DRArmor.AmberCard:
            armornametemp = "Amber Card";
            armordesctemp = "A thin square charm that sticks#to you, increasing defense.";

            amessagetemp[DRCharacter.Sluzishy] = "... better than nothing.";
            amessagetemp[DRCharacter.Ralsbajeej] = "It's sticky, huh, Clogs...";
            amessagetemp[DRCharacter.Noelle] = "It's like a name-tag!";
            
            armordftemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 100;
            break;
        
        case DRArmor.DiceBrace:
            armornametemp = "Dice Brace";
            armordesctemp = "A bracelet made out of various#symbol-inscribed cubes.";

            amessagetemp[DRCharacter.Sluzishy] = "... okay.";
            amessagetemp[DRCharacter.Ralsbajeej] = "It says \"Friendship!\"";
            amessagetemp[DRCharacter.Noelle] = "Hey, y-you jumbled it...";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 150;
            break;
        
        case DRArmor.PinkRibbon:
            armornametemp = "Pink Ribbon";
            armordesctemp = "A cute hair ribbon. Increases the range#at which bullets raise tension.";

            amessagetemp[DRCharacter.Sluzishy] = global.chapter == 2 ? "I said no." : "Nope. Not a baby.";
            amessagetemp[DRCharacter.Ralsbajeej] = global.chapter == 2 ? "It's something to wear." : "Cool.";
            amessagetemp[DRCharacter.Noelle] = "... feels familiar.";
            
            armordftemp = 1;
            armorgrazesizetemp = 20;

            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "GrazeArea";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 100;
            break;
        
        case DRArmor.WhiteRibbon:
            armornametemp = "White Ribbon";
            armordesctemp = "A crinkly hair ribbon that slightly#increases your defense.";
            amessagetemp[DRCharacter.Sluzishy] = global.chapter == 2 ? "I said NO! C'mon already!" : "Nope. Not in 1st grade anymore.";
            amessagetemp[DRCharacter.Ralsbajeej] = global.chapter == 2 ? "It's nice being dressed up..." : "Um... D-do I look cute...?";
            amessagetemp[DRCharacter.Noelle] = "... feels familiar.";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;

            armorabilitytemp = "Cuteness";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 90;
            break;
        
        case DRArmor.IronShackle:
            armornametemp = "IronShackle";
            armordesctemp = "Shackle that ironically increases#your attack and defense.";

            amessagetemp[DRCharacter.Sluzishy] = "(Damn, it's actually cool...)";
            amessagetemp[DRCharacter.Ralsbajeej] = "*jingle jangle* Haha!";
            amessagetemp[DRCharacter.Noelle] = "I'm the ghost of holidays past!";

            armorattemp = 1;
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 150;
            break;
        
        case DRArmor.MouseToken:
            armornametemp = "MouseToken";
            armordesctemp = "A golden coin with a once-powerful mouse#wizard engraved on it.";

            amessagetemp[DRCharacter.Sluzishy] = "This guy's... familiar?";
            amessagetemp[DRCharacter.Ralsbajeej] = "Chu! Healing power UP!";
            amessagetemp[DRCharacter.Noelle] = "... from the family entertainment center?";
            
            armormagtemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 120;

            armorelementtemp = 7;
            armorelementamounttemp = 0.5;
            break;
        
        case DRArmor.Jevilstail:
            armornametemp = "Jevilstail";
            armordesctemp = "A J-shaped tail that gives you devilenergy.";

            amessagetemp[DRCharacter.Sluzishy] = "Figured I'd grow one someday.";
            amessagetemp[DRCharacter.Ralsbajeej] = "I'm a good devil, OK?";
            amessagetemp[DRCharacter.Noelle] = "... (I like it...)";

            armorattemp = 2;
            armordftemp = 2;
            armormagtemp = 2;
            
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 0;
            break;
        
        // Chapter 2
        case DRArmor.SilverCard:
            armornametemp = "Silver Card";
            armordesctemp = "A square charm that increases#dropped money by 5%";

            amessagetemp[DRCharacter.Sluzishy] = "Money, that's what I need.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Do they take credit?";
            amessagetemp[DRCharacter.Noelle] = "It goes with my watch!";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;

            armorabilitytemp = "$ +5%";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 200;
            break;
        
        case DRArmor.TwinRibbon:
            armornametemp = "TwinRibbon";
            armordesctemp = "Two ribbons. You'll have to put#your hair into pigtails.";

            amessagetemp[DRCharacter.Sluzishy] = "... it gets worse and worse.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Try around my horns!";
            amessagetemp[DRCharacter.Noelle] = "... nostalgic, huh.";
            
            armordftemp = 3;
            armorgrazesizetemp = 20;

            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "GrazeArea";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 400;
            break;
        
        case DRArmor.GlowWrist:
            armornametemp = "GlowWrist";
            armordesctemp = "A tough bracelet made of green wires,#and studded with sharp glowing lights.";

            amessagetemp[DRCharacter.Sluzishy] = "Whoops, it's tangled.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Let me just untangle this...";
            amessagetemp[DRCharacter.Noelle] = "It's like holiday lights...";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 200;
            break;
        
        case DRArmor.ChainMail:
            armornametemp = "ChainMail";
            armordesctemp = "Chain-armor. Send it to 10 others#or it'll lose its defensive rating";

            amessagetemp[DRCharacter.Sluzishy] = "Damn, guess I'm cursed.";
            amessagetemp[DRCharacter.Ralsbajeej] = "A letter?... For me...?";
            amessagetemp[DRCharacter.Noelle] = "Armor? (It's cool...)";
            
            armordftemp = 3;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 300;
            break;
        
        case DRArmor.BShotBowtie:
            armornametemp = "B.ShotBowtie";
            armordesctemp = "A handsome bowtie. Looks like the brand#name has been cut off.";

            amessagetemp[DRCharacter.Sluzishy] = "Ugh, I look like a nerd.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Can I have suspenders?";
            amessagetemp[DRCharacter.Noelle] = "... do I put it in my hair?";
            
            armordftemp = 2;
            armormagtemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 300;
            break;
        
        case DRArmor.SpikeBand:
            armornametemp = "SpikeBand";
            armordesctemp = "A black wristband covered in spikes.#Has the tendency to get stuck to itself.";

            amessagetemp[DRCharacter.Sluzishy] = "Can't say no to spikes.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Um, do I... look tough?";
            amessagetemp[DRCharacter.Noelle] = "(Maybe Susie would like this look?)";

            armorattemp = 2;
            armordftemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 300;
            break;
        
        case DRArmor.SilverWatch:
            armornametemp = "Silver Watch";
            armordesctemp = "Grazing bullets affects#the turn length by 10% more";

            amessagetemp[DRCharacter.Sluzishy] = "It's clobbering time.";
            amessagetemp[DRCharacter.Ralsbajeej] = "I'm late, I'm late!";
            amessagetemp[DRCharacter.Noelle] = "(Th-this was mine...)";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "GrazeTime";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 1000;
            break;
        
        case DRArmor.TensionBow:
            armornametemp = "TensionBow";
            armordesctemp = "Gain 10% more tension from#grazing bullets";

            amessagetemp[DRCharacter.Sluzishy] = " ";
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "TPGain";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 400;
            break;
        
        case DRArmor.Mannequin:
            armornametemp = "Mannequin";
            armordesctemp = "It's a mannequin with the clothes#permanently attached. Useless";

            amessagetemp[DRCharacter.Sluzishy] = "Not even gonna ask.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Um, the d-dress is cute...";
            amessagetemp[DRCharacter.Noelle] = "(Why did they spend $300 on this!?)";
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = false;
            armorchartemp[DRCharacter.Noelle] = false;

            armorabilitytemp = "???";
            armorabilityicontemp = DRIcon.Shield;
            armoricontemp = DRIcon.None;
            value = 300;

            armorelementtemp = 6;
            armorelementamounttemp = 0.35;
            break;
        
        case DRArmor.DarkGoldBand:
            armornametemp = "DarkGoldBand";
            armordesctemp = "A black metal with a golden shine.";

            amessagetemp[DRCharacter.Sluzishy] = "Not even gonna ask.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Um, the d-dress is cute...";
            amessagetemp[DRCharacter.Noelle] = "(Why did they spend $300 on this!?)";
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = false;
            armorchartemp[DRCharacter.Noelle] = false;

            armorabilitytemp = " ";
            armorabilityicontemp = DRIcon.Shield;
            armoricontemp = DRIcon.Shield;
            value = (global.chapter * 200) + ((global.chapter - 1) * 220);
            break;
        
        case DRArmor.SkyMantle:
            armornametemp = "SkyMantle";
            armordesctemp = "A cape that shimmers fluorescently.#Protects against Elec and Holy attacks.";

            amessagetemp[DRCharacter.Sluzishy] = " ";
            
            armordftemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "Elec/Holy";
            armorabilityicontemp = DRIcon.Shield;
            armoricontemp = DRIcon.Shield;
            value = 1;

            armorelementtemp = 1;
            armorelementamounttemp = 0.5;
            break;
        
        case DRArmor.SpikeShackle:
            armornametemp = "SpikeShackle";
            armordesctemp = " ";

            amessagetemp[DRCharacter.Sluzishy] = "Get a load of THIS!";
            amessagetemp[DRCharacter.Ralsbajeej] = "Looking SHARP!";
            amessagetemp[DRCharacter.Noelle] = "(It's tearing my sleeves...)";

            armorattemp = 3;
            armordftemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "Attack";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 300;
            break;
        
        case DRArmor.FrayedBowtie:
            armornametemp = "FrayedBowtie";
            armordesctemp = "An old bowtie. It seems to have#lost much of its defensive value.";

            amessagetemp[DRCharacter.Sluzishy] = "Look. I have standards.";
            amessagetemp[DRCharacter.Ralsbajeej] = "It's still wearable!";
            amessagetemp[DRCharacter.Noelle] = "(Reminds me of Asgore...)";

            armorattemp = 1;
            armordftemp = 1;
            armormagtemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 100;

            armorelementtemp = 6;
            armorelementamounttemp = 0.15;
            break;
        
        case DRArmor.Dealmaker:
            armornametemp = "Dealmaker";
            armordesctemp = "Fashionable pink and yellow glasses.#Greatly increase $ gained, and...?";

            amessagetemp[DRCharacter.Sluzishy] = "Money, that's what I need.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Two pairs of glasses?";
            amessagetemp[DRCharacter.Noelle] = "(Seems... familiar?)";
            
            armordftemp = 5;
            armormagtemp = 5;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;

            armorabilitytemp = "$ +30%";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 0;

            armorelementtemp = 6;
            armorelementamounttemp = 0.4;
            break;
        
        case DRArmor.RoyalPin:
            armornametemp = "RoyalPin";
            armordesctemp = "A brooch engraved with Queen's face.#Careful of the sharp part.";

            amessagetemp[DRCharacter.Sluzishy] = "ROACH? Oh, brooch. Heh.";
            amessagetemp[DRCharacter.Ralsbajeej] = "I'm a cute little corkboard!";
            amessagetemp[DRCharacter.Noelle] = "Queen... gave this to me.";
            
            armordftemp = 3;
            armormagtemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 1000;
            break;
        
        // Chapter 3
        case DRArmor.ShadowMantle:
            armornametemp = "ShadowMantle";
            armordesctemp = "Shadows slip off like water.#Greatly protects against Dark and Star attacks.";

            amessagetemp[DRCharacter.Sluzishy] = "Hell yeah, what's this?";
            amessagetemp[DRCharacter.Ralsbajeej] = "Sh-should I wear this...?";
            amessagetemp[DRCharacter.Noelle] = "No... it's for someone... taller.";
            
            armordftemp = global.chapter;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = false;

            armorabilitytemp = "Dark/Star";
            armorabilityicontemp = DRIcon.Shield;
            armoricontemp = DRIcon.Shield;
            value = 0;

            armorelementtemp = 5;
            armorelementamounttemp = 0.66;
            break;
        
        case DRArmor.LodeStone:
            armornametemp = "LodeStone";
            var desc_text = "A lodestone token shaped like a snail's shell.#Enemy bullets give a bit more TP.";
            
            if (global.flag[1036] == 1)
                desc_text = "A lodestone token inscribed with the record of#a legend athlete. Enemy bullets give a bit more TP.";
            else if (global.flag[1036] == 2)
                desc_text = "A lodestone token in the shape of a pizza.#Enemy bullets give a bit more TP.";
            
            armordesctemp = desc_text;
            var sus_text = "Escargot? ... escargross.";
            
            if (global.flag[1036] == 1)
                sus_text = "Consolation prize, nice.";
            else if (global.flag[1036] == 2)
                sus_text = "I'm going to eat this.";
            
            var ral_text = "I have no opinions on snails!";
            
            if (global.flag[1036] == 1)
                ral_text = "A reward... just for me?";
            else if (global.flag[1036] == 2)
                ral_text = "If I wear it, Susie won't eat it!";
            
            var noe_text = "Did your mom eat the non-shell part?";
            
            if (global.flag[1036] == 1)
                noe_text = "Thanks, but, this is Azzy's...?";
            else if (global.flag[1036] == 2)
                noe_text = "D-don't eat that! I'll wear it!";
            
            amessagetemp[DRCharacter.Sluzishy] = sus_text;
            amessagetemp[DRCharacter.Ralsbajeej] = ral_text;
            amessagetemp[DRCharacter.Noelle] = noe_text;
            
            armordftemp = 2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "TPGain";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 220;
            break;
        
        case DRArmor.GingerGuard:
            armornametemp = "GingerGuard";
            armordesctemp = "A steel bangle tempered by extreme flame.#Its shape is humanoid in nature.";

            amessagetemp[DRCharacter.Sluzishy] = "Look! I punched through a guy!";
            amessagetemp[DRCharacter.Ralsbajeej] = "A bigger one could make Kris!";
            amessagetemp[DRCharacter.Noelle] = "This smells amazing! Um, sorry.";
            
            armordftemp = 3;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.GingerbreadCutout;
            value = 862;
            break;
        
        case DRArmor.BlueRibbon:
            armornametemp = "BlueRibbon";
            armordesctemp = "A blue cheer bow. When the user uses a#healing move, it recovers slightly more HP.";
            
            amessagetemp[DRCharacter.Sluzishy] = "ABSOLUTELY not.";
            var ral_text_lines = [
                "Give me a K! Give me an R!",
                "Give me an I! Give me an S!",
                "Give me an ampersand!",
                "Give me an S! Give me a U!",
                "Give me an S! Give me an I!",
                "Give me an E! Give me an A!",
                "Give me an R! Give me an E!",
                "Give me an M! Give me a Y!",
                "Give me an F! Give me an R!",
                "Give me an I! Give me an E!",
                "Give me an N! Give me a D!",
                "Give me an S!",
                "Give me an exclamation point!",
                "Um, that's it!",
                "D... don't give me anything else!",
                "Yeah!"
            ];
            amessagetemp[DRCharacter.Ralsbajeej] = ral_text_lines[global.flag[1037]];
            amessagetemp[DRCharacter.Noelle] = "Go...  t... team?";
            
            armordftemp = 1;
            armormagtemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "Heal+";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 1;
            break;
        
        case DRArmor.TennaTie:
            armornametemp = "TennaTie";
            armordesctemp = "A giant, heavy-duty, bullet-proof tie.#How to even wear it...?";

            amessagetemp[DRCharacter.Sluzishy] = "Bandana-style.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Like a sash...?";
            amessagetemp[DRCharacter.Noelle] = "Look, I'm like a gift!";
            
            armordftemp = 5;
            armormagtemp = -2;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 600;
            break;
		
		// Chapter 4
		case DRArmor.Waferguard:
            armornametemp = "Waferguard";
            armordesctemp = "Although it looks brittle, it contains a magical#energy that blunts damage on impact. +4DF";

            amessagetemp[DRCharacter.Sluzishy] = "(Don't eat it. Don't eat it.)";
            amessagetemp[DRCharacter.Ralsbajeej] = "It's got drool on it.";
            amessagetemp[DRCharacter.Noelle] = "What's next, cheezy armor? Faha!";
            
            armordftemp = 4;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 900;
            break;
        
        case DRArmor.MysticBand:
            armornametemp = "MysticBand";
            armordesctemp = "A silver armlet stained with amber.#Increases magic only. MAG +4";

            amessagetemp[DRCharacter.Sluzishy] = "Let's go, Rude Buster!";
            amessagetemp[DRCharacter.Ralsbajeej] = "Behold! Heal Prayer!";
            amessagetemp[DRCharacter.Noelle] = "(The other flavor is better)";
            
            armormagtemp = 4;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 1234;
            break;
        
        case DRArmor.PowerBand:
            armornametemp = "PowerBand";
            armordesctemp = "A silver armlet stained with red essence.#Increases strength only. ATK +4";

            amessagetemp[DRCharacter.Sluzishy] = "BLOOD POWER ACTIVATE!";
            amessagetemp[DRCharacter.Ralsbajeej] = "I'm juiced up!";
            amessagetemp[DRCharacter.Noelle] = "Why always jewelry?";

            armorattemp = 4;

            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;
            
            armoricontemp = DRIcon.Shield;
            value = 1234;
            break;
        
        case DRArmor.PrincessRibbon:
            armornametemp = "PrincessRBN";
            armordesctemp = "Elegant lace ribbon with gloves,#delicate enough to see through. +4 DEF +2 ATK";

            amessagetemp[DRCharacter.Sluzishy] = "Nah. Gloves don't fit.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Cute! (Gloves don't fit)";
            amessagetemp[DRCharacter.Noelle] = "Kris, you can wear the gloves!";

            armorattemp = 2;
            armordftemp = 4;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = false;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = true;

            armorabilitytemp = "Elegance";
            armorabilityicontemp = DRIcon.UPStat;
            armoricontemp = DRIcon.Shield;
            value = 1234;
            break;
        
        case DRArmor.GoldWidow:
            armornametemp = "GoldWidow";
            armordesctemp = "A spider made of gold. It gathers coins#into it, reducing $ gained.";

            amessagetemp[DRCharacter.Sluzishy] = "Spider on my head. K.";
            amessagetemp[DRCharacter.Ralsbajeej] = "Itsy and/or bitsy!";
            amessagetemp[DRCharacter.Noelle] = "E-Ew! Kris, get that away!";

            armorattemp = 1;
            armordftemp = 5;
            armormagtemp = 1;
            
            armorchartemp[DRCharacter.Clogs] = true;
            armorchartemp[DRCharacter.Sluzishy] = true;
            armorchartemp[DRCharacter.Ralsbajeej] = true;
            armorchartemp[DRCharacter.Noelle] = false;

            armorabilitytemp = "$ -10%";
            armorabilityicontemp = DRIcon.DOWNStat;
            armoricontemp = DRIcon.Shield;
            value = 5000;
            break;
    }
}