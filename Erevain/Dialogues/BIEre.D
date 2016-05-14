// Erevain's greeting dialogue will go here.
// You don't need a BEGIN unless you're starting or overwriting a new dialogue file.

EXTEND_BOTTOM DEREVAIN 0
++ ~Greetings. Have you heard any rumors in your travels?~ DO ~SetGlobal("Erevain_Met","GLOBAL", 1)~ +9 END

EXTEND_BOTTOM DEREVAIN 1
++ ~Twenty years ago? You've been adventuring this whole time?~ +mod_ErevainA1 END

EXTEND_BOTTOM DEREVAIN 2
++ ~Explore the world? You must have been exploring Faerûn for a long time to get so far up North. ~ +mod_ErevainA1 END

EXTEND_BOTTOM DEREVAIN 3
++ ~Where is your homeland? Where do you hail from? ~ +mod_ErevainA3 END

EXTEND_BOTTOM DEREVAIN 6
++ ~Where is your homeland? Where do you hail from? ~ +mod_ErevainA3 END

EXTEND_BOTTOM DEREVAIN 9
++ ~I've seen a lot of fascinating and scary occurences myself traveling in strange parts since I left my home at Candlekeep.~ +1
+ ~NumInPartyGT(1)~ + ~This is a strange land to us Erevain. You are much more familiar than us. Would you consider joining us to travel to Kuldahar or wherever adventure leads us?~ +mod_ErevainA2
+ ~NumInPartyLT(2)~ + ~This is a strange land to me Erevain. You are much more familiar than I. Would you consider joining me to travel to Kuldahar or wherever adventure leads us?~ +mod_ErevainA2
+ ~Global("Join_Posse", "GLOBAL", 3) NumInPartyGT(1)~ + ~We're planning to join Hrothgar on an expedition to Kuldahar. Your familiarity with that area would be a great boon to us. Would you consider joining us?~ +mod_ErevainA2
+ ~Global("Join_Posse", "GLOBAL", 3) NumInPartyLT(2)~ + ~I'm planning to join Hrothgar on an expedition to Kuldahar. Your familiarity with that area would be a great boon to us. Would you consider joining us?~ +mod_ErevainA2
END

EXTEND_BOTTOM DEREVAIN 10
++ ~Hello again Erevain. Tell me, have you seen much in your travels?~ +1
+ ~!Race(Player1, ELF)~ + ~What in the Nine Hells is an elf doing up here?~ +2
+ ~Race(Player1, ELF)~ + ~Well met again brother. How goes your journey?~ +1
++ ~How do you feel about this weather? It's quite chilly around here.~ +3
END

EXTEND_BOTTOM DEREVAIN 11
+ ~("Join_Accalia","GLOBAL",1)~ + ~Hrothgar is about to embark on an expedition to Kuldahar to investigate the evil forces plaguing that region. You should join with us.~ +mod_ErevainB1 END

EXTEND_BOTTOM DEREVAIN 12
++ ~Why won't you join them especially if you might go through that are anyway? We should all travel together there.~ +mod_ErevainA2 END

APPEND DEREVAIN 
IF ~~ mod_ErevainA1
SAY ~Yes indeed. I've travelled all around Evereska, touched on Anauroch, through some of Comyr and the Dalelands, the Silver Marches, now finally the Spine of the World.~ 
IF ~~ THEN REPLY ~Hello. I'm <GABBER>. Tell me, Erevain, have you seen much in your travels?~ DO ~SetGlobal("Erevain_Met","GLOBAL", 1)~ +1
IF ~CheckStatLT(Player1, 9, CHR)~ THEN REPLY ~Yeah, yeah, yeah. Lots of places. I gotcha. So... hear any good rumors lately?~ +9
IF ~CheckStatGT(Player1, 8, CHR)~ THEN REPLY ~Being a traveler, you must hear a lot of interesting things. Have you heard anything interesting lately?~ +9
IF ~~ THEN REPLY ~Do you know of any other travelers in Easthaven?~ +12
IF ~~ THEN REPLY ~Well, that's a lot of interesting places traveled, but I must take my leave. Farewell.~ EXIT
IF ~NumInPartyGT(1)~ THEN REPLY ~We're travelers too: hailing from the Sword Coast. Would you consider traveling with us? You would be a great addtion.~ +mod_ErevainA2
IF ~NumInPartyLT(2)~ THEN REPLY ~I'm a traveler too: hailing from the Sword Coast. Would you consider traveling with me? You would be a great partner.~ +mod_ErevainA2
IF ~Global("Join_Posse", "GLOBAL", 3) NumInPartyGT(1)~ THEN REPLY ~We're planning to join Hrothgar on an expedition to Kuldahar. We could use an adventurer like yourself. Would you consider joining us?~ +mod_ErevainA2
IF ~Global("Join_Posse", "GLOBAL", 3) NumInPartyLT(2)~ THEN REPLY ~I'm planning to join Hrothgar on an expedition to Kuldahar. I could use an adventurer like yourself by my side. Would you consider joining me?~ +mod_ErevainA2
END

