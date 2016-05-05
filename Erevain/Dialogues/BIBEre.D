// All Erevain's banters with other party members will go here.
// You don't need a BEGIN unless you're starting or overwriting a new dialogue file.

EXTEND_BOTTOM DEREVAIN 10
++ ~Erevain, you're an able adventurer, you should join us really.~ + mod_7
END
 
APPEND DEREVAIN
 
IF ~~ mod_7
SAY ~I think that's an interesting proposal.  Yes, I would like to.~ 
IF ~~ THEN REPLY ~Sure. Join the party~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Nah, go away.~ EXIT
END
 
END // closes the APPEND command

// (I used slightly more streamlined code - saves typing when you have a large .d file to create.)
