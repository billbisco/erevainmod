// The rest of Erevain's dialogue: his commentary, interjections, talks with the player, lovetalks and everything else.
// You don't need a BEGIN unless you're starting or overwriting a new dialogue file.

EXTEND_BOTTOM DEREVAIN 10
++ ~Erevain, you're an able adventurer, you should join us really. Please!~ + mod_25
END
 
APPEND DEREVAIN
 
IF ~~ mod_25
SAY ~I think that's an interesting proposal.  Yes, I would like to.  Fine.  FINE!~ 
IF ~~ THEN REPLY ~Sure. Join the party~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Nah, go away.~ EXIT
END
 
END // closes the APPEND command

// (I used slightly more streamlined code - saves typing when you have a large .d file to create.)