IF ~~ mod_ErevainA2
SAY ~I must respectfully decline. I have been used to adventuring alone for the last twenty years. I often avoid battles by sneaking past hostile creatures and cannot reliabily hide many other indviduals.~ 
IF ~~ THEN REPLY ~ That's unfortunate. You would have made a great adventuring companion. Oh well. Farewell. ~ EXIT
IF ~CheckStatLT(Player1, 9, CHR)~ THEN REPLY ~Fine, be mean like that. But, you better at tell us what rumors you know.~ GOTO 9
IF ~CheckStatGT(Player1, 8, CHR)~ THEN REPLY ~I'm sorry to hear that. Can you at least tell us any rumors you know?~ GOTO 9
IF ~~ THEN REPLY ~What do you mean avoid battles? Can't you fight?~ GOTO mod_ErevainA4
IF ~~ THEN REPLY ~What do you mean sneaking past? Are you a Ranger or Thief?~ GOTO mod_ErevainA5
IF ~~ THEN REPLY ~What do you mean hide other individuals? Are you a Mage?~ GOTO mod_ErevainA6
IF ~~ THEN REPLY ~It sounds like you're just a coward who can't fight. I can't have cowards join my party.~ GOTO mod_ErevainA4
IF ~CheckStatLT(Player1, 9, CHR)CheckStatLT(Player1, 9, INT)~ THEN REPLY ~Bah. Stupid elves are scared. Scaredy elf!~ GOTO 4
IF ~NumInPartyGT(1)~ THEN REPLY ~If you've been adventuring for twenty years, you must be good at it. I'm sure you have many useful skills that could help us survive this harsh land. Please, join us~ GOTO mod_ErevainA7
IF ~NumInPartyLT(2)~ THEN REPLY ~If you've been adventuring for twenty years, you must be good at it. I'm sure you have many useful skills that could help us survive this harsh land. Please, join me~ GOTO mod_ErevainA8
END

IF ~~ mod_ErevainA3
SAY ~Evereska is my homeland. A region and city adjacent to Comyr and located between the Sword Coast and great Anauroch desert. A great many elves participating in the Retreat are leaving there.~ 
IF ~!Race(Player1, ELF)~ THEN REPLY ~What is "the Retreat?"~ GOTO 6
IF ~CheckStatLT(Player1, 9, CHR)~ THEN REPLY ~Yeah, yeah, yeah. So... hear any good rumors lately?~ GOTO 9
IF ~CheckStatGT(Player1, 8, CHR)~ THEN REPLY ~Fascinating. Being a traveler, you must hear a lot of interesting things. Have you heard anything interesting lately?~ GOTO 9
IF ~CheckStatLT(Player1, 9, CHR) CheckStatLT(Player1, 9, INT)~ THEN REPLY ~So you came to Icewind Dale? Elf, you're stupid. This place is stupid too.~ GOTO 4
IF ~~ THEN REPLY ~That's certainly a long way away. It was nice talking to you, but I have to go. Farewell.~ EXIT
END

IF ~~ mod_ErevainA4
SAY ~Oh, I am a fighter and am quite handy with the longsword as well as the longbow. I have simply learned the limits and dangers of fighting solo and seek to avoid unnecessary conflicts~
IF ~~ THEN REPLY ~Sorry, I don't think you'd be a good fit here. Farewell.~ EXIT
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like you can handle a weapon just fine if need be especially given your long tenure adventuring. Please, join us.~ GOTO mod_ErevainA7
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like you can handle a weapon just fine if need be especially given your long tenure adventuring. Please, join me.~ GOTO mod_ErevainA8
IF ~CheckStatGT(Player1, 8, INT)~ THEN REPLY ~I think you're more likely to run up a tree than be of any real help to us. Good riddance.~ DO ~SetGlobal("Erevain_Jerk","GLOBAL", 1)~ EXIT
IF ~CheckStatLT(Player1, 9, INT)~ THEN REPLY ~If Scared elf not fight then scared elf get eaten. Dumb elf. ~ GOTO 4
END

