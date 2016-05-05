// Erevain's greeting dialogue will go here.
// You don't need a BEGIN unless you're starting or overwriting a new dialogue file.

EXTEND_BOTTOM DEREVAIN 10
++ ~Erevain, you're an able adventurer, you should join us.~ + mod_12
END
 
APPEND DEREVAIN
 
IF ~~ mod_12
SAY ~I think that's an interesting proposal.  Let me think about it.~ 
IF ~~ EXIT
END
 
END // closes the APPEND command

// (I used slightly more streamlined code - saves typing when you have a large .d file to create.)
