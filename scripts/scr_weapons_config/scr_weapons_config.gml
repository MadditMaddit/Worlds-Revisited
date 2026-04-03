enum DRWeapon {
    None = 0,

    // Chapter 1
    WoodBlade = 1,
    ManeAx = 2,
    RedScarf = 3,
    EverybodyWeapon = 4,
    Spookysword = 5,
    BraveAx = 6,
    Devilsknife = 7,
    Trefoil = 8,
    Ragger = 9,
    DaintyScarf = 10,
    TwistedSwd = 11,

    // Chapter 2
    SnowRing = 12,
    ThornRing = 13,
    BounceBlade = 14,
    CheerScarf = 15,
    MechaSaber = 16,
    AutoAxe = 17,
    FiberScarf = 18,
    Ragger2 = 19,
    BrokenSwd = 20,
    PuppetScarf = 21,
    FreezeRing = 22,

    // Chapter 3
    Saber10 = 23,
    ToxicAxe = 24,
    FlexScarf = 25,
    BlackShard = 26,
	
	// Chapter 4
	JingleBlade = 50,
	ScarfMark = 51,
	JusticeAxe = 52,
	Winglade = 53,
	AbsorbAx = 54,
}

function scr_weaponinfo(weaponid)
{
    weaponnametemp = " ";
    weapondesctemp = " ";

    for (p = 0; p < DRCharacter.__MAX__; p++) {
        wmessagetemp[p] = " "; // reaction message
        weaponchartemp[p] = false; // can character with number p equip?
		
		if p > DRCharacter.Noelle
			weaponchartemp[p] = true; // by default, modded characters can equip every weapon
    }

    weaponattemp = 0;
    weapondftemp = 0;
    weaponmagtemp = 0;
    weaponboltstemp = 1;
    weaponstyletemp = "?";
    weapongrazeamttemp = 0;
    weapongrazesizetemp = 0;
    weaponabilitytemp = " ";
    weaponabilityicontemp = 0;
    weaponicontemp = DRIcon.None;
    value = 0;
    
    switch (weaponid)
    {
        default:
        case DRWeapon.None: break;
        
        case DRWeapon.WoodBlade:
            weaponnametemp = "Wood Blade";
            weapondesctemp = "A wooden practice blade with a carbon-#reinforced core.";
            wmessagetemp[DRCharacter.Sluzishy] = "What's this!? A CHOPSTICK?";
            
            if (global.plot < 30 && global.chapter == 1)
                wmessagetemp[DRCharacter.Sluzishy] = "... You have a SWORD!?";
            
            wmessagetemp[DRCharacter.Ralsbajeej] = "That's yours, Kris...";
            wmessagetemp[DRCharacter.Noelle] = "(It has bite marks...)";

            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Sword;
            value = 60;
            break;
        
        case DRWeapon.ManeAx:
            weaponnametemp = "Mane Ax";
            weapondesctemp = "Beginner's ax forged from the#mane of a dragon whelp.";
            
            wmessagetemp[DRCharacter.Sluzishy] = "I'm too GOOD for that.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Ummm... it's a bit big.";
            wmessagetemp[DRCharacter.Noelle] = "It... smells nice...";

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Axe;
            value = 80;
            break;
        
        case DRWeapon.RedScarf:
            weaponnametemp = "Red Scarf";
            weapondesctemp = "A basic scarf made of lightly#magical fiber.";

            wmessagetemp[DRCharacter.Sluzishy] = "No. Just... no.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Comfy! Touch it, Kris!";
            wmessagetemp[DRCharacter.Noelle] = "Huh? No, I'm not cold.";
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;

            weaponicontemp = DRIcon.Scarf;
            value = 100;
            break;
        
        case DRWeapon.EverybodyWeapon:
            weaponnametemp = "EverybodyWeapon";
            weapondesctemp = "It felt right for everyone.";

            wmessagetemp[DRCharacter.Sluzishy] = "Uhhh... Ok.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "A perfect fit!";
            wmessagetemp[DRCharacter.Noelle] = "Wh... what is this?";

            weaponattemp = 12;
            weapondftemp = 6;
            weaponmagtemp = 8;

            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.None;
            value = 150;
            break;
        
        case DRWeapon.Spookysword:
            weaponnametemp = "Spookysword";
            weapondesctemp = "A black-and-orange sword with a bat hilt.";

            wmessagetemp[DRCharacter.Sluzishy] = "Ugh, it's too small!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Oh, it's too scary!";
            wmessagetemp[DRCharacter.Noelle] = "(It's kinda cool...)";

            weaponattemp = 2;

            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Spookiness UP";
            value = 200;
            break;
        
        case DRWeapon.BraveAx:
            weaponnametemp = "Brave Ax";
            weapondesctemp = "A glossy ax from a block warrior.#Suitable for heroes.";

            wmessagetemp[DRCharacter.Sluzishy] = "Well, if I have to.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "It's a bit too heavy...";
            wmessagetemp[DRCharacter.Noelle] = "(W-wow, what presence...)";

            weaponattemp = 2;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Axe;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Guts Up";
            value = 150;
            break;
        
        case DRWeapon.Devilsknife:
            weaponnametemp = "Devilsknife";
            weapondesctemp = "Skull-emblazoned scythe-ax.#Reduces Rudebuster's cost by 10";

            wmessagetemp[DRCharacter.Sluzishy] = "Let the games begin!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "It's too, um, evil.";
            wmessagetemp[DRCharacter.Noelle] = "...? It smiled at me?";

            weaponattemp = 5;
            weaponmagtemp = 4;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Axe;
            weaponabilityicontemp = DRIcon.DOWNStat;
            weaponabilitytemp = "Buster TP DOWN";
            value = 0;
            break;
        
        case DRWeapon.Trefoil:
            weaponnametemp = "Trefoil";
            weapondesctemp = "Mossy rapier with a clover emblem.#Increases $ found by 5%.";

            wmessagetemp[DRCharacter.Sluzishy] = "That tacky thing? No!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Not my shade of green...";
            wmessagetemp[DRCharacter.Noelle] = "Okay! ...? What do you mean, unused!?";

            weaponattemp = 4;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Money Earned UP";
            value = 250;
            break;
        
        case DRWeapon.Ragger:
            weaponnametemp = "Ragger";
            weapondesctemp = "A rugged scarf that cuts enemies like a dagger.";

            wmessagetemp[DRCharacter.Sluzishy] = "Ow! That can't be comfy!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Feels prickly... Nice!";
            wmessagetemp[DRCharacter.Noelle] = "Ouch! ... kind of nice";

            weaponattemp = 2;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;

            weaponicontemp = DRIcon.Scarf;
            value = 200;
            break;
        
        case DRWeapon.DaintyScarf:
            weaponnametemp = "DaintyScarf";
            weapondesctemp = "Delicate scarf that increases healing#power but has no attack.";

            wmessagetemp[DRCharacter.Sluzishy] = "IT'S MADE OF DOILIES!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "I'll protect everyone!";
            wmessagetemp[DRCharacter.Noelle] = "S-stop covering me with it!";
            
            weaponmagtemp = 2;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;

            weaponicontemp = DRIcon.Scarf;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Fluffiness UP";
            value = 200;
            break;
        
        case DRWeapon.TwistedSwd:
            weaponnametemp = "TwistedSwd";
            weapondesctemp = "A strange blade";

            wmessagetemp[DRCharacter.Sluzishy] = "... uhh, looks bad.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "It's like a spiral.";
            wmessagetemp[DRCharacter.Noelle] = "It's... kind of scary...";
            
            weaponattemp = 16;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.DOWNStat;
            weaponabilitytemp = "Trance";
            value = 1;
            break;
        
        case DRWeapon.SnowRing:
            weaponnametemp = "SnowRing";
            weapondesctemp = "A ring with the emblem of the#snowflake";

            wmessagetemp[DRCharacter.Sluzishy] = "Smells like Noelle";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Are you... proposing?";
            wmessagetemp[DRCharacter.Noelle] = "(Thank goodness...)";
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.Ring;
            value = 100;
            break;
        
        case DRWeapon.ThornRing:
            weaponnametemp = "ThornRing";
            weapondesctemp = "Wearer takes damage from pain#Reduces the TP cost of ice spells";

            wmessagetemp[DRCharacter.Sluzishy] = "A torture device?";
            wmessagetemp[DRCharacter.Ralsbajeej] = "...";
            wmessagetemp[DRCharacter.Noelle] = " ";

            weaponattemp = 14;
            weaponmagtemp = 12;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.Ring;
            weaponabilityicontemp = DRIcon.Ring;
            weaponabilitytemp = "Trance";
            value = 0;
            break;
        
        case DRWeapon.BounceBlade:
            weaponnametemp = "BounceBlade";
            weapondesctemp = "A pink saber with a rubber blade.#Weak, but increases defence.";

            wmessagetemp[DRCharacter.Sluzishy] = "What is this, rubber?";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Soft and squishy!";
            wmessagetemp[DRCharacter.Noelle] = "S-stop thwacking me!";

            weaponattemp = 2;
            weapondftemp = 1;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Defense";
            value = 250;
            break;
        
        case DRWeapon.CheerScarf:
            weaponnametemp = "CheerScarf";
            weapondesctemp = "A scarf with colorful you-can-do-it#imagery. Gains more TP from criticals.";

            wmessagetemp[DRCharacter.Sluzishy] = "Smiley faces? Ecch.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "You can do it!";
            wmessagetemp[DRCharacter.Noelle] = "Now THIS is a tacky scarf! Faha!";

            weaponattemp = 1;
            weaponmagtemp = 2;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Scarf;
            weaponabilityicontemp = DRIcon.Smile;
            weaponabilitytemp = "Smiley";
            value = 250;
            break;
        
        case DRWeapon.MechaSaber:
            weaponnametemp = "MechaSaber";
            weapondesctemp = "The blade extends when you press the hilt.#CHA-CHK!";

            wmessagetemp[DRCharacter.Sluzishy] = "*chk chk chk chk* Nah.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "You'd look cool holding it, Kris!";
            wmessagetemp[DRCharacter.Noelle] = "*chk* A-AHH! Scared myself...";

            weaponattemp = 4;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.EvilSmile;
            weaponabilitytemp = "Annoying";
            value = 250;
            break;
        
        case DRWeapon.AutoAxe:
            weaponnametemp = "AutoAxe";
            weapondesctemp = "Make sure to charge it by#plugging it into the wall.";

            wmessagetemp[DRCharacter.Sluzishy] = "*chainsaw noises* Hahaha!!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "(Is this a good idea?)";
            wmessagetemp[DRCharacter.Noelle] = "*zrrt* A-AHH! Scared myself...";

            weaponattemp = 4;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Axe;
            weaponabilityicontemp = DRIcon.EvilSmile;
            weaponabilitytemp = "BadIdea";
            value = 250;
            break;
        
        case DRWeapon.FiberScarf:
            weaponnametemp = "FiberScarf";
            weapondesctemp = "A scarf made of soft microfiber.#Balances attack and magic.";

            wmessagetemp[DRCharacter.Sluzishy] = "(Soft...)";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Oh! My fur's staticy!";
            wmessagetemp[DRCharacter.Noelle] = "Sure, I'll... huh? It's a weapon?";

            weaponattemp = 3;
            weaponmagtemp = 2;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Scarf;
            value = 250;
            break;
        
        case DRWeapon.Ragger2:
            weaponnametemp = "Ragger2";
            weapondesctemp = "A sharp and scratchy scarf.#Worse healing, better attack.";

            wmessagetemp[DRCharacter.Sluzishy] = "This is Ralsei's deal.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "I'm a prickly prince!";
            wmessagetemp[DRCharacter.Noelle] = "(It's like Santa's beard?)";

            weaponattemp = 5;
            weaponmagtemp = -1;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;
            weaponicontemp = DRIcon.Scarf;

            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "Prickly";
            value = 250;
            break;
        
        case DRWeapon.BrokenSwd:
            weaponnametemp = "BrokenSwd";
            weapondesctemp = "A rejected sword cut into 2 pieces.#Not even you can equip this...";

            wmessagetemp[DRCharacter.Sluzishy] = "... this is trash.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Should we fix this...?";
            wmessagetemp[DRCharacter.Noelle] = "(Wh... why give this to me?)";
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.DOWNStat;
            weaponabilitytemp = "Failure";
            value = 2;
            break;
        
        case DRWeapon.PuppetScarf:
            weaponnametemp = "PuppetScarf";
            weapondesctemp = "A scarf made of strange strings.#For those that abandon healing.";

            wmessagetemp[DRCharacter.Sluzishy] = "No way, that's creepy.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "If I have to fight...";
            wmessagetemp[DRCharacter.Noelle] = "(Feels like guitar strings...)";

            weaponattemp = 10;
            weaponmagtemp = -6;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Scarf;
            value = 0;
            break;
        
        case DRWeapon.FreezeRing:
            weaponnametemp = "FreezeRing";
            weapondesctemp = "A ring with a snowglobe on it.#... is that someone inside?";

            wmessagetemp[DRCharacter.Sluzishy] = "Heh, you steal this? Heh.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "It's beautiful...";
            wmessagetemp[DRCharacter.Noelle] = "...";

            weaponattemp = 4;
            weaponmagtemp = 4;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.Ring;
            value = 1000;
            break;
        
        case DRWeapon.Saber10:
            weaponnametemp = "Saber10";
            weapondesctemp = "A saber made of 10 cactus needles.#Fortunately, can deal more than 10 damage.";

            wmessagetemp[DRCharacter.Sluzishy] = "Nah, I'd snap it.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "You want to... pierce my ears...?";
            wmessagetemp[DRCharacter.Noelle] = "(I'm not against using it, but...)";

            weaponattemp = 6;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Sword;
            value = 610;
            break;
        
        case DRWeapon.ToxicAxe:
            weaponnametemp = "ToxicAxe";
            weapondesctemp = "An axe used to clear wastelands#in a fetid swamp. Not poison, but gross.";

            wmessagetemp[DRCharacter.Sluzishy] = "Eat dirt, losers.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Could I wash it off first?";
            wmessagetemp[DRCharacter.Noelle] = "N-no way! Susie wouldn't use that!";

            weaponattemp = 6;

            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Axe;
            value = 600;
            break;
        
        case DRWeapon.FlexScarf:
            weaponnametemp = "FlexScarf";
            weapondesctemp = "A scarf that is warm and fuzzy, but with#a metal core that lets it keep its shape.";
            
            wmessagetemp[DRCharacter.Sluzishy] = "Looks like a giant caterpillar.  ";
            wmessagetemp[DRCharacter.Ralsbajeej] = "So pliable, like me!";
            wmessagetemp[DRCharacter.Noelle] = "Twist it and... it's a wreath!";

            weaponattemp = 4;
            weaponmagtemp = 1;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Scarf;
            value = 620;
            break;
        
        case DRWeapon.BlackShard:
            weaponnametemp = "BlackShard";
            weapondesctemp = "A dagger-like shard of the Black Knife.#Strikes the weakness of dark-element enemies.";
            
            wmessagetemp[DRCharacter.Sluzishy] = "... how is this a weapon?";
            wmessagetemp[DRCharacter.Ralsbajeej] = "I... shouldn't use it.";
            wmessagetemp[DRCharacter.Noelle] = " ";

            weaponattemp = 16;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.Shard;
            value = 0;
            break;
			
		// Chapter 4
		case DRWeapon.JingleBlade:
            weaponnametemp = "JingleBlade";
            weapondesctemp = "A lance-like sword with red-and-white stripes.#Perfect for jousting.";

            wmessagetemp[DRCharacter.Sluzishy] = "Sleigh the bad guys.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Mmm! Minty and festive!";
            wmessagetemp[DRCharacter.Noelle] = "What is this, a barber pole?";

            weaponattemp = 7;
            weapondftemp = 1;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = true;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.Smile;
            weaponabilitytemp = "Festive";
            value = 1234;
            break;
        
        case DRWeapon.ScarfMark:
            weaponnametemp = "ScarfMark";
            weapondesctemp = "A thin scarf with a deep sheen. Holy writing has#been pressed into it, imbuing it with magic.";

            wmessagetemp[DRCharacter.Sluzishy] = "Heheh...";
            wmessagetemp[DRCharacter.Ralsbajeej] = "I'll keep my place.";
            wmessagetemp[DRCharacter.Noelle] = "Look, ribbon dancing!";

            weaponattemp = 4;
            weapondftemp = 1;
            weaponmagtemp = 1;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = true;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Scarf;
            value = 900;
            break;
        
        case DRWeapon.JusticeAxe:
            weaponnametemp = "JusticeAxe";
            weapondesctemp = "It has no special powers. However, in order to#attain this item, you became much stronger!";

            wmessagetemp[DRCharacter.Sluzishy] = "Watch this, old man!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "... isn't Susie amazing?";
            wmessagetemp[DRCharacter.Noelle] = "... Susie beat up an old man!?";

            weaponattemp = 12;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Axe;
            weaponabilityicontemp = DRIcon.Sparkles;
            weaponabilitytemp = "???";
            value = 0;
            break;
        
        case DRWeapon.Winglade:
            weaponnametemp = "Winglade";
            weapondesctemp = "A majestic sword with a white feathered hilt.#Slightly increases money won.";

            wmessagetemp[DRCharacter.Sluzishy] = "Don't make me sneeze!";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Th-that tickles!";
            wmessagetemp[DRCharacter.Noelle] = "... whose feather is this?";

            weaponattemp = 8;
            
            weaponchartemp[DRCharacter.Clogs] = true;
            weaponchartemp[DRCharacter.Sluzishy] = false;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Sword;
            weaponabilityicontemp = DRIcon.UPStat;
            weaponabilitytemp = "$ +5%";
            value = 999;
            break;
        
        case DRWeapon.AbsorbAx:
            weaponnametemp = "AbsorbAx";
            weapondesctemp = "A long, curved axe with an indent.#Scoop up HP when you attack.";

            wmessagetemp[DRCharacter.Sluzishy] = "Scoopin' time.";
            wmessagetemp[DRCharacter.Ralsbajeej] = "Don't scoop me!";
            wmessagetemp[DRCharacter.Noelle] = "That red... is that blood?";

            weaponattemp = 8;
            
            weaponchartemp[DRCharacter.Clogs] = false;
            weaponchartemp[DRCharacter.Sluzishy] = true;
            weaponchartemp[DRCharacter.Ralsbajeej] = false;
            weaponchartemp[DRCharacter.Noelle] = false;

            weaponicontemp = DRIcon.Axe;
            weaponabilityicontemp = DRIcon.EvilSmile;
            weaponabilitytemp = "Vampire";
            value = 1234;
            break;
    }
}

function get_lw_dw_weapon_list()
{
    var weapon_list = [
		new lw_dw_weapon(DRLightItem.Pencil, DRWeapon.WoodBlade),
		new lw_dw_weapon(DRLightItem.HalloweenPencil, DRWeapon.Spookysword),
		new lw_dw_weapon(DRLightItem.LuckyPencil, DRWeapon.Trefoil),
		new lw_dw_weapon(DRLightItem.Eraser, DRWeapon.BounceBlade),
		new lw_dw_weapon(DRLightItem.MechanicalPencil, DRWeapon.MechaSaber),
		new lw_dw_weapon(DRLightItem.CactusNeedle, DRWeapon.Saber10, 2),
		new lw_dw_weapon(DRLightItem.BlackShard, DRWeapon.BlackShard, 16),
		new lw_dw_weapon(DRLightItem.HolidayPencil, DRWeapon.JingleBlade),
		new lw_dw_weapon(DRLightItem.QuillPen, DRWeapon.Winglade)
	];
    return weapon_list;
}