IF ~~ mod_ErevainA5
SAY ~I prefer to call myself an Infiltrator. I excel in getting to places clandestinely as well as posessing the traditional Thief skills. If I must fight, my strike from the shadows is quite deadly.~ 
IF ~~ THEN REPLY ~Sorry, I don't think you'd be a good fit here. Farewell.~ EXIT
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like you can handle a weapon just fine and offer assistance with your rogue skills. Please, join us.~ GOTO mod_ErevainA7
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like you can handle a weapon just fine and offer assistance with your rogue skills. Please, join me.~ GOTO mod_ErevainA8
IF ~CheckStatGT(Player1, 8, INT)~ THEN REPLY ~I don't like rogues or any of their ilk. Good riddance.~ DO ~SetGlobal("Erevain_Jerk","GLOBAL", 1)~ EXIT
IF ~CheckStatLT(Player1, 9, INT)~ THEN REPLY ~Elf not stand and fight. Elf stupid and dumb. ~ GOTO 4
END

IF ~~ mod_ErevainA6
SAY ~Yes, I am a Mage. I have a variety of spells and special abilities that assist me in going invisible or avoiding detection.~ 
IF ~~ THEN REPLY ~Sorry, I don't think you'd be a good fit here. Farewell.~ EXIT
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like your magic and abilities would be most useful. Please, join us.~ GOTO mod_ErevainA7
IF ~NumInPartyGT(1)~ THEN REPLY ~It sounds like your magic and abilities would be most useful. Please, join me.~ GOTO mod_ErevainA8
IF ~CheckStatGT(Player1, 8, INT)~ THEN REPLY ~The last thing I want is a helpless mage adding dead weight. Good riddance.~ DO ~SetGlobal("Erevain_Jerk","GLOBAL", 1)~ EXIT
IF ~CheckStatLT(Player1, 9, INT)~ THEN REPLY ~Elf's magic very weak and not good. Dumb elf.~ GOTO 4
END

IF ~~ mod_ErevainA7
SAY ~Very well. I shall consider traveling with your group another adventure in of itself. Come, let us explore onward!~ DO ~JoinParty()~ EXIT
END

IF ~~ mod_ErevainA8
SAY ~Very well. I shall consider traveling with you another adventure in of itself. Come, let us explore onward!~ DO ~JoinParty()~ EXIT
END

IF ~~ mod_ErevainB1
SAY ~I might consider joining Hrothgar's expedition for his sake, but you were really rude to me earlier. You need to apologize to me.~ 
IF ~CheckStatLT(Player1, 9, INT)~ THEN REPLY ~I'm not saying sorry to stupid elfs. Dumb elfs should apologize to me for being dumb.~ GOTO mod_ErevainB2
IF ~CheckStatGT(Player1, 8, INT)~ THEN REPLY ~As I recall. You were quite rude to me. You should apologize to me first.~ GOTO mod_ErevainB2
IF ~~ THEN REPLY ~We seem to have gotten off on a bad foot. My apologies Erevain. I hope we can make amends and that you will join us on our expedition~ GOTO mod_ErevainB4
END

IF ~~ mod_ErevainB2
SAY ~I am now very sure that joining your expedition is a faulty notion. Best of luck; I shall not be joining you.~ DO ~SetGlobal("Erevain_Jerk","GLOBAL", 2)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Erevain_Jerk", "GLOBAL", 2)~ THEN BEGIN mod_ErevainB3 // from:
SAY ~I don't want to talk to you and I don't want to travel with you. Leave me be, please~ 
IF ~~ THEN REPLY ~Fine... goodbye.~ EXIT
END

IF ~~ mod_ErevainB4
SAY ~Very well. Apology accepted. Still, the thought of heading further into this dreary weather even to help others is most distressing. The last thing I need in desolate weather is trouble between my own companions~ 
IF ~~ THEN REPLY ~If you're too weak to defend yourself from "trouble" with your companions. Then perhaps you should toughen up. Worrying is for weakinglings.~ GOTO mod_ErevainB2
IF ~~ THEN REPLY ~We'll support each other every step of the journey. We have to if we're going to help these people.~ GOTO mod_ErevainB5
IF ~~ THEN REPLY ~We have to work together if we're going to get that big reward. I want to be successful just as you do.~ GOTO mod_ErevainB5
END

IF ~~ mod_ErevainB5
SAY ~Alright. Let us journey together. Let us join Hrothgar and begin the expedition. DO ~JoinParty()~ EXIT
IF ~~ EXIT
END
 
END // closes the APPEND command
