"Rover's Day Out" by Jack Welch and Ben Collins-Sussman

The story headline is "An Interactive Fiction".
The release number is 14.
The story genre is "Science Fiction".
The story creation year is 2009.
The story description is "Three hundred years ago, the Brazilian Space Agency discovered a rocky exoplanet only 38 light years from Earth. With a surface temperature of 1200 Celsius and nine times Earth gravity, it's hardly the sort of place you'd take your dog walkies. Most days."

Include Glulx Text Effects by Emily Short.
Include Basic Screen Effects by Emily Short.
Include Menus by Emily Short.
Include Adaptive Hints by Eric Eve.
Include Flexible Windows by Jon Ingold.

Use full-length room descriptions, no scoring, american dialect and the serial comma.

Release along with cover art, an interpreter, and the introductory booklet.

Book 1 Mechanics

Chapter Capabilities 

To decide whether unicodage is disabled:
	(-  ~~glk_gestalt(gestalt_Unicode, 0) -)
	
To decide whether unicodage is enabled:
	(-  glk_gestalt(gestalt_Unicode, 0) -)

To decide whether status is disabled:
	(- ~~gg_statuswin -)
	
Understand the commands "ask", "tell" as something new.

Understand "ask [someone] about [text]" as asking it about when unicodage is enabled.
Understand "tell [someone] about [text]" as telling it about when unicodage is enabled.

Chapter No More Get All
[In the standard rules, Take is defined with the grammar token "things" rather than "thing". To expurge "get all" from the game, "take" must be redefined as something new, with full grammar here. This is based on a helpful usenet post by Khelwood, dated 21 December 2006.]

Understand the commands "take","carry" and "hold" as something new.

Understand "take [thing]" as taking.
Understand "take off [thing]" as taking off.
Understand "take [thing] from [thing]" as removing it from.
Understand "take [thing] off [thing]" as removing it from.
Understand "take inventory" as taking inventory.
Understand the commands "carry" and "hold" as "take".

Understand the command "get" as something new.
Understand "get out/off/up" as standing.
Understand "get [thing]" as taking.
Understand "get in/into/on/onto [thing]" as entering.
Understand "get off [thing]" as getting off.
Understand "get [thing] from [thing]" as removing it from.

Understand the command "pick" as something new.
Understand "pick up [thing]" or "pick [thing] up" as taking. 
	
Chapter Rules Modifications

[Devices are responsible for giving their on/off status -- if desired -- as part of their description. There's only a few devices in the game, so not a biggie.]
The examine devices rule is not listed in any rulebook.

[In this case, real adventurers might need to...]
The block swearing obscenely rule is not listed in any rulebook.

[To allow Rover to kiss the bulldozer and other stuff]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.

[To suppress the default library message asking for a compass direction...]
This is the nouveau vague going rule: say "More specific, please. Go towards what?"

The nouveau vague going rule is listed instead of the block vaguely going rule in the for supplying a missing noun rulebook.

Rule for writing a paragraph about Rover when the player is self-aware and Boarding Party is not happening:
	if Rover is not awake:
		say "ROVER cradles the space probe delicately [one of]in his sleep[or]while in power conservation mode[purely at random].";
	otherwise:
		if Rover carries the delicious bone:
			say "ROVER chews contentedly on [one of]his bone[or]the space probe[purely at random].";
		otherwise:
			say "ROVER remains on hot standby.";
	now Rover is busy.

Instead of swearing obscenely:
	if unicodage is disabled:
		say "Is there a prettier way to say that?";
	otherwise:
		let N be indexed text;
		let N be the player's command;
		if the N is "shit":
			say "Well...everybody poops. Even wanna-be adventurers.";
			try businessing;
		otherwise:
			say "Real adventurers don't use such language; nor, you remind yourself do [run paragraph on]";
			if the player is clueless:
				if the player is Rover:
					say "dogs";
				otherwise:
					say "the authors of interactive simulations";
			otherwise:
				say "sentient computers";
			say "."
		
Rule for printing the name of an aware-proxy while asking which do you mean: say "[bracket]COGNITIVE BLOCK[close bracket]".

Rule for clarifying the parser's choice of something: 
	do nothing.
	
To decide if player consents:
	(- BinaryInput() -).
	
Include (-
!Gleefully extracted from the YesOrNo() function
[ BinaryInput i j;
for (::) {
KeyboardPrimitive(buffer, parse);
j = parse-->0;
if (j) { ! at least one word entered
i = parse-->1;
if (i == YES1__WD or YES2__WD or YES3__WD or '1//' or 'one') rtrue;
if (i == NO1__WD or NO2__WD or NO3__WD or '0//' or 'zero') rfalse;
}
L__M(##Quit, 1); print "> ";
}
];
-).

Chapter Metaconversation

[A word of caution about metatext: Since we are passing an argument between I6 and I7 (i.e, the caption in the FancyPrint function), it is critical that the metatext not contain a text substitution, but be entirely literal text. I7 considers literal text one type, while text with substitution is another type. Don't cross the streams!

Also note, instead of a line break terminating each speaker's lines, an asterisk is used. To make all the spacing work out, put only one space after the colon which comes after the speaker's name. So, David: Says Something. But not: David:  Says Something.]

To say (dialogue - some text) in metaspeak:
	if Real Thing is happening or Boarding Party is happening or Back on Mars is happening:
		the rule succeeds;
	otherwise:
		say paragraph break;
 		say first custom style;
		say "[dialogue in fancyprint]";
 		say roman type;
 		say variable letter spacing;
 		say paragraph break.

To say (dialogue - some text) in fancyprint:
	(- FancyPrint ({dialogue}); -).

Include (-

Constant SPACE = 32;
Constant RIGHTMARGIN = 60;
Constant BIGNESS = 1024;

Array BigBuffer -> BIGNESS; !big enough to hold the largest metatext

[FancyPrint caption i linelen;
	caption.print_to_array(BigBuffer,BIGNESS);
	linelen = 0;
	for (i=WORDSIZE : i < BigBuffer-->0+WORDSIZE : i++){
		if (BigBuffer->i == '*'){
			print "^";
			linelen = 0;	
			continue;
		}
		if (linelen > (RIGHTMARGIN - 5) && BigBuffer->i == SPACE){
			print "^       ";
			linelen = 7;
			continue;
		}
		print (char) BigBuffer->i;
		linelen++;
	}
	rtrue;
];

-).

Chapter Declare Global Variables

Current memory usage is a number that varies. Current memory usage is 508.
Malloc is a number that varies. Malloc is 500.
[Malloc takes a dive after the switch from Windex to Flosix.]

Aware-references is a number that varies. Aware-references is 1.
[Tracks the number of times, up to 3, that the ACU has referred to objects by their aware-names. Used to switch between David/Janet comments]
 
Remember-invoked is a truth state that varies. Remember-invoked is false.
[tracks use of remember; used to trigger david/janet commentary]

David-remembered is a number that varies. David-remembered is 1.
[tracks whether an attempt has been made to remember david; used to trigger david/janet commentary]

Dream index is a number that varies. Dream index is 1.
[points to the next dream]

[Magpaper-related]
The IPL_pid, enamel_pid, ignite_pid, landing_pid, rover_pid, and epoch_pid are numbers that vary. The IPL_pid, enamel_pid, ignite_pid, landing_pid, rover_pid, and epoch_pid are zero.

[Ship orientation]
Roll, pitch, and yaw are numbers that vary. 
The roll is -60.
The yaw is 120.
The pitch is 60.

Last-yoke is a number that varies.[keeps track of whether the yoke is going in a good direction (if positive), neutral (0), or bad (negative)]

The last mentioned thing is a thing that varies.

Shells is a list of text that varies. Depth is a number that varies.

Elevate flag is a truth state that varies. Elevate flag is false.

Pressure is a number that varies. The pressure is 101. [kPa]

FiO2 is a number that varies. The FiO2 is 21. [fraction of inspired oxygen]

A person can be failsafed. Persons are usually not failsafed.

Wait-a-bit is a truth state that varies. The wait-a-bit is usually true.
[allows conditional compilation of the 'wait for any key' phrase depending on whether this is a testing version or a for-release version]

On-the-pot is a number that varies. On-the-pot is 0.

Stardate is a text that varies. Stardate is "23920401".
[Used in banners as serial number, also used in the time/date command
Here's a brief history of time for the game:
	April 1, 2392: 	Janet and David run the first simulation.
						Patching happens. They date.
	April 15, 2392:	J&D run the second simulation up to "Walkies".
						Overnight, David patches the ansible routine.
	April 16, 2392: 	Valkyrie launched.
	before 6/6/92:		Blazing Sunrise lands.
	June 6, 2392:		Valkyrie lands.
	August 17, 2393:	Valkyrie returns to Mars.
	2394:				Under certain conditions, the follow-up flight departs.
]

Pillow-locale is a room that varies. Pillow-locale is the Sleeping Room.

Rock-locale is a room that varies. Rock-locale is the Barren Plain.

Gone-towards is a number that varies. Gone-towards is zero.

Timer mode is a number that varies. Timer mode is zero.

Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.]

A bed is a kind of furniture. It is usually enterable.

A refrigerator is a kind of container. A refrigerator is usually closed, openable, fixed in place, and scenery. Understand "fridge" as refrigerator. 

A sink is a kind of furniture. Sinks are privately-named. Understand "sink" and "faucet" and "drain" as a sink.  

A here-delegate is a kind of thing. It is usually privately-named and scenery. Understand "room" as here-delegate. The scent of a here-delegate is usually "[the scent of the location]". The printed name of a here-delegate is usually "[printed name of location]".

A there-delegate is a kind of thing. It is usually privately-named and scenery. There-delegates have a room called destination.

Wakefulness is a kind of value. The wakefulnesses are asleep, sleepwalking, groggy, and alert.

Insightfulness is a kind of value. The insightfulnesses are self-aware and 
clueless.

Comm status is a kind of value. The comm statuses are surrendered, refused, or silent.

Docking status is a kind of value. The docking statuses are free, contacting, or sealed.

Everything has some text called aware-description.  Everything has some text called clueless-description. The aware-description of a thing is usually "".  The clueless-description of a thing is usually "".  The description of a thing is usually "[if the player is self-aware][aware-description][otherwise][clueless-description]". Everything has some text called aware-name. The aware-name of a thing is usually "". Everything has some text called clueless-name. The clueless-name of a thing is usually "". 

Everything has some text called scent. The scent of something is usually "". Every room has some text called scent. The scent of a room is usually "". 

Everything has some text called texture. The texture of something is usually "". 

Definition: a room is scented if the scent of it is not "".
Definition: a thing is scented if the scent of it is not "".

Rule for printing the name of the a thing (called the item):
	if the player is self-aware and the aware-name of the item is not "":
		say the aware-name of the item;
	otherwise:
		if the player is clueless and the clueless-name of the item is not "":
			say the clueless-name of the item;
		otherwise:
			say the printed name of the item;
			
An aware-proxy is a kind of thing. The aware-name of an aware-proxy is usually "COGNITIVE BLOCK".  Aware-proxies are always privately-named.

A room can be secluded. A room is usually not secluded.[For the purpose of hiding backdrops in "all secluded rooms" later.]

A simroom is a kind of room.  A simroom has some text called aware-name.  The aware-name is usually "location". A simroom has some text called clueless-name. The clueless-name is usually "".  A simroom has some text called aware-description.  A simroom has some text called clueless-description.  The aware-description of a simroom is usually "".  The clueless-description of a simroom is usually "".  The description of a simroom is usually "[if the player is self-aware][aware-description][otherwise][clueless-description]". A simroom has some text called sound. The sound of a simroom is usually "nothing out of the ordinary".

An outside room is a kind of room. The description of an outside room is usually "You are outside[inconsequential outside detail]." The printed name of an outside room is usually "The Park". An outside room has some text called aware-name. The aware-name is usually "planet surface".

A hole is a kind of container. A hole is always open, not openable and fixed in place.

A bowl is a kind of container. The carrying capacity of a bowl is one. 

Definition: a bowl is full if something is in it.

A message is a kind of prop. A message has some text called inscription. The inscription of a message is usually "".  [ben said: Props are portable by default.  Do we want this to be portable? Jack replied: I think so. I wasn't sure how many messages we would have in the game, and what they'd be. The message is the item that bears the inscription rather than the inscription itself. Most things I can think of that have writing on them (books, coins, birthday cards, etc.) are portable, so this seemed natural. If there is an inscription-bearing object that is not portable, we can always override it.]

forwards is a direction. The opposite of forwards is backwards.
backwards is a direction. The opposite of backwards is forwards.
leftwards is a direction. The opposite of leftwards is rightwards.
rightwards is a direction. The opposite of rightwards is leftwards.
clockwise is a direction. The opposite of clockwise is counterclockwise.
counterclockwise is a direction. The opposite of counterclockwise is clockwise.
 Understand "forward", "front" as forwards. Understand "backward", "back" as backwards. Understand "left", "port" and "leftward" as leftwards. Understand "right", "starboard" and "rightward" as rightwards. Understand "widdershins", "withershins" and "anticlockwise" as counterclockwise. Understand "deasil" as clockwise.  [ben said:  how about "left" and "right"? Jack replied: Yes, I've added them. Leftwards and rightwards were originally left and right, so left/right were implicitly understood, but then I added "-wards" for consistency. We might need to add some disambiguation versus other left/right objects like arms.]

A direction can be built-in or custom. A direction is usually built-in. Forwards, backwards, leftwards, rightwards, clockwise and counterclockwise are custom.

[class-wise resettable properties:]
A person has an object called initial-enclosure. The initial-enclosure of a person is usually nothing.

A prop has an object called initial-enclosure. The initial-enclosure of a prop is usually nothing.

A container has a truth state called initial-overture. The initial-overture of a container is usually false.

A door has a truth state called initial-overture. The initial-overture of a door is usually false.

A device has an truth state called initial-onoff. The initial-onoff of a device is usually false.

A water is a kind of thing. Waters are privately-named. The indefinite article of a water is usually "some".

Conclusion is a kind of value. The conclusions are alive, pillowed, casimired, transferred, casimired, eeled, david-killed, both-killed and janet-killed.  

Endgame is a conclusion that varies. The endgame is usually alive.

Poopstate is a kind of value. The poopstates are prepoop, poopready, and postpoop.

Definition: Something (called the item) is dog-relevant if the item is a supporter or the item is a container or the item is a door or the item is a prop which is held by the location.
[note that this definition can't be simplified as "something is dog-relevant if it is a supporter or a container or a door" as the "it" doesn't repeat, nor does it work if you say "something is dog-relevant if it is a supporter or a container...etc. Various combinations with parenthesis don't seem to help either.]

Section Chests and Lids

[borrowed more or less whole cloth from example 49 in the I7 documentation. Instead of keeping track of whether the lid is up or down, keep track of the open/close status of the chest.]

A chest is a kind of container. A chest is always openable. A chest is usually fixed in place. A chest is usually closed. The specification of a chest is "Represents a container with a separately implemented lid; the lid is itself a supporter."

A lid is a kind of supporter. A lid is part of every chest. Lids can be raisable. Lids are usually raisable. The specification of a lid is "A supporter attached to a chest, which can only support things when the chest is closed."

Before opening a lid which is part of a chest (called the item): 
	try opening the item instead.
Before closing a lid which is part of a chest (called the item): 
	try closing the item instead.
Before opening a chest when something is on the lid (called the obstruction) which is part of the noun: 
	repeat with item running through things on the obstruction: 
		say "(first removing [the item])"; 
		try taking the item.

Instead of opening a chest when something is on a lid (called the item) which is part of the noun: 
	say "You'd have to remove [the list of things on the item] from the lid first." instead.
	
Instead of looking under a lid which is part of a chest (called the item): 
    try opening the item.

Before inserting something into a lid which is part of a chest (called the item): 
	try inserting the noun into the item instead.
	
Before putting something on a chest when a lid (called the item) is part of the second noun: 
	try putting the noun on the item instead.
	
Instead of examining a closed chest when something is on a lid (called the top) which is part of the noun: 
	change outcome-override to force-failure;
	say "[The noun] is closed, and there [is-are a list of things on the top] on top."
	
[closely related is the flipchair:]

A flipchair is a kind of furniture. Flipchairs are enterable scenery. Flipchairs can be raisable. Flipchairs are usually raisable. Flipchairs can be open or closed. Flipchairs are usually open.


Chapter General Routines

[Text styles defined by Glulx]
Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255

Table of User Styles (continued)
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size 	glulx color
special-style-1	left-justified	no-obliquity		5		0	light-weight	fixed-width-font	-1	g-pure-blue
special-style-2	center-justified	no-obliquity	0	0	regular-weight	fixed-width-font	1	g-white

[Let's do a random walk, shall we?  :-) ]
Memory-updating is an action applying to nothing.
Carry out memory-updating:
	let memdelta be a random number from -25 to 25;
	now the current memory usage is the current memory usage plus memdelta;
	if current memory usage is greater than malloc + 140:
		now the current memory usage is malloc + 120;
	if current memory usage is less than malloc - 100:
		now the current memory usage is malloc. 

To say ACU Boot Banner:
	say "[bold type][story title][roman type]";
	say line break;
	say "An Interactive Simulation by Janet Xiang[if the Real Thing is happening] and David Venkatachalam[end if]";
	say line break;
	let serial be "[stardate]";
	let release be "beta";
	if First Sim is happening:
		let release be "beta 732";
	otherwise if Second Sim is happening:
		let release be "beta810";
	otherwise if Real Thing is happening:
		let release be "1";
	otherwise:
		say "Boot banner error.";
	say "Release [release] / Serial number [serial] / Inform 10.6 build Mu-013 (I6/v.7.1 lib 7/18N)";
	say paragraph break.
	
[BSOD routines - uses Flexible Windows extension.]
The BSOD-window is a g-window.   The type of the BSOD-window is g-text-buffer. The back-colour of the BSOD-window is g-blue.  The position of the BSOD-window is g-placeabove.  The scale method of the BSOD-window is g-fixed-size.  The measurement of the BSOD-window is 100.  The main-window spawns the BSOD-window.

[This snippet was supplied by Erik Temple;  it allows the *current g-window* to await a keystroke, which may have the focus over the main window during BSOD.  In particular, this makes BSOD not get 'stuck' when running under Spatterlight.]
To wait for any key in (win - a g-window): 
	(- KeyPauseWin ({win}.ref_number); -)
	
Include (- 
[ KeyPauseWin win i; 
      i = VM_KeyChar(win); 
      rfalse; 
]; 
-) 

BSODing is an action applying to nothing.
Carry out BSODing:
	say "*** STOP:  0x76A59BEE200198D2F99:  Fatal Exception.  Press a key to continue.";
	await keystroke;	
	open up BSOD-window;[this should return a testable code for whether it worked.]
	if BSOD-window is g-present:[flexible windows extension tracks its existence]
		change timer mode to 2;[mode 2 selects behavior in timed events function]
		set timer to 5000;	[kicks off the timer with 5 second delay]
		move focus to BSOD-window, clearing the window;
		say "[second custom style]                 WINDEX                 [paragraph break]A fatal exception F1 has occurred at    [line break]0013AF3411BC:5D00193D39B4 in DLL 35A3249[line break]in kernel ring beta. The current appli- [line break]cation will be terminated.              [paragraph break]* Something unpleasant has happened in  [line break]  the transputational core processor.   [line break]* Quantum entanglement compromised due  [line break]  to runtime error. All data lost.      [line break]* Sorry about that.                     [paragraph break][paragraph break]       Press a key to continue          ";
		await keystroke in the BSOD-window;
		shut down BSOD-window;
		return to main screen;
		stop timer;[the timed event never happens if user hits a key first]
	clear the screen.	
	
A glulx timed activity rule (this is the bsod window hint rule):
	if the timer mode is 2:
		say "[paragraph break]PRESS [bracket]SPACE[close bracket] TO RESET SIMULATION.";[this pops up if user does nothing for 5 seconds.]
		stop timer;[prevent this from happening *every* 5 seconds]
		the rule succeeds.

Trailering is an action applying to nothing.
Carry out Trailering:
	try section-breaking;
	say "Preview of [quotation mark]Red Rover, Red Rover,[quotation mark] the sequel to [quotation mark]Rover's Day Out[quotation mark][paragraph break]Captain's Log, September 5, 2396, Janet Xiang recording. Despite our sensor anomalies and the disorienting effect of the serial Casimir jumps which brought us here, Valkyrie emerged into a textbook-perfect polar orbit about Aurora.[paragraph break]The atmosphere is definitely breathable, and the probes show evidence of plant life. So far, no animal life, though. Rover is eager to be the first. Two years on a space ship are too long to go between walks.[paragraph break]We'll be in communications blackout for the next 20 hours, so I'm sending this initial report ahead of schedule.[paragraph break]Oh, and to make this official: This is Captain Janet Xiang of the MARSpace Exploration Vessel Valkyrie. I hereby claim planet Aurora as territory of the People's Republic of Mars."
		
Section-breaking is an action applying to nothing.
Carry out section-breaking:
	say "[paragraph break]               *    *    *[paragraph break]".

[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    change the last mentioned thing to the target.

To say is-are: 
    if the last mentioned thing is plural-named, say "are"; 
    otherwise say "is".

To say it-they: 
    if the last mentioned thing is plural-named, say "they"; 
    otherwise say "it".

To say (regular verb - some text) in correct agreement:
	say "[regular verb][if the last mentioned thing is not plural-named]s".

After examining the player:
	if the player is enclosed by something:
		if the player is enclosed by the futon and Bedtime is happening:
			say "You are [if the player is clueless]lying on[otherwise]accessing[end if] [the futon].";
		otherwise:
			say "You are [if the player is clueless]sitting on[otherwise]accessing[end if] [the holder of the player]."

Chapter Verbs
	
Section Computer Humor

Before touching something (called the item):
	if the player is self-aware:
		change the outcome-override to force-success;
		say "[bracket][if item is an aware-proxy][aware-name of the holder of the item][otherwise][aware-name of the item][end if][close bracket]: file timestamp updated[if the item is the black plate]. If your intention was to activate the UV irradiator, rephrase your request avoiding Flosix commands[end if].";
		the rule succeeds.
		
After touching something (called the item):
	if the item is the player:
		say "You feel normal. Nothing out of the ordinary, really.";
	otherwise:
		let T be "";
		let the regverb be "feel";
		if the texture of the item is "":
			let the T be "[one of]unremarkable[or]as you'd expect[or]like [it-they] should[or]normal[in random order]";
		otherwise:
			let T be the texture of the item;
		say "[if item is a part of the player]Your[otherwise]The[end if] [item] [the regverb in correct agreement] [T]."
		
Instead of jumping when the player is self-aware:
	change outcome-override to force-failure;
	say "Branch instruction ignored. Instruction pointer unaffected."
	
Mounting is an action applying to one thing. Understand "mount [something]" as mounting.

Check mounting:
	if the player is self-aware:
		say "Error: [one of]Device busy[or]Node locked[or]Illegal operation[or]File system not compatible[or]Special Device Conflict[in random order]." instead;

Carry out mounting:
	if the player is Rover:
		if the noun is the female dog:
			try touching the female dog;
		otherwise:
			say "No, [the noun] isn't your type.";
	otherwise:
		try entering the noun.
		
Cataloguing is an action applying to nothing. Understand "ls" as cataloguing when the player is self-aware and unicodage is enabled.

Carry out cataloguing:	
	let L be a list of text;
	let T be indexed text;
	let M be a number;
	if the location is the Living Room:
		add "engineering" to L;
		add "flight control" to L;
	otherwise if the location is the Bathroom:
		add "extruder" to L;
	repeat with item running through aware-proxies enclosed by the location:
		add the aware-name of the holder of the item to L;
	sort L;
	repeat with item running through L:
		[crazy hash]
		now M is 16353; [237 * 69, as close as you can get to 2^14]
		let T be item;
		repeat with N running from 1 to the number of characters in T:
			if character number N in T matches the regular expression "<aeiouy>":
				now M is M minus 1380;[20*69]
			otherwise:
				now M is M plus 69;
		if M is 0:
			now M is 69;
		if item is "engineering" or the item is "flight control" or the item is "extruder":
			say "d";
			now M is M divided by 69;
		otherwise:
			say "-";
		now M is M plus 10000;[no longer constrained z-machine integer size]
		say "-rwxr--r--   valkyrie  staff  [right justify M]  [item][line break]".

Understand "grep [something]" as searching when the player is self-aware.

Manpaging is an action applying to one topic. Understand "man [text]" or "consult manual about [text]" as manpaging when the player is self-aware and unicodage is enabled.

Carry out manpaging:
	say "No manual entry found."
	
Instead of manpaging a topic listed in the Table of Manual Pages:
	change used-manual to true;
	change outcome-override to force-success;
	say "[description entry][paragraph break]".

CDing is an action applying to nothing.

Carry out CDing:
	[exceedingly ugly, but it seems to work (and quickly enough) thanks to limited problem domain. Any more programmatic way of doing this would be appreciated.]
	let destination be Limbo;
	let T be indexed text;
	let T be the player's command;
	replace the regular expression "^cd\s*" in T with "";
	replace the regular expression "^valkyrie\/" in T with "";
	if T matches the regular expression "^\/$":
		try going towards the Living Room;
		the rule succeeds;
	replace the regular expression "\/$" in T with "";
	if T matches the regular expression "^$" or T matches the regular expression "^\.$":
		try going towards the location;
		the rule succeeds;
	if T matches the regular expression "^\.\.$":
		if the player is in the Living Room:
			try going towards the Living Room;
		otherwise:
			try exiting;
		the rule succeeds;
	if the player is in the Living Room:
		if T matches the regular expression "^(\.\/)?engineering$":
			change destination to the kitchen;
		if T matches the regular expression "^(\.\/)?flight control$":
			change the destination to the bathroom;
		if T matches the regular expression "^(\.\/)?flight control\/extruder$":
			change the destination to the shower;
	otherwise if the player is in the kitchen or the player is in the bathroom:
		if T matches the regular expression "^\.\.\/flight control$":
			change the destination to the bathroom;
		if T matches the regular expression "^\.\.\/flight control\/extruder$":
			change the destination to the shower;
		if T matches the regular expression "^\.\.\/engineering$":
			change the destination to the kitchen;
		if the player is in the bathroom and T matches the regular expression "^(\.\/)?extruder$":
			change the destination to the shower;
	otherwise if the player is in the shower:
		if T matches the regular expression "^\.\.\/\.\.$":
			change the destination to Living Room;
		if T matches the regular expression "^\.\.\/\.\.\/flight control$":
			change the destination to bathroom;
		if T matches the regular expression "^\.\.\/\.\.\/engineering$":
			change the destination to kitchen;
	if destination is Limbo:
		if T matches the regular expression "^\/operations$":
			change the destination to the Living Room;
		otherwise if T matches the regular expression "^\/operations/flight control$":
			change the destination to the bathroom;
		otherwise if T matches the regular expression "^\/operations/flight control/extruder$":
			change the destination to the shower;
		otherwise if T matches the regular expression "^\/operations/engineering$":
			change the destination to the kitchen;
	if the destination is Limbo:
		say "[T]: Not a directory[paragraph break]";
	otherwise:
		try going towards the destination.

Whoing is an action applying to nothing. Understand "who" as whoing.

Carry out whoing:
	if the player is clueless:
		say "You.";
	otherwise if the player is self-aware:
		say "ACU        vconsole        [right justify turn count minus epoch_pid][paragraph break]".	
		
Uptiming is an action applying to nothing. Understand "uptime" as uptiming when the player is self-aware.

Carry out uptiming:
	if the player is clueless:
		if the IPL_pid is 0:
			say "You still haven't dragged your sorry butt out of bed.";
		otherwise:
			say "Your alarm clock started going off at 5:30 this morning, and it took you another [IPL_pid] minutes to haul yourself to consciousness. You've been up since then. Congratulations.";
	otherwise:
		say "[time of day]  up [turn count - epoch_pid] minutes subjective,   1 user,    load average 0.99 [paragraph break]".	

After reading a command when the player is self-aware (this is the bypass parser for unix commands rule):
	if unicodage is disabled:
		continue the action;
	otherwise:
		[Bypassing the parser allows for unpredictable variety of arguments and flags, 
		 e.g., shutdown -r now
		Eventually, we could shove all of the unix-ish commands here, although there might be a performance price to pay]
		let T be indexed text; 
		let U be text;
		let T be the player's command;
		let S be some text;
		change S to "";
		if T matches the regular expression "^(shutdown|halt|reboot)":
			change S to "shutdown";
		otherwise if T matches the regular expression "^find|^locate":
			change S to "locate";
		otherwise if T matches the regular expression "^cat":
			change S to "concatenate";
		otherwise if T matches the regular expression "^echo":
			change S to "echo";
		otherwise if T matches the regular expression "^ping":
			change S to "ping";
		otherwise if T matches the regular expression "^cd":
			change S to "cd";
		otherwise if T matches the regular expression "^(cp|mv|rm|telnet|ftp|gcc|services|head|tail|more|less|sed|awk)" or T matches the regular expression "^(ed|vi|emacs|nano|pico|perl|python|chmod|chown|wall|dd|du|df)" or T matches the regular expression "^(kill|jobs|ln|mkdir|ps|rcp|sleep|stty|md|net|svn)" or T matches the regular expression "^(bc|wc|bg|diff|patch|uu|tar|zip|unzip|gzip|gunzip|wall|mail)":
			change S to "nop";
		if S is not "":
			change got-action to false;
			if S is:
				-- "shutdown": try shutdowning;
				-- "locate": try locating;
				-- "concatenate": try kittying;
				-- "echo": try echoing;
				-- "ping": try pinging;
				-- "cd": try cding;
				-- "nop": try nopping;
			the rule succeeds.
		
		[The catch-all laundry list is expressed as a few conditions or'ed together because a single long regexp generates a runtime error.  Also, it is not possible to perform a substitution within the regexp, so defining the whole group of nonimplemented unix commands as a token does not work.]
	
Shutdowning is an action applying to nothing.

Carry out shutdowning:
	shutdown;
	say line break.
	
Reps is a number that varies.
	
To shutdown:
	[glulx timed events-related code builds on the Glulx Entry Points Extension]
	if glulx timekeeping is supported: 
		change reps to 50;
		change timer mode to 1;
		set timer to 300;
	otherwise:
		say "Preparing to shutdown.....[line break]Preparing to unmount all volumes.....[line break]Preparing to disengage sensors.....[line break]Preparing to disengage effectors.....[line break]Preparing to ACU shutdown.....[paragraph break]Root authentication failed.[line break]Command aborted."
	
To set timer to (delay - number):
	(- glk_request_timer_events({delay}); -)
	[starts time with delay milliseconds between events]
	
To stop timer:
	(-  glk_request_timer_events(0); -)

A glulx timed activity rule (this is the countdown rule):
	[The inexorable march towards an aborted shutdown]
	if the timer mode is 1:
		if reps is:
			-- 50: say "Preparing to shutdown[run paragraph on]";
			-- 40: say "[line break]Preparing to unmount all volumes[run paragraph on]";
			--	30: say "[line break]Preparing to disengage sensors[run paragraph on]";
			--	20: say "[line break]Preparing to disengage effectors[run paragraph on]";
			--	10: say "[line break]Preparing ACU for executive shutdown[run paragraph on]";
			--	 1: say "[line break]Root authentication failed.[paragraph break]Command aborted.[line break]"; 
			--	 0: stop timer;
			-- otherwise: say ".[run paragraph on]";
		decrease reps by one;
		the rule succeeds.
	
Locating is an action applying to nothing.  

Carry out locating:
	let T be indexed text; 
	let U be text;
	let T be the player's command;
	replace the regular expression "^find|^locate\s*" in T with "";
	repeat with item running through aware-proxies in the Valkyrie Area:
		let U be the aware-name of the holder of item;
		if T matches the text U, case insensitively:
			say "[the path of item][paragraph break]";
			change the outcome-override to force-success;
			the rule succeeds;
	say "Not found.";
	the rule fails.

Kittying is an action applying to nothing. 

Carry out kittying: 
	let T be indexed text; 
	let U be text;
	let T be the player's command;
	replace the regular expression "^cat\s*" in T with "";
	repeat with item running through aware-proxies in the Valkyrie Area:
		let U be the aware-name of the holder of item;
		if T matches the text U, case insensitively:
			say "No alphanumerical display available.";
			the rule succeeds;
	say "No such device or directory.";
	the rule fails.
	
Echoing is an action applying to nothing. 

Carry out echoing:
	let T be indexed text; 
	let T be the player's command;
	replace the regular expression "^echo\s*" in T with "";
	if T matches the regular expression "\$PATH":
		say "/operations;/operations/flight control;/operations/flight control/extruder;/operations/engineering";
	otherwise:
		say T;
		say paragraph break;
	the rule succeeds.
	
Pinging is an action applying to nothing. 

Carry out pinging: 
	let T be indexed text; 
	let T be the player's command;
	if T matches the regular expression "^ping \d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}":
		replace the regular expression "^ping (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" in T with "\1";
		if T matches the regular expression "127\.0{1,3}\.0{1,3}\.0{0,2}1":
			repeat with X running from 1 to 5:
				let routetime be a random number from 1 to 9;
				say "ping 127.0.0.1 with 56 bytes: [5 + routetime] attoseconds[line break]";
			say "100% of packets received[paragraph break]";
			change the outcome-override to force-success;
			the rule succeeds;
		otherwise:
			say "Host not available on network[paragraph break]";
			the rule fails;
	otherwise:
		say "usage: ping address[paragraph break]";
		the rule fails.

Nopping is an action applying to nothing. 

Carry out nopping: 
	say "command not available from virtual console[paragraph break]".

To say the path of (item - an object):
	let S be a list of text; 
	while the holder of item is not a room:
		add the aware-name of the holder of the item to S;
		now item is the holder of item;
	say "valkyrie//";
	if the holder of item is not Living Room:
		say "[the aware-name of the Living Room]/";
	if the holder of the item is the Shower:
		say "[the aware-name of the bathroom]/";
	say "[aware-name of the holder of the item]/";
	reverse S;
	repeat with D running through S:
		say "[D]/".
		
Pwding is an action applying to nothing. Understand "pwd" as pwding when the player is self-aware.

Carry out pwding:
	say "[the path of the acu-proxy][paragraph break]";
	
Bashing is an action applying to nothing. Understand "bash" or "sh" or "ksh" as bashing when the player is self-aware and unicodage is enabled.

Carry out bashing:
	say paragraph break;
	add "$" to shells.
	
Cshing is an action applying to nothing. Understand "csh" or "zsh" or "tcsh" as cshing when the player is self-aware and unicodage is enabled.

Carry out cshing:
	say paragraph break;
	add "%" to shells.
	
Logoutting is an action applying to nothing. Understand "logout" as logoutting when the player is self-aware.

Carry out logoutting:
	change outcome-override to force-failure;
	now depth is the number of entries in shells;
	if depth is zero:
		say "ACU metavisor shell logout interdicted[if the location is the shower]. If your intention is to deaccess the extruder system, use another command that is not a Flosix command[end if].";
	otherwise:
		say "logout: not login shell: use [apostrophe]exit[apostrophe][line break]".
		
Shellupping is an action applying to nothing. Understand "exit" as shellupping when the player is self-aware and unicodage is enabled.

Carry out shellupping:
	now depth is the number of entries in shells;
	if depth is zero:
		try logoutting;
	otherwise:
		say paragraph break;
		truncate shells to depth minus 1 entries.
		
Fingering is an action applying to one topic. Understand "finger [text]" as fingering when the player is self-aware and unicodage is enabled.

Carry out fingering:
		say "finger: no such user[paragraph break]".
		
Instead of fingering a topic listed in the Table of Fingers:
	say "Login: [login entry][line break]";
	say "Name: [name entry][line break]";
	say "Directory: [dir entry][line break]";
	say "Shell: /bin/[shell entry][line break]";
	if the name entry is not "Autonomous Control Unit":
		say "Last login [laston entry]";
	otherwise:
		say "On since Thu Apr 16 02:30";
	say line break;
	say "No Mail.";
	say "Plan: [plan entry]."
		
Table of Fingers
topic		name		dir		login		shell		laston		plan
"David" or "Venkatachalam"	"David Venkatachalam"		"/home/dave"	"dave"		"tcsh"		"Fri Apr 16 02:30 (CST) on console"	"Thank God men cannot as yet fly and lay waste the sky as well as the earth! (Henry David Thoreau, 1817-1862)"
"Janet" or "Xiang"		"Janet Xiang"	"/home/xyzzy"		"xyzzy"		"bash"		"Wed Apr 15 17:17 (CST) on ttys001"		"Necessity is blind until it becomes conscious. Freedom is the consciousness of necessity.[line break]-----BEGIN GEEK CODE BLOCK-----[line break]Version: 8.2[line break]GCS d-- s--:- a C++++$ FL?P E++ [line break]W N o K-- w-- O M++ V PS++ PE++[line break]Y+$ PGP++ t+++ R+++ 3d++ b++++[line break]D G+++ e++++ h+ r-- x+[line break]------END GEEK CODE BLOCK------"
"ACU" or "autonomous" or "control" or "unit" or "me"		"Autonomous Control Unit"		"/operations"		"acu"		"bash"		--		"No plan"
"root" or "administrator" or "admin"		"root"		"/var/root"		"root"		"bash"		"Fri Apr 17 04:32 (CST) on console"		"No plan"

Catting is an action applying to one thing. Understand "cat [something]" as catting when the player is clueless.

Carry out catting:
	if the player is the acu:
		say "You're more of a dog person, actually.";
	otherwise: [i.e., rover]
		say "Bah, cats. They're good for chasing, but not much else."
			
Elevating is an action applying to nothing. Understand "su" or "sudo" as elevating when the player is self-aware and unicodage is enabled. 

Carry out elevating:
	if unicodage is disabled:
		say "Privilege elevation interdicted.";
	otherwise:
		now elevate flag is true;
		change the command prompt to "Password: ".
	
After reading a command when elevate flag is true:
	let T be indexed text;
	let T be the player's command;
	now elevate flag is false;
	update prompt;
	if T matches the text "EarthRuleNow999":
		say "Root login from vconsole interdicted.";
	otherwise:
		say "Login error. Access violation logged.";
	reject the player's command.
	
Clearing is an action applying to nothing. Understand "clear" or "cls" as clearing when the player is self-aware.

Carry out clearing:
	clear the screen.	
			
Section Reading
		
Understand the command "read" as something new. Reading is an action applying to one thing. Understand "read [a thing]" as reading.

Check reading:
	If the player is rover:
		say "Dogs can't read." instead;
	If the noun is:
		-- lips:
			say "You never learned how to read lips[if the player is self-aware and audio is switched off]. You figure that it would be easier to try to listen to what they're saying[end if]." instead;
		-- David:
			say "You've never been good at reading men." instead;
		-- Janet:
			say "Your attempt at introspection-by-proxy fails." instead;
		-- acu:
			say "You do not have sufficient privilege to read yourself." instead;
		-- Rover:
			say "He's a dog, not a book." instead;
	If the noun is not a message:
		say "That's not something you can read." instead;
	If the inscription of the noun is "":
		say "Nothing is printed on [the noun]." instead.
			
Carry out reading:
	change the outcome-override to force-success;
	say the inscription of the noun;
	say paragraph break.
	
Dating is an action applying to nothing. Understand "date" or "time" as dating when the player is self-aware.

Carry out dating:
	say "[stardate]:[time of day as 24h time][paragraph break]".

[lifted almost verbatim from example 139 in I7 documentation: situation room]	
To say (relevant time - a time) as 24h time: 
    let H be the hours part of relevant time; 
    let M be the minutes part of relevant time; 
    say "[if H is less than 10]0[end if][H]:[if M is less than 10]0[end if][M]".	

Section Going Towards

Going towards is an action applying to one thing.

Understand "enter [any room]" or "go [any room]" or "go to [any room]" or "go toward [any room]" or "go towards [any room]" as going towards.

Understand "go [any person]" or "go to [any person]" or "go toward [any person]" or "go towards [any person]" as going towards when the player is Rover.

Check going towards:
	if the noun is a person:
		if the noun is the actor:		
			say "How much more here do you want to be?" instead;
		if the noun is in the location:
			say "[The noun] is already here." instead;
	if the player is Rover and the noun is the Smoking Pit and Rover is in the Planet Area and Rover is not in the Front Yard:
		say "You're already in The Park." instead;
	if the noun is the location, say "You're already here." instead;
	if the player is the ACU and the noun is not in the Valkyrie Area:
		if the player is clueless:
			say "You're not ready to go out yet." instead;
		otherwise:
			say "[cant go out]" instead.

Carry out going towards:
	if the player is the ACU and the noun is in the Valkyrie Area:
		move the player to the location of the noun;
		change outcome-override to force-success;
	otherwise:
		let the way be the best route from the location to the location of the noun, using even locked doors;
		if the way is not a direction:
			say "You can't figure out how to get there." instead;
		let the destination be the room the way from the location; [ben said:  huh?  english grammar parse failure...Jack said: OK, I've replaced "the heading" with "the way" which seems to be the favorite word choice in the examples. Still sounds stilted.]
		if the destination is nothing:
			say "You're not sure how to get there.";
			the rule succeeds;
		change outcome-override to force-success;
		if the player is Rover, say "[one of]You trot off in that direction[or]You let your nose lead the way[or]You bound away towards your goal[or]Your legs carry you as fast as they can[or]You eagerly scamper that way[or]You scuttle forth[or]Trot, trot, trot[in random order].[paragraph break]";
		move the player to the destination.
	
Rule for reaching inside a room when the current action is going towards: 
    allow access.[necessary to allow the going towards rule to work on a person that is out of local scope; otherwise would throw a "you can't reach inside the kitchen" sort of error.]

Before going a built-in direction (called the way):
	if the way is up or the way is down or the way is inside or the way is outside:
		continue the action;
	if the ACU is the player: 
		if the player is clueless:
			say "Compass directions? On Mars? The magnetic field here is too weak.";
			now the ACU is lost;
		otherwise:
			say "That term is undefined in the present reference frame.";
	otherwise: [maybe safer to say 'if Rover is the player'?]
		say "Woof?";
	rule succeeds;
	
Before going a custom direction:
	say "If you want to go somewhere, just say so (like, [quotation mark]go towards the living room[quotation mark]).";
	the rule succeeds.

Instead of going towards when the player is in the Living Room and the futon is not folded:
	say "You can't really move around much because of the futon. It takes up a lot of room.[paragraph break]";
	if the futon is not obstructed and (the First Sim is happening or the Second Sim is happening):
		now the futon is obstructed;
		if the First Sim is happening:	
			let metatext be "David: Isn't that a tad inconvenient?*Janet: Yeah, but it kind of made sense when I got it.";
			say "[metatext in metaspeak]";
		otherwise if the Second Sim is happening:
			let metatext be "Janet: Inconvenient, yes, but it does have its advantages.*David: Agreed.";
			say "[metatext in metaspeak]".
			
After going towards when the player is the ACU:
	increase gone-towards by one;
	if gone-towards is 10:
		let metatext be "David: That's a lot to keep saying just to move from room to room. Rather inefficient, don't you think?*Janet: Oh? What would you suggest?*David: How about just saying 'lr' to go to the living room or 'k' to go to the kitchen? Or something to that effect.*Janet: Hmm. Let me add that...done. And on the fly no less.*David: I'm impressed.*Janet: You're okay for a hardware guy.";
		say "[metatext in metaspeak]";
	if the player carries the reward nuggets replicator:
		if Rover is in the location:
			say "[Rover] [if the player is clueless][one of]begs for some treats[or]dances around, trying to suggest that he'd be glad to do one of his tricks for a reward nugget[or]sniffs at [the reward nuggets replicator][or]keeps an eye on [the reward nuggets replicator][or]stares dreamily at the doggie treats[or]watches you intently, concentrating on [reward nuggets replicator][or]scrutinizes [reward nuggets replicator][or]contemplates [the reward nuggets replicator][or]dreams about the doggie treats in that [reward nuggets replicator][or]lies down, rolls over, and barks, hoping to persuade you to toss him a treat[or]sits and gives kisses, hoping to earn a reward nugget[in random order][otherwise]maintains a fix on [the reward nuggets replicator][end if].";
		otherwise:
			if Rover is in Limbo:
				do nothing;
			otherwise:[Rover not in Limbo]			
				if the location is the shower:
					now Rover is in the bathroom;
					say "[Rover] [if the player is clueless]pads along behind you until you get to the shower but decides he's not willing to risk a bath for some reward nuggets[otherwise]follows your focus as you select the extruder, but he stops just outside it in the flight control area[end if].";
				otherwise:
					now Rover is in the location;
					say "[Rover] trundles along behind you, his attention riveted to [the reward nuggets replicator].";
		now Rover is busy;
	if the location is:
		-- kitchen:
			if the counter is not discussed and the Second Sim is happening:
				now the counter is discussed;
				let metatext be "David: Where are your coffee machine and toaster?*Janet: I mapped the ship functions to the minimum number of objects. More objects means more ways for things to go wrong and more time debugging. Call me lazy.*David: Lazy.*Janet: You don???t know the crazy things the ACU does! Sometimes it walks around trying to eat or take everything in sight. Sometimes it sings and jumps around. It???s based on my neural bindings, but the ACU definitely has a mind of its own, and I don???t want to have to worry about what it might try do with a toaster.";
				say "[metatext in metaspeak]";
			if the landing_pid is not zero and (Rover is hungry or Rover is thirsty) and Rover is in the kitchen:
				if Rover is hungry:
					if the holder of the food bowl is the location:
						say "[Rover] taps conspiratorily on his [food bowl].";
						now Rover is busy;
				otherwise:
					if the holder of the water bowl is the location:
						say "[Rover] gently nudges the [water bowl] with his [if the player is clueless]nose[otherwise]forward sensor array[end if].";
						now Rover is busy;
		-- bathroom:
			if the bathroom is not really-visited and the Second Sim is happening:
				now the bathroom is really-visited;
				let metatext be "Janet: Let???s hope the simulation doesn???t crash again. I???d really like to run it all the way through to the Rover release.*David: It???s looked good this far.";
				say "[metatext in metaspeak]".
				
Instead of going when the player is self-aware:
	if the noun is outside and the room outside from the location is not in the Valkyrie Area:
		say "[cant go out]";
	otherwise:
		continue the action.
		
After reading a command:
	if unicodage is disabled:
		continue the action;
	otherwise:
		let T be indexed text;
		let T be the player's command;
		if T matches the regular expression "^go\s*$":
			say "You'll have to say what you'd like to go towards.";
			the rule succeeds.
				
To say cant go out:
	say "You cannot extend your operations beyond the Valkyrie itself."
	
Kitchen-going is an action applying to nothing. Understand "k" as kitchen-going when the player is the acu and gone-towards is greater than 9. 

Carry out kitchen-going:
	change last-noun to "ENGINEERING";
	try going towards the kitchen.

Bathroom-going is an action applying to nothing. Understand "b" as bathroom-going when the player is the acu and gone-towards is greater than 9. 

Carry out bathroom-going:
	change last-noun to "FLIGHT CONTROL";
	try going towards the bathroom.

Livingroom-going is an action applying to nothing. Understand "lr" as livingroom-going when the player is the acu and gone-towards is greater than 9. 

Carry out livingroom-going:
	change last-noun to "OPERATIONS";
	try going towards the living room.

Shower-going is an action applying to nothing. Understand "sh" as shower-going when the player is the acu and gone-towards is greater than 9 and the player is clueless. [clueless is specified because sh when aware will spawn a bash shell.]

Carry out shower-going:
	change last-noun to "EXTRUDER";
	try going towards the shower.

Section Leaving

Leaving is an action applying to one thing. Understand "leave [any room]" or "exit [any room]" as leaving.

Check leaving:
	if the noun is not the location:
		say "You can't leave there, because you aren't there." instead.
		
Carry out leaving:
	try exiting. 
	
Understand "leave" as exiting.	

Section Folding and Unfolding

Folding is an action applying to one thing. Understand "fold [something]" as folding. Understand "fold up [something]" as folding. Understand "collapse [something]" as folding when the player is the acu.  

Check folding:
	say "You can't fold [the noun]."
	
Instead of folding the futon:
	if the futon is folded:
		say "It's already as small as it gets.";
	otherwise if the futon encloses the player:
		say "That would be painful.";
	otherwise:
		now the futon is folded;
		change outcome-override to force-success;
		say "With a little effort, the futon folds up, snug against the wall, leaving more room to walk around the cramped cottage."
	
Unfolding is an action applying to one thing. Understand "unfold [something]" as unfolding when the player is the acu.  

Check unfolding:
	say "[The noun] is not something you can just go around unfolding."
	
Instead of unfolding the futon:
	if the futon is not folded:
		say "[if the player is clueless]What?  Doesn't it already take up just about the entire living room?[otherwise]The Casimir Drive is already extended.[end if]";
	otherwise:
		if Back on Mars is happening:
			say "In an act of desperation, you prepare to deploy the Casimir Drive while in dry dock. An internal warning flashes red in your virtual vision, blinking insistently. You try to push it to the side, but it is modal:[paragraph break]WARNING: Deep gravity well. Deploying Casimir Drive will cause a Casimir inversion. Theoretically, this may result in destruction on a planetary or greater scale. Confirm that Casimir deployment is authorized (Y/N)[paragraph break]BINARY INPUT REQUIRED>";
			if the player consents:
				change outcome-override to force-success;
				say "There is a flash of white. And then nothing.";
				now the endgame is casimired;
				end the game in death;
				the rule succeeds;
			otherwise:
				say "You wisely abort activation of the Casimir Drive so close to a planet."; 
		otherwise:
			say "[if the player is clueless]It's too early in the day to head back to bed[otherwise]Deploying the Casimir Drive within a star system, much less deep within a planetary gravity well, would likely destroy not only the ship, but the planet as well, so you reconsider the action[end if]."
		
Instead of pushing the futon:
	try folding the futon.
	
Instead of pulling the futon:
	try unfolding the futon.

Instead of folding or pushing the mattress:
	try folding the futon.
	
Instead of unfolding or pulling the mattress:
	try unfolding the futon.
	
Instead folding or pushing the frame:
	try folding the futon.
	
Instead of unfolding or pulling the frame:
	try unfolding the mattress. 
	
Instead of taking the mattress:
	say "The mattress is molecularly bonded to the bed's frame. Besides, it would be awfully unwieldy to carry about."
	
Instead of taking the frame:
	say "The frame is an integral part of the futon."
	

	
Section Smelling

After deciding the scope of the player while smelling:
	if the player is rover:
		place the female dog in scope;
		place the smelly man in scope;
		place home in scope.
		
A procedural rule while smelling:
	ignore the can't reach inside rooms rule.

Instead of smelling:  
	let the regverb be "smell";
	if the player is clueless:
		if the player is Rover:
			change outcome-override to force-success;[Rover always smells something]
			if the noun is the location or the noun is a here-delegate:
				if the scent of the noun is "":
					say "This place doesn't have any particular smell, so you point your snout up in the air and take a good sniff. [run paragraph on]";
				otherwise:
					say "It smells [scent of the noun] here. [run paragraph on]";
				try sniffscanning;
				the rule succeeds;
			otherwise if the noun is a backdrop:				
				do nothing;[the ground, walls, ceiling, etc. are backdrops, so not in the location; the default rule serves adequately.]
			otherwise	 if the noun is not enclosed by the location:
				say "[The noun] is not here, so you sniff the air.[paragraph break]";
				if the noun is:
					-- the smelly man: 
						say "[man-smell].";
					-- the female dog: 
						say "[dog-smell].";
					-- home: 
						say "[home-smell].";
					-- otherwise: 
						say paragraph break;
				the rule succeeds;
		otherwise:[player is the ACU]
			if the noun is not the location and the noun is not enclosed by the location:
				say "You don't smell anything in particular.";
				the rule succeeds;
			if the noun is the location or the noun is a here-delegate:
				if the scent of the location is "":
					say "You don't smell anything in particular.";
				otherwise:
					change the outcome-override to force-success;
					say "It smells [scent of the location] here.";
				the rule succeeds;
		[player could be either a clueless ACU or Rover:]
		if the scent of the noun is "":
			change the outcome-override to force-failure;
			say "The [noun] [the regverb in correct agreement] [one of]unremarkable[or]ordinary[or]not particularly interesting[in random order].";
			the rule succeeds;
		change the outcome-override to force-success;
		if the noun is the player:
			 say "You smell";
		otherwise if the noun is the female dog:
			say "She smells";
		otherwise if the noun is part of the player:
			say "Your [noun] [the regverb in correct agreement]";
		otherwise:
			say "[The noun] [the regverb in correct agreement]";
		say " [scent of the noun].";
	otherwise:
		change outcome-override to force-success;
		say "Internal atmospheric analysis: [99 minus FiO2]% diatomic nitrogen, [FiO2]% diatomic oxygen, less than 1% carbon dioxide and trace gases, no particulate matter. Pressure [Pressure] kPa.";[This is flight configuration, and should change after the ship is on the planet or if the ship is vented as a countermeasure against the pirates.]
		the rule succeeds.		
				
Sniffscanning is an action applying to nothing. 

Report Sniffscanning:
	say "[man-smell]. ";
	say "[dog-smell]. ";
	say "[home-smell]."
	
To say man-smell:
	let manrange be a number;
	change manrange to the number of moves from the location to the Sleeping Room, using doors;
	say "From [the manscent corresponding to the range of manrange in the Table of Nasal Rangefinding] you smell the [one of]disagreeable scent[or]odor[or]stale funk[or]stench[in random order] of a[if a random chance of 1 in 10 succeeds] (not very hygienic)[end if] man"
	
To say dog-smell:
	let dogrange be a number;
	change dogrange to the number of moves from the location to the location of the female dog, using doors;
	say "Interestingly, you detect the [one of]diverting[or]intriguing[or]captivating[or]thought-provoking[or]riveting[or]engrossing[or]stimulating[or]enthralling[or]attractive[or]appealing[or]amusing[or]entertaining[in random order] [one of]scent[or]perfume[or]fragrance[or]bouquet[or]aroma[in random order] of a female dog [dogscent corresponding to the range of dogrange in the Table of Nasal Rangefinding]"

To say home-smell:	
	let homerange be a number;
	change homerange to the number of moves from the location to the Living Room, using doors;
	say "The [one of]comforting[or]cheerful[or]heartening[or]reassuring[or]pleasant[or]soothing[in random order] smell of home is [homescent corresponding to the range of homerange in the Table of Nasal Rangefinding]"
	
Table of Nasal Rangefinding
range		manscent				dogscent				homescent
0			"an unfortunately small distance"			"at muzzle's distance from you"		"just on the other side of that wall"
1			"just around the corner"	"coming from somewhere really close"	"a hop, lick, and a bark away"
2			"not too far away"	"coloring the air with its lovely scent from only a short run away"		"two shakes of a tail from here"
3			"some distance"		"wafting enticingly from not too far away"	"a short run from here"
4			"a ways off"			"carried across the park by the wind"		"still present"
5			"a considerable distance"	"coming from a reasonable distance away"		"getting fainter"
6			"a long way off"	"delicately scenting the air"		"worryingly faint from here"
7			"far away"			"faintly, but definitely, tickling your nose from some remote, and no doubt exotic, location."		"all but undetectable from here"
8			"far, far away"		"a distant, but enviable, location"		"only a wispy trace at this far extreme of your faithful nose's olfactory abilities"


Section Tracking and Following

[These are here just so players don't have to 'guess the verb' to make Rover go places]

Tracking is an action applying to one thing.  Understand "track [thing]" as tracking.
Instead of tracking a thing, say "Perhaps it's better if you just go toward the thing you want.".

Following is an action applying to one thing.  Understand "follow [thing]" as following.

Instead of following a thing (called the quarry):
	if the quarry is in the location:
		say "It is a short trip.";
	otherwise:
		 say "[one of]There ain't nothing to it, but to do it[or]Go for it: try going towards [the quarry], if you want[stopping]."

A procedural rule while following:
	ignore the can't reach inside rooms rule.

After deciding the scope of the player while following:
	if the player is rover:
		place the female dog in scope;
		place the smelly man in scope.

Section Reorienting-release version

Reorienting is an action applying to nothing. 
	
Carry out reorienting:
	if the player is self-aware:
		now the player is clueless;
	otherwise if the player is not Rover:
		now the player is self-aware;
		change the command prompt to "	READY>".
		
Section Awaiting Keystroke-release version

To await keystroke:
	if the wait-a-bit is true:
		wait for any key.

To await keystroke in (win - a g-window):
	if the wait-a-bit is true:
		wait for any key in win.
		
Section Potty Language

Businessing is an action applying to nothing. Understand "crap" or "poop" or "defecate" or "do business" or "piss" or "pee" or "urinate" or "micturate" or "tinkle" or "whiz" or "void" or "take a dump" as businessing.

Check Businessing:
	if the player is Rover:
		say "This is one of those rare occasions on which you don't have anything to do.";
		the rule fails;
	if the player is wearing the flight suit:
		say "[if the player is clueless]You can do a lot of things in your one-piece flight suit. That ain't one of them[otherwise]The ACU quantum isolation interferes with the transfer of power to the retro system[end if].";
		the rule fails;
	if the player is not on the toilet seat:
		say "[if the player is clueless]You're willing to hold it until you can sit down properly on a toilet seat, thank you very much[otherwise]Power transfer is only enabled when you make an adequate seal with the reactant chamber[end if].";
		the rule fails;				
	if the player is not poopready:
		if the player is prepoop:
			if the white egg is raw:
				say "[if the player is clueless][one of]Maybe after you eat something[or]You don't need to go right now;  check the list on the fridge[or]You usually go a bit later in the morning, as your list on the fridge often reminds you[or]You're a creature of habit. Maybe after breakfast? That's what your list on the fridge recommends, at least[in random order][otherwise]You must first produce power before it can be shunted to the retros. To generate enough power to lift off, heavy helium fuel must be contained in a magnetic bottle and ignited in the fusion chamber[end if].";
			otherwise:[egg cooked]
				say "[if the player is clueless][one of]Sometimes this sort of venture is more successful after eating[or]The appetizing smell of the fried egg wafts in from the kitchen, reminding you that you haven't had your breakfast yet[or]Nothing is forthcoming[stopping][otherwise]Power cannot be shunted until the fused heavy helium residue is fed to the recycling system[end if].";
		otherwise:[postpoop]
			say "[if the player is clueless]You've already done your business. Keep trying and you might strain yourself[otherwise]Retros are already fully charged[end if].";
		the rule fails;
	otherwise:
		if the Real Thing is happening and the landing_pid is not 0 and the player is clueless:
			say "That second egg may take a while to work its way through your system. Usually, you don't snarf down two eggs for breakfast.";
			the rule fails.
	
Carry out businessing:
	change outcome-override to force-success;
	now the ACU is postpoop.
	
Report businessing:
	say "[if the player is clueless]You complete your business with great aplomb[otherwise]You successfully shunt power from the fusion engine to the retro assembly, which is now fully charged and ready to blast off[end if]."
	
Section Stuff to do with Floss

Instead of tying the dental floss to something:
	if the the chain is broken:
		if the second noun is the lever or the second noun is the flapper valve:
			say "The floss is just marginally too short to reach from the lever to the flapper valve. The remnants of the rusted chain might be enough to make up the difference, though.";
			the rule fails;
		otherwise if the second noun is the chain:
			change outcome-override to force-success;
			say "[if the player is clueless]You carefully tie the two ends of the chain together with the dental floss. There. It looks like it should hold[otherwise]You bind the proximal and distal nodes of the chain with the entangled key pair, creating a bypass route from the thruster actuation relay to the thrust aperture[end if].";
			now the chain is repaired;
			the rule succeeds;
	if the second noun is dental floss:
		say "[if the player is clueless]Tying the floss in a knot would not help[otherwise]Linking the linker to itself is too self-referential to contemplate[end if].";
	otherwise:		
		say "[if the player is clueless]It's a short little piece of dental floss, and it would look very odd tied to [a second noun][otherwise]Diagnostics indicate that [the second noun] does not require linkage[end if]."	

Understand the commands "fix", "mend", and "repair" as something new. 

Repairing is an action applying to one thing. Understand "repair [something]" as repairing when the player is the acu.

Check repairing:
	if the noun is the plunger:
		if plunger is trimmed:
			say "[if the player is clueless]The plunger doesn't look broken[otherwise]The vector input port is functioning within acceptable parameters[end if]." instead;
		otherwise:
			say "[if the player is clueless]It's not so much broken as in the wrong position. Usually when this happens, you just do whatever you have to in order to make it stand upright[otherwise]You do not detect an error code from [the plunger], but you do need to use it to optimize the ship's orientation[end if]." instead.

Carry out repairing:
	say "[if the player is clueless]You make a mental note to put it on the list of things that need repairing for the next time the cottage maintenance droid knocks on your door[otherwise]You log the repair request for dry dock maintenance[end if].";
	
Instead of repairing the chain:
	if the chain is not broken:
		say "[if the player is clueless]The chain seems fine[otherwise]You detect no errors within the servo linkage[end if].";
	otherwise:
		if the player holds the dental floss:
			try tying the dental floss to the chain;
		otherwise:
			say "[if the player is clueless]Looks like you need something to unite the two ends of the rusted out chain[otherwise]The distal and proximal termini of the servo linkage have become disentangled. You need to relink across the relay to reestablish the control pathway[end if].";
		
Instead of repairing the toilet:
	if the chain is not broken:
		say "[if the player is clueless]The toilet seems to be working fine[otherwise]The retro assembly is performing within operational parameters[end if].";
	otherwise:
		if the tank top is open:
			try repairing the chain;
		otherwise:
			say "[if the player is clueless]Sounds like the problem is in the water tank somewhere[otherwise]You detect a fault within the plasma constrictor, but diagnostics are limited, as the plasma constrictor hatch is closed[end if]."
			
Instead of repairing Rover:
	say "[if the player is clueless]Rover has already been fixed, and he didn't enjoy it[otherwise]Although ROVER is missing two nuts on his underchassis, you consider him fixed[end if]."
	
Ducttaping it with is an action applying to two things. Understand "repair [something] with/using [something]" as ducttaping it with.

Check ducttaping it with:
	if the second noun is not dental floss:
		say "You only know of two things in the world that are truly useful for repairs: [supertape] and [if the player is clueless]dental floss[otherwise]entangled keypairs[end if]. And don't think there's any [supertape] in the [if the player is clueless]cottage[otherwise]ship[end if]." instead.
		
Carry out ducttaping it with:
	try repairing the noun.
	
Understand the commands "fix" and "mend" as "repair".

To say supertape:
	say "[if the player is clueless]duct tape[otherwise]primordial gluon amalgam[end if]".
		
Section Petting

Petting is an action applying to one thing. Understand "pet [something]" or "stroke [something]" or "pat [something]" or "rub [an animal]" or "scratch [an animal]" or "massage [an animal]" or "caress [something]" or "cuddle [something]" as petting.

Check Petting:
	if the noun is the female dog:
		say "[one of]Maybe you'd consider that after a few months of social pleasantries and a suitable period of getting to know each other[or]You admire her for her sense of humor and the way she seems to understand you on a profoundly personal level. You don't want to risk everything that the two of you have built together by rushing headlong into a physical relationship[or]You are too nervous[stopping]." instead;
	if the noun is not Rover:
		say "You [if the player is clueless]stroke [the noun] fondly[otherwise]are not able to synch with [the noun][end if]." instead.
		
Report Petting:
	change the outcome-override to force-success;
	if the player is Rover:
		say "You indulge in a little ear scratching. Ahh, better.";
	otherwise:
		say "[one of]You scratch [Rover] behind the ears, and he makes a rumbling happy sound[or]You rub [Rover] under the chin, and he cranes back his neck and twists his head from side to side in enjoyment[or]You rub [Rover]'s chest and his back leg fiddles[or]You stroke [Rover]'s back and he nuzzles up against you[or]You scratch [Rover]'s back and he slowly inches forward, trying to get you to scratch more towards the base of his spine[or]You reach out to pet Rover and he flips over, feet pedaling the air, in search of some belly rubs, which you give[or]You pat [Rover] briefly, but he lets you know that a brief pat is not satisfactory. You spend some time scratching [Rover], as he repositions himself constantly, trying to get you to scratch an ever-moving itch[or][Rover] waits expectantly for more petting[or][Rover] licks your hand[or][Rover] expresses his gratitude with some lip-smacking sounds[or]Now that you've rearranged his fur, [Rover] spends a moment scratching his ears and licking himself to get it all back to the way it was[or][Rover] seems comforted[or][Rover] seems lost in the moment[in random order]."
	
Section Cooking

Cooking is an action applying to one thing. Understand "cook [something]" or "fry [something]" as cooking when the player is the acu.

Check cooking:
	if the noun is not the white egg:
		say "[if the player is clueless]That doesn't sound very appetizing[otherwise]You don't think [the noun] would serve very well as fusion fuel[end if].";
		the rule fails;
	if the white egg is cooked:
		say "You've already [if the player is clueless]cooked the egg[otherwise]fused the He-8[end if]! Now you can [if the player is clueless]eat it[otherwise]recycle the depleted sphere[end if].";
		the rule fails;
	if the player can not see the frying pan:
		say "[if the player is clueless]You usually cook your eggs in a frying pan[otherwise]You will need a magnetic bottle to contain the heavy helium sphere during the fusion process[end if].";
		the rule fails;
	if the frying pan is not on the range:
		say "[if the player is clueless]The frying pan isn't going to do much good if it's not on the stove[otherwise]The fusion reaction can't start unless the magnetic bottle is correctly positioned on the fusion chamber[end if].";
		the rule fails;
	if the white egg is not in the frying pan:
		say "[if the player is clueless]You wonder whether the egg wouldn't cook better if you actually put it in the frying pan[otherwise]The sphere of fusion fuel isn't contained in the magnetic bottle[end if].";
		the rule fails.
		
Carry out cooking:
	change outcome-override to force-success;
	try silently cracking the white egg into the frying pan.		
	
Section Standing

Understand the command "stand" as something new.

Standing is an action applying to nothing. Understand "stand" or "stand up" as standing. The standing action has an object called perch stood from.

Setting action variables for standing:
	if the holder of the actor is not a room, now the perch stood from is the holder of the actor. 

Carry out standing:
	move the player to the location, without printing a room description.
	
Report standing:  
	if the perch stood from is not nothing:
		say "You [if the player is clueless]get off[otherwise]deactivate your connection to[end if] [the perch stood from].";
	otherwise:
		say "You are [if the player is clueless]standing in[otherwise]currently accessing[end if] [whereabouts]."
		
To say whereabouts:
	say "[if unicodage is disabled][the location][otherwise][the location in lower case][end if]".
		
Section Kissing
		
Understand the command "kiss" as something new.

Understand "kiss [a thing]" as kissing.

Report kissing:
	if the player is Rover:
		say "You [if the noun is Rover]can't quite get your tongue to reach around to lick yourself[otherwise]give [the noun] a slobbery licking[end if].";
	otherwise:
		if the noun is:
			--	the ACU:
				say "[if the player is clueless]Loving oneself is good; kissing oneself is a bit over the edge[otherwise]Such recursion would crash the stack in no time[end if].";
			-- Rover:
				say "[if the player is clueless]You give Rover a nice kiss[otherwise]You confirm that handshaking is synchronized between you and Rover[end if].";
			-- otherwise:
				change outcome-override to force-success;
				say "You [if the player is clueless]kiss [the noun] lightly[otherwise]You attempt to negotiate a direct synch with [the noun] and fail[end if].";
				

Section Using

Understand the command "use" as something new.  Using is an action applying to one thing.

Understand "use [a thing]" as using.

Report using:
	if the noun is:
		-- the TB-TS: [shower]
			say "You'll have to [if the player is clueless]enter the shower[otherwise]select the extruder[end if] first.";
		-- the floss:
			try flossing teeth instead;
		-- the toilet:
			try businessing instead;
		-- otherwise:
			say "[one of]I'm afraid you'll need to be more specific.[or]Apologies, but that's a bit vague; can you express it differently?[or]I don't quite follow.[or]Sorry, can you rephrase that?[or]Can you be more precise, please?[in random order]";
			
Section Walkthroughing

Walkthroughing is an action out of world

Understand "walkthru" or "walk thru" or "walkthrough" or "walk through" as walkthroughing.

Carry out walkthroughing:
	change the current menu to the Table of Walkies;
	carry out the displaying activity;
	clear the screen;
	try looking.
	
Table of Walkies
title	subtable	description	toggle
"Introduction"	--		"This walkthrough was written to accompany the initial release of Rover[apostrophe]s Day Out as part of IF Comp 2009, but after some feedback from people who played the game, we decided to just incorporate it into the game itself. No more looking around for that print out or wondering if you're looking at the right version of the walkthrough.[paragraph break]This isn[apostrophe]t a straight dump of commands to type at the prompt because that wouldn[apostrophe]t work well. It would be too easy to get lost in the long train of commands, and it wouldn[apostrophe]t make much sense. Also, some random elements of the game could throw it off.[paragraph break]So, we[apostrophe]ve broken the game into tasks and given an example way of approaching each task. Where order matters, we[apostrophe]ve put the tasks in the usual order that they[apostrophe]d be encountered. If you are stuck on a specific part of the game, you can scan through the walkthrough until you see how to get around your current part of the game, and then continue on your own. There are often several ways to approach a given situation, and in the interest of avoiding spoilers where possible, this walkthrough sticks to a relatively efficient way through the game. We encourage you to wander off this path and explore the game more fully. For those that absolutely, positively must see every last feature of the game, well, the source code is out there -- enjoy :-)"	--
"0. Start the game"	--		"Conventions: Anything between square brackets is explanation. The player[apostrophe]s input is given after asterisks. I don[apostrophe]t really have to say it, but I will: <press the space bar> is not something you type -- just hit the space bar.[paragraph break][bracket]Opening quotation[close bracket][line break]* <press the space bar>[paragraph break][bracket]Game Banner[close bracket][line break]* <press the space bar>[paragraph break][bracket]Rover[apostrophe]s Day Out: beta732.[close bracket][line break]You need to:[paragraph break]1) Get up;[line break]2) Figure out what you need to do;[line break]3) Deal with your itchy arm;[line break]4) Take a shower;[line break]5) Do it again."		--
"1. Get out of bed"	--		"You start off in bed, dreaming.[paragraph break]* help [bracket]explore the help menus, credits, how to report bugs, etc.[close bracket][line break]* look[line break]* x alarm clock[line break]* i[line break]* snooze[line break]* x alarm clock[line break]* x button[line break]* press button[line break]* snooze[line break]* get up[line break]* look"	--
"2. Figure out what to do"	--		"In the earlier part of the game, where things are more linear, the task list gives you a sense of the order in which things need to be done.[paragraph break]* x picture[line break]* x nameplate[line break]* read inscription[line break]* remember valkyrie[line break]* remember casimir [line break]* x casimir drive[line break]* remember david [bracket]you can 'remember' various topics any time[close bracket][line break]* look[line break]* x drapes[line break]* open drapes[line break]* x me[line break]* i[line break]* x suit[line break]* x insignia[line break]* x letters[line break]* read letters[line break]* n [bracket]compass directions are not used[close bracket][line break]* go kitchen[line break]* fold futon[line break]* go kitchen[line break]* x fridge[line break]* x magpaper[line break]* read list"	--
"3. Itchy arm"	--		"You left arm starts to itch more and more. You do what comes naturally.[paragraph break]* scratch left arm"	--
"4. Shower"	--		"It's time to take a shower.[paragraph break]* go bathroom[line break]* disrobe[line break]* enter shower[line break]* press soap[line break]* press shampoo[line break]* exit[line break]* touch plate[paragraph break]At the end of this segment, there is a Blue Screen of Death, which is part of the game. Do not actually, you know, in real life, reboot your machine. Press space three times, reading intervening text."	--
"5. Do it again"	--		"The program resets to beta810. Now, you take it from the top, repeating previous actions (except that your arm doesn[apostrophe]t itch this time).[paragraph break]* stand[line break]* open drapes[line break]* fold futon[line break]* go bathroom[line break]* disrobe[line break]* enter shower[line break]* press soap[line break]* press shampoo[line break]* exit[line break]* touch plate[line break]* wear suit"		--
"6. Breakfast"	--		"Now that you[apostrophe]ve run through the parts that you[apostrophe]ve already seen, you have some breakfast.[paragraph break]* go kitchen[line break]* open fridge[line break]* look in fridge[line break]* get egg[line break]* close fridge[line break]* open drawer[line break]* get pan[line break]* put pan on stove[line break]* break egg into pan[line break]* eat egg"	--
"7. Feed Rover"	--		"You might as well feed Rover. You could do it later, but it[apostrophe]s convenient to do it while you[apostrophe]re in the kitchen.[paragraph break]* fill water bowl[line break]* put down water bowl[line break]* open cabinet[line break]* get dog chow[line break]* fill food bowl[line break]* put down food bowl"		--
"8. Take Care of Business"	--		"Breakfast has to go somewhere...[paragraph break]* go bathroom[line break]* disrobe[line break]* sit on toilet[line break]* use toilet[line break]* flush toilet [bracket]hmm...doesn[apostrophe]t immediately work because you need to correct the position of the plunger -- a combination of pushing it left, right, or twisting it. Each time, the solution will be different, but here[apostrophe]s an example:[close bracket][line break]* x plunger[line break]* push plunger left[line break]* push plunger left[line break]* push plunger forwards[line break]* twist plunger clockwise[line break]* twist plunger clockwise[line break]* flush toilet [bracket]ah, now it works[close bracket]"		--
"9. Walkies"		--		"Let Rover out for walkies.[paragraph break]* stand[line break]* wear suit[line break]* go living room[line break]* open door[paragraph break]"	--
"10. One more time"	--		"One more time. Hopefully, the two previous [quotation mark]practice[quotation mark] runs will make this part go quickly. This time it[apostrophe]s for real -- not longer a beta test. Repeat the sequence: get up, shower, eat, use bathroom, let Rover out for walkies.[paragraph break]* look[line break]* x toilet[line break]* x water tank[line break]* open lid[line break]* lift flapper valve[line break]* stand[line break]* wear suit[line break]* go living room[line break]* open door"		--
"11. Walkies for realsies"	--		"Now, there[apostrophe]s a jarring change of perspective. You *are* Rover, and you[apostrophe]re out for a walk. You[apostrophe]ll have to learn a new way to navigate.[paragraph break]* x me[line break]* i[line break]* n[line break]* smell[line break]* go towards the smelly man [bracket]note, that as Rover, your sense of smell is your main means of navigation, and that since you can[apostrophe]t give compass direction, you can walk towards distant smells[close bracket][line break]* x rock[line break]* go home[line break]* go home [bracket]when you get home, you drop what you're carrying, and your perspective switches back. To let Rover out again, just open the door. Ultimately, Rover needs to bring back a bone and an egg to enable the next stage of the game. You can also bring home the pink pillow at some point if you'd like.[close bracket]"	--
"12. Get the Egg"	--		"Rover needs to get another egg. That means navigating outdoors, entering the old man[apostrophe]s house, taking the egg out of the fridge, and heading home again.[paragraph break]* open door[line break] * go man[line break]* again[line break]* again[line break]* again[line break]* again [bracket]be strong -- ignore the female dog for a moment[close bracket][line break]* again[line break]* go eating room[line break]* open fridge[line break]* get egg[line break]* go home[bracket] You can repeat that as needed or navigate in some other direction, but ultimately, you need to re-enter the house.[close bracket]"	--
"13. Get the Bone"		--		"Go back out, navigate to the girl dog, bark at her, get the bone, go home again.[paragraph break]* open door [bracket]send rover back out for the bone[close bracket][line break]* go female dog[line break]* again[line break]* again[line break]* again[line break]* again[line break]* x female dog[line break]* x bone[line break]* take bone[line break]* bark[line break]* get bone[line break]* go home[line break]* again[line break]* again[line break]* again[line break]* again[paragraph break]When you bring the bone home, the nature of the game changes somewhat. The [quotation mark]cognitive constraints[quotation mark] are released, and the prompt changes to [quotation mark]READY>[quotation mark] You can still use all of the commands that you used before, but the world view has changed. You can use some UN*X commands at the new prompt. Although knowledge of UN*X isn't required to play the game, some people might get a kick out of seeing the world through the command line."	--
"14. Blast Off"		--		"Now that the veneer of simulation is somewhat peeled back, use what you know to blast off again.[paragraph break][if unicodage is disabled][otherwise]* man man[bracket]To learn more about the underlying technology.[close bracket][line break][end if]* man acu [bracket]just for background[close bracket][line break]* get egg[line break][bracket]cook and eat the egg as before[close bracket][line break]* pwd     [bracket]example of entirely optional unixy fun[close bracket][line break]* ls	  [bracket]example of entirely optional unixy fun[close bracket]	[line break]* cd ..	  [bracket]example of entirely optional unixy fun[close bracket][line break][bracket]go to the bathroom, and flush the toilet, as before[close bracket][line break]* <press space>"	--
"15. The Boarding Party"		--		"In this part of the game, enemy ships approach your ship and lock onto the hull. They drill through and send their minions in to salvage parts from your ship. You can use your wits to defeat the minions and/or knock the assault ships off the hull. There is a lot of freedom of action here, so it is hard to prescribe a way through it. Here[apostrophe]s one way to play through this section, although many variations are possible.[paragraph break]A. Surrendering or not surrendering: When the approaching assault ship asks you to surrender, you can either say yes or no. Feel free to change your mind, as well. While you are talking to them, you can be doing other things to get ready for their visit.[paragraph break]* signal yes[paragraph break]B. The ship locks on to the hull. Any time after the assault ship has made contact with the hull, you can knock them off by several methods, the simplest of which is to go to the bathroom and pull the plunger in some direction. Since the plunger controls the ships positioning thrusters, it will spin the ship, flinging off the invader. It will take them a couple turns to maneuver back to your ship. Each solution you come up with is likely to work only once -- at least your opponents are competent enough not to make the same mistake twice.[paragraph break]* go bathroom[line break]* wait [bracket]as needed until the assault ship makes contact with the hull[close bracket][line break]* push plunger left [bracket]or, for example, forwards or counterclockwise[close bracket][paragraph break]C. Dealing with the minions. The assault ship will send over either robot or human technicians. Since they are taking you apart, it[apostrophe]s in your interest to stop them. My favorite way of stopping a robot is to eat it. Yeah, they[apostrophe]re edible, at least to you.[paragraph break]* eat robot [bracket]the robot may wiggle out of your grasp, so this might take several attempts[close bracket][paragraph break]D. Hold out as long as you can. As minions attack, follow them around the ship. Harry them and their assault ships as much as you can. Eventually, there is a resolution to the boarding situation. The degree of resolution depends on your effectiveness in slowing them down.[paragraph break]* <press space bar>"	--
"16. Debrief"	--		"You can discuss the mission with David and Janet. You can ask or tell about various topics, although they are also trying to get some information out of you. To begin the conversation, you need to turn your audio on. If you don't do this, after a while, they[apostrophe]ll do it anyhow. The conversation given below is not the only possible way it could go.[paragraph break]* listen[line break]* yes [bracket]in reply to Janet[apostrophe]s question[close bracket][line break]* tell about jade frog [bracket]for example[close bracket][line break]* ask about Earth [bracket]for example[close bracket][line break]* tell about probe[line break]* tell about ansible[line break]* tell about ship"		--
"17. End Game [bracket]Spoilers![close bracket]"	--		"At some point, the conversation will take a nefarious turn, and you[apostrophe]ll need to resolve the situation quickly, before someone gets hurt.[paragraph break]OK, so David is a bad guy. He's pulled a ray gun on Janet and he[apostrophe]s downloading your data, ready to send it to his masters on Earth. You have to do something to stop him. You cannot, however, directly attack him. There are a few solutions, but the most immediate one is to have Rover take him out. If Rover isn't in the living room (i.e., operations/cargo bay), you can call him.[paragraph break]* come[line break]* rover, attack david[line break]* <space bar>[line break]* <space bar>[paragraph break]There are many alternatives, but the most rewarding solution to the game is to neutralize only David, and avoid other collateral damage. Undo is permitted at the end of the game, so if you aren[apostrophe]t happy about the way the game came out, you can go back a few steps and try something different."		--
"18. Amusing"	--		"If the game ended in a relatively pleasant way, you will see some text that goes into a bit of detail about how well you did, and what other things you might try if you played the game again.[paragraph break]* amusing"		--


	
Chapter General Insteads

Instead of throwing something (called the projectile) at something (called the target):
	if the player is the acu:
		if the target is:
			-- the maintenance droid:
				if the maintenance droid is not targeted:
					say "You propel [the projectile] at the droid, which is so involved in its work that it doesn[apostrophe]t even see it coming. There is metallic clang as [the projectile] slams into the droid, ripping through its carapace and burying itself deep in the robot's circuitry. The droid thrashes blindly before falling silent.[paragraph break]You dispose of its remains.";
					increase the henchmen defeated by one;
					now the maintenance droid is targeted;
					move the projectile to the location;
					move the maintenance droid to Limbo;
				otherwise:
					say "The wary maintenance droid moves with lightning speed, withdraws a leather baseball mitt from some internal compartment and catches [the projectile] in mid-air. He throws it back to you putting a little spin on it on says, [quotation mark]This is fun, but I've got work to do.[quotation mark] You catch [the projectile] in your tractor field.";
			-- the technician:
				say "You wind up and prepare to throw [the projectile] with the force of a kinetic weapon, but your failsafes kick in, and you find yourself paralyzed.";
			-- otherwise:
				say "[if the player is clueless]On second thought, you decide not to throw [the projectile]. The cottage is hard enough to keep tidy without throwing things about[otherwise]You take exception to throwing [the projectile]. You throw an exception instead[end if].";
	otherwise:
		try dropping the projectile.

Instead of examining a room:
	try looking;
	
Instead of doing something when the player is clueless and the noun is an aware-proxy:
	say "You can't see any such thing.";
	if the Real Thing has not happened:
		if aware-references is less than 4:
			let metatext be "";
			if aware-references is 1:
				let metatext be "David: How can it be aware of that?*Janet: It can???t. That???s outside the simulation. I sometimes mumble to myself about whatever is on my mind from work. That must have carried over during the scan.*David: Hmph.";
			otherwise if aware-references is 2:
				let metatext be "David: So that was another random association? It seemed pretty purposeful to me.*Janet: With the cognitive constraints in place, it would have to be, although the synaptic scan might be somewhat confounded because I was working on the program when the scan was made.*David: Kind of like a feedback loop?*Janet: No, not at all.*David: Hmph.";
			otherwise if aware-references is 3:
				let metatext be "Janet: Before you say it, yes. Nothing to do with the landing cycle, just another background musing.*David: I was going to let that one slide without comment, actually.";
			say "[metatext in metaspeak]";
			now aware-references is aware-references + 1.
	
[ben said:  how do I trigger this next rule to test it?  When I reorient myself to self-aware, commands like 'x walls' and 'fold futon' work fine...? Jack replied: Since the ACU only accepts the non-aware dictionary words, you need to trigger the error by referring to items using one of their aware synonyms, e.g., 'x bulkheads' and 'x drive']
Instead of doing something other than manpaging when the player is self-aware and the noun is an aware-proxy:
	say "You can't see that here; but you vaguely [one of]recollect[or]remember[or]recall[in random order] something [one of]called[or]termed[or]referred to as[in random order] the [quotation mark][the clueless-name of the holder of the noun].[quotation mark][paragraph break]"[I'd prefer to put "the" in the brackets, but it is not substituted properly here; just ignored.]
	
Instead of taking inventory when Rover is the player:
	if the player holds nothing:
		say "You haven???t picked up anything.";
	otherwise:
		say "In your mouth, you are carrying [a list of props held by Rover]."
		
Instead of jumping:[a before rule takes care of the aware context; this is just to suppress the default message if the player is clueless]
	if the player is Rover:
		say "You crouch down, pounce, and land squarely on all four paws.";
	otherwise:
		say "You're just a hair over one a half meters tall, but in the Martian gravity, you nearly bean yourself on the [whereabouts] ceiling."
		
Instead of singing:
	if the player is clueless:
		if the player is Rover:
			say "You [one of]howl a familiar ditty about the dog who thought he was a cat.[or]bark out a short rendition of [quotation mark]Oh, little juicy chicken.[quotation mark][or]sing [quotation mark]Wag my tail[quotation mark], but don't remember anything beyond the first couple of lines. So you sing them again. And again. Now you can't get the song out of your head.[or]whip out a jazzy version of [quotation mark]I got your tidbits, baby.[quotation mark][or]sing a short song.[stopping][paragraph break]";
			if the female dog is in the location and the female dog carries the delicious bone:
				say "[line break][one of]The lovely female dog listens to you in rapture, and her mouth drops open in amazement when you conclude your crooning. A bone drops out of her mouth and rolls near your feet. You assume it is a gift to you, her way of saying [quotation mark]Bravo![quotation mark], or something to that effect[or]Charmed by your romantic baritone, the beautiful young houndess again drops her bone[or]Somewhat predictably now, she drops the bone[stopping].";
			the female dog recovers in two turns from now;
			[multiple phrases because the female dog should be given the behaviour of picking up the bone after a turn or two if it's just lying there on the ground.]
			now the delicious bone is in the location;
		otherwise:
			say "You [one of]quietly sing a short song that Tomasz had taught you. The song is about a lonely colony ship engineer who pines for his sweetheart back on Earth.[or]sing a slow ballad,[quotation mark]The Orange Hills of Mars.[quotation mark][or]belt out a bawdy drinking song, [quotation mark]Bartender, set me up a Barsoom.[quotation mark][or]hum (because you can't remember the words) a short tune that children learn to remember the order of the planets in the Solar System. Obviously, the song missed its mark with you, although you still remember the catchy melody.[or]bang out a respectable version of [quotation mark]A Common Hope[quotation mark], the anthem of the People's Government of Mars.[or]sing a short tune.[stopping][paragraph break]";	
	otherwise:
		say "You dump core, producing reams and reams of symbolic notation representing the instantaneous states of your quantum processor across local multiverses."
		
Instead of burning:
	if the player is the acu:
		say "[if the player is clueless]Burning anything in your cottage would set off the environmental alarms[otherwise]Interdicted by the fire suppression system[end if].";
	otherwise:
		say "You can sit, rollover, bark, come, lie down, give kisses, dig, and attack. That's a lot of tricks for a dog. Pyrokinesis is next on your list, but you're not there yet."
		
Instead of buying:
	if the player is the acu:
		say "[if the player is clueless]You think about how few Marx you have in the bank and decide to hold off on any purchasing until after payday[otherwise]You are not able to access the banking network[end if].";
	otherwise:
		say "First, you check your pockets for your wallet. Oh wait, you don't have any pockets. BECAUSE YOU'RE A DOG! It bears repeating from time to time."
		
Instead of dropping something which is not enclosed by the player:
	change outcome-override to force-failure;
	say "You [if the player is clueless]weren't holding[otherwise]hadn't selected[end if] [the noun] to begin with."
	
After going outside:
	change outcome-override to force-success;
	continue the action.
	
After getting off something:
	change outcome-override to force-success;
	continue the action.
	
Instead of listening when the player is in The Planet Area:
	say "You hear [one of]the howl of the wind[or]the raspy blowing of sand and pebbles across The Park[or]a storm brewing[or]the wind[or]yourself breathing[in random order]."

[TOCONSIDER: a consult about, cutting generic response?]

Chapter Not Ready For Prime Time - Not for release

Section Reorienting-test version

Understand "reorient" as reorienting.
		
Report reorienting:
	say "(The player is now [if player is self-aware]self-aware[otherwise]clueless[end if])".
		
Instead of attacking the chain: [consider leaving something like this in the game]
	if the chain is intact:
		now the chain is broken;
		change outcome-override to force-success;
		say "No doubt for legitimate purposes of testing rather than out of frustration, you break the chain with your brutish strength."
		
Section Possessing
		
Possessing is an action applying to nothing. Understand "possess" as possessing.

Carry out possessing:
	if the player is the ACU:
		now the player is Rover;
	otherwise:
		now the player is the ACU;
	say "POV switched: now that of [the player], who is [if the player is self-aware]self aware[otherwise]clueless[end if].[paragraph break]";
	try looking.
	
Section Resetting

Resetting is an action applying to nothing. Understand "reset" as resetting.

Carry out resetting:
	Restore the World;
	Setup the World.
	
Report resetting:
	say "World Reset!".
	
Section Trim

Trimming is an action applying to nothing. Understand "trim" as trimming.

Carry out trimming:
	now the pitch is zero;
	now the roll is zero;
	now the yaw is zero.
	
Report trimming:
	say "All shipshape and Bristol fashion, cap'n. Halyards (whatever they are) and mainsheets are trimmed smartly, and she's coming about aleeward (a direction not even implemented in the game). Arr."; 
	
Section Disabled For Testing

When play begins:
	change the wait-a-bit to false;
	activate the Table of Getting Out of Bed.
	
Section Nontechnoverbs

First after an actor doing something (this is the find non-technoverb actions rule):
	if got-action is true:
		do nothing;
	otherwise:[meaning, it wasn't found in the technoverb table]
		if test-action is:  [ignore these actions, they shouldn't be reported]
			-- the memory-updating action:
				continue the action;
			-- otherwise:
				say "(***Note:  [test-action] isn't in technoverb-table)[paragraph break]";
				continue the action;
	[if the noun is something:
		change last-noun to "[aware-name of the noun]";]
	continue the action.
	
Section Unit Testing

Test all with "test living_room". [and many, many more...Note test names are single words, so no whitespace.]
	
Chapter Initialize

When play begins:
	say "[quotation mark][fixed letter spacing]There ought not to be anything in the whole universe that man can't poke his nose into ??? that's the way we're built and I assume that there's some reason for that.[quotation mark] [paragraph break]     ??? Robert Heinlein[variable letter spacing]";
	await keystroke;
	clear the screen;
	[recurrent setup]	
	Save the World;
	Setup the World.

After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions, credits, and license or just blaze on impetuously.";
	let metatext be "Janet: David, are you hooked in?*David: Ready to go. Is this the final version of the ACU, or another beta?*Janet: A program is never finished, but I think we're ready to go.*David: I hope so, Earth could launch any day now.*Janet: Run program.";
	say "[metatext in metaspeak]";
	await keystroke;
	try section-breaking;
	[display setup]
	change the left hand status line to "[if the player is clueless][left-msg][otherwise]MANUAL[end if]";
	change the right hand status line to "[if the player is self-aware]Flosix/OS 210LTS[end if][if the player is clueless and the player is the ACU]Memory: [current memory usage].[a random number from 0 to 9]PB[end if][if the player is Rover]ROVER P.O.V.[end if]";
	say "[ACU Boot Banner]";
	try dreaming;
	try beeping.
	
To say left-msg:
	say "[if unicodage is disabled][last-noun][otherwise][last-noun in upper case][end if] -> [status-line-action] : [last-success]";
	
Section Save the World

To Save the World: [programmatically store initial state of class properties]
	Repeat with selection running through persons:
		now the initial-enclosure of the selection is the holder of the selection;
	Repeat with selection running through props:
		now the initial-enclosure of the selection is the holder of the selection;
	Repeat with selection running through containers:
		if the selection is open:
			now the initial-overture of the selection is true;
		otherwise:
			now the initial-overture of the selection is false;
	Repeat with selection running through doors:
		if the selection is open:
			now the initial-overture of the selection is true;
		otherwise:
			now the initial-overture of the selection is false;
	Repeat with selection running through devices:
		if the selection is switched on:
			now the initial-onoff of the selection is true;
		otherwise:
			now the initial-onoff of the selection is false.
	
Section Setup the World

To Setup the World: [explicitly set initial conditions]
[globals]
	now epoch_pid is the turn count;	
	now the time of day is 5:30 am;
	reset magpaper;
[persons]
	now the player is the ACU;
	now the ACU is dry;
	now the ACU is prepoop;
	now Rover is hungry;
	now Rover is thirsty;
[ship orientation]
	reset the yoke;
[other objects with specific properties]
	now the alarm clock is on the futon;
	now the ACU wears the flight suit;
	now the flight suit is not already-doffed;
	now the soap button is not pressed;
	now the shampoo button is not pressed;
	now the futon is not obstructed;
	now the futon is not folded;
	now the white egg is not cooked;
	now the white egg is not broken;
	now the flapper valve is closed;
	now the dog chow bag is in the cabinet;
	now the dog food is in the dog chow bag;
	now the reward nuggets replicator is in the cabinet;
	now the dog treat is in the reward nuggets replicator;
	now the frying pan is in the drawer;
	now the Living Room is not visited-during-havoc;
	move the pillow to the pillow-locale;
	move the rock to the rock-locale.
	
Section Restore the World

To Restore The World: [programmatically reset by class]
[reset all rooms visited]
	Repeat with selection running through rooms:
		now selection is not visited;
[reset all things handled]
	Repeat with selection running through things:
		now selection is not handled;
[reset containment of persons, props, and anything else not nailed down]
	Repeat with selection running through persons:
		if the selection is not the player:
			move the selection to the initial-enclosure of the selection;
		move the player to the initial-enclosure of the player, without printing a room description;
	Repeat with selection running through props:
		if the selection is not a part of the initial-enclosure of the selection:
			[otherwise the magpaper ends up *in* the fridge]
			move the selection to the initial-enclosure of the selection;
[reset the open/closed or on/off properties of containers, doors, and devices]
	Repeat with selection running through containers:	
		if the initial-overture of the selection is true:
			now the selection is open;
		otherwise:
			now the selection is closed;
	Repeat with selection running through doors:
		if the initial-overture of the selection is true:
			now the selection is open;
		otherwise:
			now the selection is closed;
	Repeat with selection running through devices:
		if the initial-onoff of the selection is true:
			now the selection is switched on;
		otherwise:
			now the selection is switched off.
			
To reset the yoke:
	now pitch is the new vector;
	now roll is the new vector;
	now yaw is the new vector;
	while the plunger is trimmed:
	[unlikely, but don't want the landing puzzle to be too easy]
		reset the yoke.
			
To decide what number is the new vector:
	decide on (a random number from 0 to 6) times 60 plus -180.


Chapter Teaching An Old Dog

[most of these commands should be tested for the acu when in bed, when out of bed, when aware, for rover, and as a command given to rover; no one other than Rover should be persuaded to follow these commands.

The general form of these is:
	
- persuasion rule for rover: he'll do it. Also, change last-noun to Rover, and make it a success.
- definition of the action and its synonyms
- check rules: something reasonable happens if the acu does the verb.
- carry out rule: what happens when rover does the action of his own accord.
- instead of an animal doing the verb: what rover does when he is obeying the command.]

Section Barking

Persuasion rule for asking Rover to try barking:
	change last-noun to "ROVER";
	change outcome-override to force-success;
	persuasion succeeds.
	
Instead of telling the female dog about something:
	try barking.
	
Instead of asking the female dog about something:
	try barking.

Instead of showing something (called the item) to the female dog:
	say "She [one of]stands transfixed by [the item][or]stares at [the item][or]takes no notice of [the item] at all. She is so cosmopolitan[or]ignores your attempt to break the ice[or]looks beyond [the item] serenely[or]barely deigns to notice [the item][or]is not impressed[or]does not seem swayed by your demonstration[or]isn't sure what to make of you and your antics[in random order]."

Barking is an action applying to nothing. Understand "bark" as barking. Understand "speak", "talk", "woof", "arf", "yap", "whine", "bow", "wow", or "talk" as barking when the player is Rover.

Check barking:
	if the player is not an animal:
		if the player is self-aware:
			say "Your byte is worse than your bark." instead;
		otherwise:
			say "Leave barking to the dogs." instead.
		
Carry out barking:
	change outcome-override to force-success;
	say "[doggerel]";
	Drop Rover's Payload;
	if the female dog is in the location and the female dog carries the delicious bone:
		say "[one of]No doubt in awe of your rhetorical skills, the lovely damsel drops the bone. Her gift to you, you suppose[or]Stunned by your eloquence, the beautiful young hound again drops her bone, in tribute to your virile superiority[or]Somewhat predictably now, she drops the bone[stopping].";
		the female dog recovers in two turns from now;
		[multiple phrases because the female dog should be given the behaviour of picking up the bone after a turn or two if it's just lying there on the ground.]
		now the delicious bone is in the location.
		
At the time when the female dog recovers:
	now the female dog is seeking;
	if the holder of the female dog is the holder of the delicious bone:
		now the female dog carries the delicious bone;
		now the female dog is not seeking;
		say "[bulldozer gets the bone]";
	otherwise:
		say "The female dog [one of]bashfully scans the ground at her feet, no doubt nervous about making eye contact at this early stage in your relationship[or]averts her eyes from your magnetic gaze and pretends to study the ground[or]is playing hard to get. She studies the ground as if she is looking for something, but you know that all she needs is a big, strong dalmatian[or]tries to gather her wits and gazes at the ground. Maybe you came on too strong[or]searches the ground as she tries to prepare some witty remark to impress you[or]coyly turns away and looks at her feet; she may be more introverted than you had at first supposed[or]is left dumbfounded by your brilliance. She stares at the ground, unsure of herself[in random order]."
		
To say bulldozer gets the bone:
	say "The beautiful female dog bows her [one of]graceful[or]swanlike[or]lithe[or]delicate[or]finely shaped[or]sculpted[in random order] neck and takes the bone in her [one of]irresistible[or]voluptuous[or]inviting[or]enticing[or]tempting[or]stunning[or]striking[or]beguiling[or]enchanting[or]charming[or]alluring[or]tantalizing[or]comely[or]fair[in random order] lips."
	
Instead of an animal barking:
	change outcome-override to force-success;
	if Back on Mars is happening and David Venkatachalam is in the location:
		now the endgame is david-killed;
		say "Forgetting his bone for a moment, Rover takes a deep breath and lets out a mighty, [quotation mark]Woooooooof![quotation mark][paragraph break]The jagged, twisted space probe falls from his jaws, pinning David to the deck and nearly slicing him in half. He expires instantly.[paragraph break]Rover takes a step back, the [quotation mark]Did I do something wrong?[quotation mark] expression playing across his face.[paragraph break]";
		if David Venkatachalam is exposed:
			say "Janet stares blankly for a moment and then reaches up and strokes the treads on Rover???s forward transaxle. [quotation mark]Good dog, Rover,[quotation mark] she says. [quotation mark]Good boy.[quotation mark][paragraph break]";
		otherwise:[David not exposed]
			say "Janet screams, [quotation mark]David! No![quotation mark] and [if the player is not in the living room] you redirect your video feed to the cargo bay, where [end if]she falls on her knees next to him, cradling his bloody head in her lap.";
		end the game in victory;
		the rule succeeds;
	if Boarding Party has happened:
		say "[Rover] produces a [one of]loud[or]140 dB[or]thunderous[or]tremendous[or]soul splitting[in random order] howl that resonates off the ship's bulkheads. When he opens his mouth, the probe falls out, but he is quick enough to catch it mid-air.";
		the rule succeeds;	
	otherwise:[Not yet Back on Mars -- i.e., the usual situation]
		say "[The actor] barks out a meaty, [doggerel]";
		if the actor encloses the delicious bone:
			now the delicious bone is in the holder of the actor;	
			say "The bone drops to [the actor]'s feet.";
		the rule succeeds.
	
To say doggerel:
	say "[quotation mark][one of]Woof! Woof[or]Arf! Arf[or]Bow! Wow[or]Gaa....Ruffff[or]Gurrah[or]Rrrrrrrrrrrrrrrr[or]Yap! Yap[or]Buhwahwahwahwahwah[in random order]![quotation mark][paragraph break]".
	
Directed-barking is an action applying to one thing. Understand "bark at [a thing]" as directed-barking when the Player is Rover.

Carry out Directed-Barking:
	try barking.

Section Attacking

Understand "bite [a thing]" as attacking when the player is Rover.

Persuasion rule for asking Rover to try attacking:
	change last-noun to "ROVER";
	persuasion succeeds.
	
Instead of Rover attacking when Rover is in the Valkyrie Area:
	if the noun is Janet or the noun is the  ACU or the noun is Rover:
		say "Rover looks confused.";
		the rule succeeds;
	if David Venkatachalam is not exposed:
		say "Rover's fur stands on edge, and he growls momentarily but then realizes that there is nothing threatening here.";
	otherwise:
		if David Venkatachalam is in the location:
			say "Rover throws his bone to the side, and the space probe crashes thunderously against the cargo bay bulkheads. [if David Venkatachalam is exposed]Rover had not approved of David's tone of speech towards Janet and had been growling quietly in his corner. Given the command, he springs forward, paws planted on David's chest. David expires immediately, trapped under 45 tons of angry robotic dalmatian.[paragraph break][quotation mark]Good boy![quotation mark] exclaims Janet, a tear in her eye. And then, turning to the ACU she admits, [quotation mark]I wish I had thought of that.[quotation mark][paragraph break]";
			change outcome-override to force-success;
			now endgame is david-killed;
			end the game in victory;
			the rule succeeds;
		otherwise:
			say "Rover looks around but doesn't see anything threatening.";
	rule succeeds.
	
Does the player mean attacking david venkatachalam:
	it is very likely.
	
Does the player mean attacking the bone:
	it is very unlikely.
	
Instead of attacking the maintenance droid:
	if the maintenance droid is battered:
		say "As you align the gravitic compensator to target the maintenance droid, the droid extends its manipulator arms and you sense a suppression field build around the droid. You push the compensators past their design specification, but cannot overcome the countermeasure. The droid chuckles softly and returns to its work.";
	otherwise:
		say "You narrow the gravitic compensators to point source, and the hapless droid is sheared into a spaghetti-like strand, which whips in circles and showers the deck with sparks before disappearing with a puff of smoke. You are surprised by how good that felt.";
		increase the henchmen defeated by one;
		now the maintenance droid is battered;
		move the maintenance droid to Limbo.
		
Does the player mean attacking the maintenance droid:
	it is very likely.
	
Does the player mean attacking the technician:
	it is very likely.

Section Lying Down

Persuasion rule for asking Rover to try lying down:
	change last-noun to "ROVER";
	change outcome-override to force-success;
	persuasion succeeds.

Lying down is an action applying to nothing. Understand "lie" or "lie down" as lying down.
		
check lying down:
	if the player is an animal:
		say "You're too excited to lie down! Woof!" instead;
	otherwise:
		say "[if player is clueless]You know that if you lie down this early in the morning you'll feel weird the entire day and that no amount of coffee in the afternoon will put things right again[otherwise]You rest for 0.0[a random number from 100 to 999][a random number from 100 to 999] femtoseconds. How [one of]refreshing[or]invigorating[or]energizing[or]exhilarating[or]stimulating[in random order][end if]." instead.
			
carry out lying down:
	do nothing.
	
Instead of lying down when the player is the ACU and the player is not alert:
	say "You slothfully tap the snooze button.";
	try snoozing.
	
Instead of an animal lying down:
	say "[The actor] dives towards the floor, holds the required position as briefly as he dares, and then jumps back on all fours in front of you, ready to play again.";
	rule succeeds.
	
Persuasion rule for asking an animal to try lying on:
	persuasion succeeds.
	
Lying on is an action applying to one thing. Understand "lie on [something]" or "lie down on [something]" or "lie in [something]" as Lying on.

check lying on:
	try lying down instead.
	
Instead of an animal lying on:
	change last-noun to "ROVER";
	change outcome-override to force-success;
	say "[The actor] looks at [the noun] and wonders if this is some sort of trick. [if the noun is a bed]Dogs aren't allowed on people furniture, are they?[otherwise]That's not a good place for a dog to lie![end if]";
	rule succeeds.

Section Rolling Over
	
Persuasion rule for asking Rover to try rollovering:
	change last-noun to "ROVER";
	persuasion succeeds.
	
Rollovering is an action applying to nothing. Understand "roll over" and "roll" as rollovering.

Check rollovering:
	if the player is the acu:
		if the acu is self-aware:
			say "Cache refreshed.";
			the rule succeeds;		
		if the acu is not alert:
			say "You roll over and slap the alarm clock for a few more minute of sleep.";
			try snoozing;
			the rule succeeds;
		otherwise:
			say "You're not lying down.";
			change outcome-override to force-failure;
			the rule fails.
			
Carry out rollovering:
	say "You roll on the ground, enjoying the spinning view of the world.";

Instead of an animal rollovering:
	say "Rover rolls over like a puppy. He quickly jumps to his feet again.";
	the rule succeeds.
	
Understand "roll [something]" as pushing.
		
Section Digging

Persuasion rule for asking Rover to try digging:
	change last-noun to "ROVER";
	persuasion succeeds.

Digging is an action applying to nothing. Understand "dig" and "excavate" as digging.

check digging:
	if the player is the acu:
		if the player is clueless:
			say "You're an interactive fiction professional, not a ditch digger. Nope, nothing so lucrative.";
		otherwise:
			say "You're a giant network of quantum transputational circuitry; you don't dig ditches. Besides, that's why you are equipped with a ROVER.";
		the rule fails;
		
Carry out digging:
	change outcome-override to force-success;
	say "You dig for a while with your front paws. Finding nothing, you kick the dirt back in again so you won't be blamed for digging up the [if Rover is in the Front Yard]yard[otherwise]park[end if]."
	
Instead of an animal digging:
	say "Rover scratches the ground and sniffs, but he doesn't seem interested in digging here.";
	the rule succeeds.

Section Coming

Persuasion rule for asking Rover to try coming:
	persuasion succeeds.

Coming is an action applying to nothing. Understand "come" or "come here" or "here boy" or "food" or "dinner" or "chow" or "come and get it" as coming.

check coming:
	if Rover is in Limbo:
		say "Rover does not respond.";	
		the rule fails;
	if the player is Rover:
		say "You are already here." instead;
	if the player is in the shower:
		say "[if the player is clueless][one of]Rover has had a few experiences with the shower, and none were pleasant from his perspective, so he just pokes his head in and then darts back out[or]Rover pokes his nose into the shower, and then beats a hasty retreat[or]Rover sniffs the shower distrustfully and then backs out[or]Rover peeks into the shower and then withdraws[in random order][otherwise]ROVER rolls into the extruder area but will not fit within it, so he idles outside it[end if].";
		move Rover to the bathroom;
		the rule fails.
	
carry out coming:
	change last-noun to "ROVER";
	if Rover is in the location:
		say "Rover cocks his head quizzically.";
	otherwise:
		now Rover is in the location;
		change outcome-override to force-success;
		say "Rover tears around the corner excitedly, arriving in [whereabouts]."
		
Instead of Rover coming when Rover is not the player:
	[e.g., if Rover is in the room (and therefore scope) and you say "Rover, come" ]
	say "Rover scratches his ears and wonders to whom you are talking.";
	rule succeeds;

Section Giving Kisses

Persuasion rule for asking Rover to try smooching:
	change last-noun to "ROVER";
	change outcome-override to force-success; [Rover will kiss almost anything ]
	persuasion succeeds.

Smooching is an action applying to nothing. Understand "give kisses" or "give kiss" or "kisses" as smooching.

Carry out smooching:
	if the player is clueless:
		say "You make kissy sounds, resembling nothing so much as a goldfish drowning in air. If you want to kiss someone, just say so (like, [quotation mark]kiss the postman[quotation mark]). Don't be bashful about it for cripes sake.";
	otherwise:
		say "You renegotiate handshakes on all devices."
	
Instead of Rover smooching:
	if the player is clueless:
		say "Rover gives you a wet, slobbery kiss.";
	otherwise:
		say "You perform handshaking functions with Rover.";
	the rule succeeds.

Section Growl

Growling is an action applying to nothing. Understand "growl" as growling when the player is Rover.

Report Growling:
	say "Grrrrrrrrrrrrrr!"
	
Directed-Growling is an action applying to one thing. Understand "growl at [a thing]" as directed-growling when the Player is Rover.

Carry out Directed-Growling:
	try growling.

Section Dance

Dancing is an action applying to nothing. Understand "dance" as dancing.

Report Dancing:
	if the player is Rover:
		say "You spring into the air and land on all fours.";
	otherwise if the player is the ACU:
		if the player is clueless:
			say "You try to remember some of the steps that you and Tomasz learned during your ill-fated attempt at ballroom dancing. You think you recall the [one of]cha-cha, but can't quite what number it goes to. Is it seven or eight?[or]lambada, but perhaps you're mixing it up with the rumba. Rumba, lambada, what's the difference in the grand scheme of things?[or]tango, but the more you think about it, the more you are convinced that you learned to lead, and thinking about reversing the steps makes your head spin.[or]waltz. One-two-veer off, one-two-veer off.[in random order]";
		otherwise:
			say "You test cycle the RCS thrusters, firing opposing pairs."

Section Yell

Understand the command "shout" as something new.

Yelling is an action applying to nothing.  Understand "yell", "shout", "scream", "screech", "howl", "cry", and "holler" as yelling.

Carry Out yelling:
	do nothing.

Report Yelling:
	if the player is Rover:
		say "You howl balefully, or at least as balefully as you can manage, not being entirely sure what it means.";
	otherwise if the player is the ACU:
		if the player is clueless:
			say "Confident that your neighbors won't hear a thing through the cottage's excellent sound insulation, you let loose with a primal scream.";
		otherwise:
			say "You emit a 160 dB test tone throughout the ship.";
			[TOCONSIDER: useful against pirates, shouldn't work if the ship is depressurized]
			
Section Sit

Buttdowning is an action applying to nothing. Understand "sit" as buttdowning.

Persuasion rule for asking Rover to try buttdowning:
	change last-noun to "ROVER";
	persuasion succeeds.
	
Carry out buttdowning:
	if the noun is nothing:
		if the player is self-aware:
			say "Specify object.";
		otherwise:
			say "Sit on what?";
	
Instead of an animal buttdowning:
	say "Rover grazes the ground with his rear end, like a suborbital glider aborting a landing.";
	change outcome-override to force-success;
	the rule succeeds.
	
Section Answering Rover

Instead of answering Rover that "hello":
	change outcome-override to force-success;
	say "[one of][Rover] shakes his head slowly, once again lamenting your ignorance of dog-speak and stubborn insistence on making noises that mean absolutely nothing.[or][Rover] pauses for a moment to compose his reply, [quotation mark]Errrr...Wruff.[quotation mark][or][Rover] hesitates. Did you just say [quotation mark]walkies[quotation mark]? Hello. Walkies. Hello. Walkies. Gawoof, they sound a lot alike. Why can't you just learn to bark properly?[or][Rover] looks around wondering if perhaps you are talking to someone else.[or][Rover] wags his tail.[stopping]"
	
Section Burying

Burying is an action applying to one thing. Understand "bury [something]" as burying when the player is Rover.

Check burying:
	if the noun is:
		-- Rover: 
			say "If you buried yourself, who would dig you out? In a flash of brilliant insight, you decide not to inter yourself for all eternity in The Park." instead;
		-- delicious bone: 
			say "And risk losing the world record yummiest ever bone? No way." instead;
		-- female dog:
			say "[one of]You wonder for a moment what it would be like to suffer tragically for love and to be buried next to your heart's desire for all eternity, so close in death, but never...[paragraph break]You whack your head into the ground repeatedly until the emo-goth fumes clear and you can see straight again[or]You tried that with the Yorkie, and you never found her again[or]She doesn't seem likely to go in for that sort of thing. Too straight-laced[or]After a moment of reconsideration, you decide that's not a good idea[stopping]." instead.

Report burying:
	if Rover is in the Planet Area:
		say "You don't want to bury [the noun]. It's not the sort of thing one buries in a Park.";
	otherwise:
		say "You'd get into trouble digging indoors."
		
Section Tail Wagging

Wagging is an action applying to one thing. Understand "wag [something]" as wagging when Rover is the player.

Carry out wagging:
	if the noun is the tail:
		say "You wag your tail with pleasure.";
	otherwise:
		say "Wagging is for tails.[paragraph break]Aside from having something to chase when no one else is around to play, what else are tails good for but wagging? Hah -- butt wagging. You made a joke."
				
Chapter The Valkyrie

Section David-Proxy

[This is to catch any mention of David by the ACU before David shows up in the flesh in the final scene.]

After deciding the scope of the player when the first sim is happening or second sim is happening:
	place David Venkatachalam in scope.

David-mentioned is a number that varies. David-mentioned is zero.

Before doing something when (the noun is David Venkatachalam or second noun is David Venkatachalam) and Back On Mars is not happening:
	now David-mentioned is David-mentioned plus one;
	say "Your boss isn't here.";
	if the First Sim is happening or the Second Sim is happening:
		if David-mentioned is one:
			let metatext be "David: Why would it expect to see me in your cottage?*Janet: Probably a random association.*David: Do you think the ACU can hear us talking?*Janet: That???s a philosophical issue. It has sound sensors, and they might be on, but it???s all bits. Bits in, bits out. I don???t think you could say that it really hears us in any meaningful way.";
			say "[metatext in metaspeak]";
		otherwise if David-mentioned is two:
			let metatext be "David: Again, about me!*Janet: Whoa Nelly, let's reign in that ego, cowboy. ";
			say "[metatext in metaspeak]";
	the rule succeeds.
		

Section Room Delegates

LR is a here-delegate. It is in the Living Room. Understand "Living Room " as LR. The aware-name of LR is "operations". 

LR-TB is a there-delegate. It is in the Living Room. The destination of LR-TB is the Bathroom. The clueless-name of the LR-TB is "bathroom". Understand "bathroom" or "corner" as LR-TB. The clueless-description of LR-TB is "From here, you can see just a corner of the bathroom: a bit of the marble counter, and the corner of the sink." The aware-name of LR-TB is "flight control". The aware-description of LR-TB is "From here, you can see a little ways into the flight control area. You can make out the edge of the flight console and a corner of the biohazard response system." Understand "marble counter" and "sink" as the LR-TB. Understand "flight console" and "biohazard response system" as LR-TB when the player is self-aware.

LR-TK is a there-delegate. It is in the Living Room. The destination of LR-TK is the Kitchen. The clueless-name of LR-TK is "kitchen". Understand "kitchen" as the LR-TK. The clueless-description of LR-TK is "You can see the corner of the kitchen cabinet, which is [if the cabinet is open]open[otherwise]closed[end if]. You can also see one of Rover's bowls from here, but at this distance, you can't tell which one." The aware-name of LR-TK is "engineering". The aware-description of LR-TK is "You can see the corner of the fuel vault, which is [if the cabinet is open]open[otherwise]closed. You can also see the coolant output terminus from here." Understand "cabinet" or "bowl" as LR-TK. Understand "fuel vault" or "vault" or "cabinet" or "coolant output terminus" or "coolant terminus" or "terminus" as LR-TK when the player is self-aware.

TB is a here-delegate. It is in the bathroom. Understand "bathroom" as TB. The aware-name of TB is "flight control". 

TB-LR is a there-delegate. It is in the bathroom. The destination of TB-LR is the Living Room. The clueless-name of TB-LR is "living room". The clueless-description of TB-LR is "From here you can see the window in the living room, but there's a lot of glare and you can't see through it. You can also see the end of the futon from here."  Understand "living room" or "window" or "futon" or "purple futon" as TB-LR. The aware-description of TB-LR is "You can't see much of the operations area from here." The aware-name of TB-LR is "operations".

TB-TS is a there-delegate. It is in the bathroom. The destination of TB-TS is the Shower. The clueless-name of the TB-TS is "shower". Understand "shower" or "outlet" or "outlets" as TB-TS. The clueless-description of TB-TS is "A utilitarian shower." The aware-name of TB-TS is "extruder". The aware-description of the TB-TS is "The extruder system is adjacent to the flight control area. From here, all you can are some controls that presumably relate to the secretion of the ship's ablative shield." Understand "controls" as TB-TS when the player is self-aware.

TS is a here-delegate. It is in the shower. Understand "shower" as TS. The aware-name of TS is "extruder".

TS-TB is a there-delegate. It is in the shower. The destination of TS-TB is the bathroom. Understand "bathroom" or "plunger" or "counter" or "mirror" as TS-TB. The clueless-name of TS-TB is "bathroom". The clueless-description of TS-TB is "You can see part of the marble counter from here, as well as the mirror mounted above the counter[if the mirror is steamed]. The mirror is steamed up[end if]. Nearer to the shower, you can see a plunger with a red tip." The aware-name of TS-TB is "flight control". The aware-description of TS-TB is "A complicated-looking flight control center. You can see the console from here but can't make out any of the readouts. Nearer to the extruder, you can see the tip of the vector input port." Understand "inspector" or "readout" or "readouts" or "vector input port" as TS-TB when the player is self-aware.

TK is a here-delegate. It is in the kitchen. Understand "kitchen" as TK. The aware-name of TK is "engineering". Understand "control" or "controls" as the TK when the acu is self-aware.

TK-LR is a there-delegate. It is in the kitchen. The destination of TK-LR is the Living Room. Understand "living room" as TK-LR. The clueless-description of TK-LR is "From here, it's hard to see much of the living room at all." The aware-name of TK-LR is "operations". The aware-description is "Because of the angle between operations and engineering, it is difficult to see into the operations area from here."

SR is a here-delegate. It is in the Sleeping Room. Understand "sleeping room" or "sleep room" or "sleeping" as SR. The aware-name of SR is "Command Module".

SR-ER is a there-delegate. It is in the Sleeping Room. The destination of SR-ER is the Eating Room. Understand "eating room" or "eating" or "fridge" as SR-ER. The clueless-description of SR-ER is "Like the sleeping room, the eating room also looks run down and dingy. You can see a fridge from here." The aware-name of SR-ER is "Engineering Module".

ER is a here-delegate. It is in the Eating Room. Understand "eating room" or "eating" as ER. The aware-name of ER is "Engineering Module".

ER-SR is a there-delegate. It is in the Eating Room. The destination of ER-SR is the Sleeping Room. Understand "sleeping room" as ER-SR. The clueless-description of ER-SR is "From the eating room, you can see into the Sleeping Room, but you can't see the stinky man from here." The aware-name of ER-SR is "Command Module".

Instead of examining a here-delegate, try looking.

Instead of entering a here-delegate, say "You're already here."

Instead of entering a there-delegate:
	try going towards the destination of the noun.
		
Section Living Room
 
The Valkyrie Area is a region.  The Living Room, The Kitchen, The Bathroom and The Shower are simrooms in the Valkyrie Area.

Test living_room with "stand up / open drapes / look / test picture".[add tests for other objects in living room.]

The Living Room is privately-named. Understand "living room" as the living room when the player is the ACU. The Living Room is outside from the Kitchen and outside from Bathroom.  The Bathroom is outside from the Shower. The Living Room contains the player. Understand "home" as the Living Room. The Living Room can be visited-during-havoc. The Living Room is not visited-during-havoc. The scent of the living room is "a little musty".

The walls are a backdrop.  They are in the Living Room and Kitchen.  The walls are plural-named. Understand "wall" or "walls" as walls.  The aware-name of the walls is "bulkheads". The clueless-name of the walls is "walls". The clueless-description of the walls is "You painted the walls white a few months ago, but they've already taken on a slightly reddish hue thanks to the fine Martian dust in the air."  The aware-description of the walls is "Solid metal bulkheads, backed by tons of reinforcing composite alloy, line the interior of the cargo bay."  The walls-proxy is an aware-proxy that is part of the walls. Understand "bulkhead" and "bulkheads" as the walls-proxy. The scent of the walls is "faintly of rust. Must be iron oxide from the local quarry". The texture of the walls is "like fine-grit sand paper".

The ceiling is a backdrop. It is in the Living Room and Kitchen.  Understand "roof" or "stucco" as ceiling. The clueless-description of the ceiling is "The ceiling is an off-white stucco material designed to absorb sound." The aware-description of the ceiling is "The domed roof of the cargo bay, like the ceiling of a gothic cathedral, looms 35 meters above the floor." The aware-name of the ceiling is "ceiling". The texture of the ceiling is "unpleasantly pointy".

The clueless-name of the Living Room is "living room". The clueless-description of the Living Room is "[living room status]." The aware-name of the Living Room is "operations". The aware-description of the Living Room is "The Valkyrie's cargo bay is like a great, metal cave. [if the futon is in the living room]The Casimir Drive juts slightly into the cargo area[otherwise]Nothing remains of the Casimir Drive, which was [one of]neatly sliced off the ship by the surgically precise Myomita energy weapons[or]cut off during the encounter with the Myomita merchant marine[stopping][end if]. From this section of the ship, there are connections to the engineering and flight control decks. The cargo bay doors are [if the front door is open]open[otherwise]closed[end if]." 

To say living room status:
	if the drapes are in the Living Room and the drapes are closed:
		say "Where the heavy drapes meet, a sliver of sunlight shines into the otherwise dark living room. A framed picture hangs on the living room wall in the small area illuminated by the shaft of light";
	otherwise:
		say "You are in the living room of a small cottage. Piped-in sunlight pours in through the room's single window, illuminating a framed picture on the opposite wall[if the drapes are in Limbo] -- strangely, your drapes are nowhere to be seen[end if]. The principal furnishing is a king-size purple futon which takes up almost all the floor space. From the living room you can see the entrance to the kitchen and bathroom. The cottage's front door is [if the front door is open]open[otherwise]closed".
		
The sound of the living room is "[LR-sound]".
	
To say LR-sound:
	if the player is clueless:
		say "very little. As usual, the house is quiet at this time of the morning. From the kitchen, you can make out the labored sound of your old fridge's compressor turning on and off. Closer by, despite the triple-pane glass, you can sometimes catch a bit of birdsong from outside the window";
	otherwise:
		if the old fridge is in the kitchen:
			say "a faint hum from the cryochamber in the engineering section";
		otherwise:
			if Back on Mars is happening and the audio is switched on:
				say "David and Janet chatting in the living room, as well as the usual sounds of the ship in dry dock";
			otherwise:
				say "the normal chatter of ship maintenance sounds in the operations section"
		
The sunlight is scenery in the Living Room. Understand "light" and "sunlight", "illumination", "daylight", "shaft" and "sunshine" as sunlight when the player is clueless. The description of sunlight is "[if the drapes are in the living room and the drapes are closed]A single shaft of daylight slices like a laser through the living room. Although dramatic, it does not provide very effective illumination[otherwise]Bright daylight shines in through the window facing the park. The light is ever so slightly tinted red from surface reflection near the collectors[end if]." The aware-name of sunlight is "photon sensor". The texture of the sunlight is "radiantly warm".

Instead of taking the sunlight:
	say "Poetic, perhaps, but not practical."

The futon is a bed in the Living Room. The futon can be folded. The futon is not folded. The futon can be functional. The futon is functional. The clueless-name of the futon is "[if the drapes are open]purple [end if]futon".  The aware-name of the futon is "Casimir Drive". Understand "couch" or "bed" or "purple" as the futon. The aware-description of the futon is "The Casimir Drive system is [if the futon is folded]retracted[otherwise]extended[end if] and [if the futon is functional]intact[otherwise]damaged[end if].[if the alarm clock is on the futon] A temporal transgressor is nestled into its port." The clueless-description of the futon is "Your futon is huge, and oh so comfy. [if the Second Sim is happening]It is far too large to be practical in your minimalist living room, particularly when the futon is unfolded. [end if]The wooden frame supports a king-size mattress[if the futon is not folded] that is pulled out to form a bed[end if].[if the alarm clock is on the futon] An alarm clock is balanced precariously near the edge of the futon.".  The futon-proxy is an aware-proxy that is part of the futon. Understand "casimir" or "drive" or "casimir drive system" or "zero-point energy" or "zero point energy" or "zero point energy drive" or "vortex drive" as the futon-proxy. The futon can be discussed. The futon is not discussed. The futon can be obstructed. The futon is not obstructed. The scent of the futon is "a little like wet dog, suggesting that from time to time a not-so-obedient best friend of yours might spend his day on the futon while you're at work". The texture of the futon is "[one of]soft[or]fluffy[or]like cotton[in random order]"

After examining the futon:
	if the futon is not discussed and the Second Sim is happening:
		now the futon is discussed;
		let metatext be "David: Maybe the problem isn???t that the futon is too big, but that the apartment is too small.*Janet: No, the problem is the futon. If the futon were a cantaloupe of the same size, it would still be too large.*David: I can???t argue with that logic.*Janet: That???s why you're management and why I do the computer programming.";
		say "[metatext in metaspeak]".

The mattress is part of the futon. The frame is part of the futon. The clueless-name of the mattress is "mattress". The aware-name of the mattress is "spatial manifold attenuator".The clueless-description of the mattress is "A thick, heavy purple mattress." The aware-description of the mattress is "The spatial manifold attenuator is [if the futon is folded]offline[otherwise]online[end if]." The mattress-proxy is an aware-proxy that is part of the mattress. Understand "spatial" or "manifold" or "attenuator" as the mattress-proxy. The scent of the mattress is "like it might be time to get a new mattress". The texture of the mattress is "like foam rubber"

Before opening the futon:
	try unfolding the futon;
	rule succeeds.
	
Before closing the futon:
	try folding the futon;
	rule succeeds.
	
The clueless-name of the frame is "bed frame". The clueless-description of the frame is "A wooden frame designed to somehow fold up into a third of the space that it normally occupies when the bed is pulled out. A true feat of engineering and geometry." The aware-description of the frame is "The Casimir Drive extension strut is [if the futon is folded]retracted[otherwise]extended[end if]." The aware-name of the frame is "extension strut".  The frame-proxy is an aware-proxy that is part of the frame. Understand "extension" or "strut" as the frame-proxy. The scent of the frame is "like pine". The texture of the frame is "smooth and hard"

On the futon is a woman called the ACU. The ACU is privately-named. The player is the ACU. She is wearing a flight suit. A left arm and a right arm, back, belly, body, teeth and giblets are parts of the ACU. The teeth are plural-named. The giblets are plural-named.

Does the player mean doing something to the back:
	it is likely.
	[otherwise, touch back results in a disambiguation between the direction back, backwards, and the physical object the player's back]
	
Does the player mean doing something to the belly:
	it is likely.
	[otherwise, touch belly results in a disambiguation between the Rover and the bely]

The ACU has wakefulness. The ACU has insightfulness. The ACU is asleep. The ACU is clueless. The aware-name of the ACU is "ACU". The clueless-name of the ACU is "Janet". The ACU is proper-named. The clueless-description of the ACU is "[acu-clueless-description].". The aware-description of the ACU is "Your consciousness extends throughout the many systems that comprise the Valkyrie." The acu-proxy is an aware-proxy that is part of the acu. Understand "acu" or "autonomous" or "control unit" as the acu-proxy. The ACU can be wet or dry. The ACU is dry.  Understand "Janet" as the ACU when the ACU is clueless. The ACU has comm status. The comm status of the ACU is silent. The ACU can be an enemy of Earth. The ACU is not an enemy of Earth. The ACU can be penetrated. The ACU is not penetrated. The ACU has poopstate. The ACU is prepoop. The scent of the acu is "[if the enamel_pid is zero]like you could you use a shower[otherwise]fresh and clean[end if]". The ACU can be lost. The ACU is not lost.

To say acu-clueless-description:
	say "You seem just like you have every other day of your life";
	if the ACU wears the flight suit:
		say ". You are wearing a MARSpace standard issue flight suit";
	otherwise if the location is the kitchen or the location is the living room:
		say ".[paragraph break]By the way, it's not a big deal because you're in your own cottage, but it's worth mentioning that you are [one of]completely naked[or]wearing only skin[or]bereft of attire[or]prancing about with not so much as a loincloth[or]in your birthday suit[or]underdressed for most activities[or]au naturel[in random order]".

The clueless-name of the left arm is "left arm". The clueless-description of the left arm is "[dumb arm]. ". The aware-name of the left arm is "port hull". The aware-description of the left arm is "The port hull." The left arm-proxy is an aware-proxy that is part of the left arm. Understand "port" or "hull" as the left arm-proxy. The scent of the left arm is "[scent of the acu]".

To say dumb arm:
	If Arm Hurts is not happening:
		say "Your left arm -- the one you throw frisbees with.";
	otherwise:
		if arm-numb is greater than 24:
			say "[one of]That's odd, your arm itches like the dickens (yes, even in the throes of perturbing progressive pruritus, the word that comes to mind is [quotation mark]dickens[quotation mark]. You don't know why. It doesn't really matter. What matters is that your arm is itchy.  Really itchy. Dickens, indeed. Anyhow, even though your arm itches like the dickens, it looks quite normal[or]You'd imagine your arm would be swollen and red, and all sausage-like, but it looks normal despite the itching[or]How can such a normal-looking arm itch so much? It makes no sense[or]Despite the worsening itch, your left arm looks quite normal[stopping]";
		otherwise if arm-numb is greater than 12:
			say "[one of]Your arm is pretty itchy, but it looks okay[or]Nothing remarkable about your arm; it just feels itchy[or]It looks just like the right arm. The difference is that your right arm isn't so itchy. Aye, there's the rub[stopping]";
		otherwise:
			say "[one of]It's a good match for the one on the right[or]Looks normal enough[or]Nothing out of the ordinary, really[in random order]"
			
The bug bite is a privately-named part of the left arm. Understand "bug bite" or "bite" or "mosquito" as the bug bite when Arm Hurts is happening. The clueless-name of the bug bite is "bug bite". The aware-name of the bug bite is "static imbalance". The bug bite-proxy is an aware-proxy that is part of the bug bite. Understand "static" or "imbalance" or "malfunction" as the bug bite-proxy. The scent of the bug bite is "like the rest of your arm".

Instead of doing something to the 	bug bite:
	if the current action is examining:
		say "[one of]You look very carefully for any evidence of a bug bite, or something along those lines, but your arm looks totally normal[or]That's just it -- you don't see a bug bite, it just itches like there is one. Your arm looks totally normal[or]Nope, no mark on your arm, just a lot of itching[or]Your arm looks normal[stopping].";
	otherwise if the current action is rubbing:
		try rubbing the left arm;
	otherwise if the current action is touching:
		try touching the left arm;
	otherwise:
		say "You look carefully, but you don't see one."
		
The clueless-name of the right arm is "right arm". The clueless-description of the right arm is "[if the player is the ACU]Your right arm. The one that you don't throw frisbees with[otherwise][the clueless-name of the ACU]'s right arm[end if]." The aware-name of the right arm is "starboard hull". The aware-description of the right arm is "The starboard hull." The right arm-proxy is an aware-proxy that is part of the right arm. Understand "starboard" or "hull" as the right arm-proxy. The scent of the right arm is  "[scent of the acu]".

The clueless-name of the back is "back". The clueless-description of the back is "[if the player is the ACU]Your[otherwise][the clueless-name of the ACU]'s [end if] back, so far as you can see, looks normal." The aware-name of the back is "dorsal hull". The aware-description of the back is "The dorsal hull." The back-proxy is an aware-proxy that is part of the back. Understand "dorsal" or "hull" as back-proxy. The scent of the back is "[scent of the acu]".

The clueless-name of the belly is "belly". Understand "stomach" and "chest" as belly. The clueless-description of the belly is "[if the player is the ACU]Your[otherwise][the clueless-name of the ACU]'s [end if] belly isn't particularly remarkable, although a couple more visits to the MARSpace gym couldn't hurt." The aware-name of the belly is "heat deflector". The aware-description of the belly is "The lower hull of the ship, which is thicker than the dorsal hull to better withstand the heat and pressure of an atmospheric landing." The belly-proxy is an aware-proxy that is part of the belly. Understand "ventral" or "hull" or "plating" or "deflector" as belly-proxy. The scent of the belly is "[scent of the acu]".

The clueless-name of the body is "body". The clueless-description of the body is "[if the player is the ACU]Your[otherwise][the clueless-name of the ACU]'s[end if] body. Nothing too special -- two arms, two legs, the usual really." The aware-name of the body is "superstructure". The aware-description of the body is "The superstructure of the Valkyrie, a network of metal and composite scaffolding built to withstand the stresses of interstellar flight and planetary landings." The scent of the body is "[scent of the acu]". 

The clueless-name of the giblets is "parts". Understand "cheeks", "cheekbones", "face", "finger", "fingers", "elbow", "elbows", "hand", "hands", "eye", "eyes", "ear", "ears", "nose",  "neck", "hair", "shoulder", "shoulders", "groin", "buttocks", "leg", "legs", and "tongue" as giblets. The clueless-description of the giblets is "Yet another part of [if the player is the ACU]your[otherwise][the clueless-name of the ACU]'s[end if] anatomy." The aware-name of the giblets is "subsystems". The aware-description of the giblets is "Software and hardware components serving multiple functions." The scent of the giblets is "[scent of the acu]".

The clueless-name of teeth is "teeth". Understand "teeth" or "tooth" as teeth. Teeth are plural-named. The clueless-description of teeth is "Your pearly whites." The aware-name of teeth is "hull plating". The aware-description of the teeth is "The polyduramide surface of the ship". The teeth-proxy is an aware-proxy that is part of the teeth. The teeth can be polished. The teeth are not polished. Understand "polyduramide" or "surface" or "compressed" as the teeth-proxy. The scent of the teeth is "[if the teeth are polished]minty fresh[otherwise]like they might have been brushed at the beginning of the 23rd Century[end if]".

Audio is a device which is part of the ACU. The aware-name of Audio is "Internal Microphones". Audio is switched off. Understand "internal" or "microphone" or "microphones" as Audio. The description of audio is "Being audio, you can't really see it. There is a certain logic to that, you'd have to admit."

The flight suit is a wearable prop. The ACU wears the flight suit. Understand "flight" or "suit" or "flightsuit" or "jump suit" or "clothing" or "clothes" or "jumpsuit" as the flight suit.  The clueless-name of the flight suit is "flight suit". The aware-name of the flight suit is "quantum isolator". The clueless-description of the flight suit is "[if the flight suit is worn]You are wearing[otherwise]It is[end if] a loose-fitting [if the drapes are open]blue [end if]flight suit with a MARSpace insignia. Some letters are also sewn above the insignia." The aware-description of the flight suit is "The ACU is contained in a quantum-isolated housing that bears the insignia of MARSpace and an identification code." The flight suit-proxy is an aware-proxy that is part of the flight suit. Understand "quantum" or "isolator" or "housing" as the flight suit-proxy. The flight suit can be already-doffed. The flight suit is not already-doffed. The scent of the flight suit is "of the insecticide that is routinely impregnated into the fabric itself". The texture of the flight suit is "comfortable, having been through the wash so many times"

Before wearing the flight suit when the player is wet and the player is clueless:
	say "Yuck. If you put the flight suit on fresh out of the shower, it would be damp all day (and you'd chafe in all sorts of places that are best left unchafed).";
	the rule succeeds.
	
Before taking off the flight suit when the player is enclosed by a supporter:
	say "[if the player is clueless]You need to get off [the holder of the player] first[otherwise]You cannot disengage the quantum isolator while accessing [the holder of the player][end if].[paragraph break]";
	the rule succeeds.

After taking off the flight suit:
	change outcome-override to force-success;
	if the player is clueless:
		say "You take off your [if the drapes are open]blue[end if] flight suit and it ";
		if the player is on a supporter:
			say "bunches up in a crumpled heap on the [holder of the player]";
		otherwise:
			say "falls to the [whereabouts] floor";
		say ". You are naked.[paragraph break]";
	otherwise:
		say "You disengage your quantum isolator. [paragraph break]";
	now the flight suit is in the holder of the player;
	if the player can see the maintenance droid:
		scandalize the poor little robot;
	if the flight suit is not already-doffed:
		now the flight suit is already-doffed;
		if the First Sim is happening:
			let metatext be "David: I don't think I should be seeing this. I mean, I'm your boss. There's that whole power dynamic thing.*Janet: Don't worry: I'm not inclined to sue you for staring at a simulation.*David: I'm not staring at the stimulation.*Janet: You said stimulation. That's funny.*David: No, I said simulation -- and I'm not staring.*Janet: Alright -- you're the boss.";
			say "[metatext in metaspeak]";
		if the Second Sim is happening:
			let metatext be "David: That mole should be on your left side.*Janet: Good eye for detail -- I???ll flip the UV coordinates on the next run.";
			say "[metatext in metaspeak]".
			
To scandalize the poor little robot:
	if the maintenance droid is innocent:
		say "The maintenance droid glances away from his work for a moment and then does a double take, gaping first at your retracted quantum isolation shield and then at your unusually large transputational core frothed with quantum foam, and ringed by a halo of dark matter.[paragraph break]It turns out to be more raw processing power than the old boy can handle, and the robot's own quantum ganglia scintillate wildly before showering the deck in an embarrassing fountain of sparks and molten metal. The droid melts like a candle into a pool of silvery slag, which you scoop up for recycling.[paragraph break]The effect achieved, you retrieve and modestly pull up the quantum isolation shield.[paragraph break]";
		increase the henchmen defeated by one;
		now the maintenance droid is jaded;
		now the ACU wears the flight suit;
		move the maintenance droid to Limbo;
	otherwise if seen-better-said is false: 
		change seen-better-said to true;
		say "The maintenance droid shakes his head and goes back to work, murmuring, [quotation mark]Yeah? I've seen better.[quotation mark][paragraph break]".

Disrobing is an action applying to nothing.  Understand "disrobe" or "undress" or "strip" or "strip down" or "peel down" as disrobing.

Check disrobing:
	change last-noun to "QUANTUM ISOLATOR";
	if the player is not wearing the flight suit:
		say "You're not wearing any[if the player is clueless]thing you weren't born with[otherwise] peripherals[end if].";
		the rule fails.

Carry out disrobing:
	try taking off the flight suit;
	change last-noun to "QUANTUM ISOLATOR".
	
Dressing is an action applying to nothing. Understand "dress" or "dress up" or "suit up" or "get dressed" as dressing.

Check dressing:
	change last-noun to "QUANTUM ISOLATOR";
	if the player is not the ACU:
		say "Ever since you saw a xihuahua in a little red sweater, you've found clothes repulsive.";
		the rule fails; 
	if the flight suit is not enclosed by the location:
		say "You don't see [if the player is clueless]anything to wear[otherwise]your quantum isolator[end if].";
		the rule fails.
		
Carry out dressing:
	try wearing the flight suit;
	change outcome-override to force-success;
	change last-noun to "QUANTUM ISOLATOR".
		
The lettering is a message that is part of the flight suit. Understand "lettering" and "letters" and "identification" and "code" as the lettering. The clueless-name of the lettering is "lettering on the flight suit". The aware-name of the lettering is "127.0.0.1". The clueless-description of the lettering is "The letters on the flight suit are embroidered in white on a red background.". The aware-description of the lettering is "A machine-readable identification code." The inscription of the lettering is "[if the player is clueless]There are only three letters: [quotation mark]ACU[quotation mark][otherwise]The code designates you as the Valkyrie's autonomous control unit[end if]." The texture of the lettering is "slightly raised"

After reading the lettering for the first time:
	if the first sim is happening or the second sim is happening:
		let metatext be "David: If the ACU knows what you know, why doesn't the ACU realize that it is the ACU? I mean, isn't that what you would suspect if you woke up in a flight suit labeled ACU?*Janet: Cognitive constraints are implemented ??? the willing suspension of disbelief is a programmatic imperative.*David: I love it when you use big words!*Janet: You are a doofus, sir.";
		say "[metatext in metaspeak]".

The insignia is part of the flight suit. The clueless-description of the insignia is "The insignia depicts the planet Mars. A pulp novel rocket ship points away from the globe of Mars and towards space. The picture evokes the spear and sword of Ares, the symbol of Mars back to alchemical times." To say the aware-description of the insignia: say the clueless-description of the insignia. The aware-name of the insignia is "insignia". The clueless-name of the insignia is "insignia". The texture of the insignia is "more rigid than the material around it, almost like plastic"

The alarm clock is a prop on the futon.  Understand "LED" and "LEDs" and "green" as the alarm clock when the player is clueless. The clueless-name of the alarm clock is "alarm clock". The clueless-description of the alarm clock is "It[apostrophe]s a cheap, white plastic alarm clock with fading green LEDs that read [time of day].  A large button juts out of the top.". A large button and a switch are part of the alarm clock. The aware-name of the alarm clock is "temporal transgressor". The aware-description of the alarm clock is "The Casimir Drive's temporal transgressor glows green as usual.  A basic toggle is on top." The alarm clock-proxy is an aware-proxy that is part of the alarm clock. Understand "temporal" or "transgressor" as the alarm clock-proxy. The scent of the alarm clock is "like burnt Bakelite and glowing thermionic valves". The texture of the alarm clock is "like impact-resistant plastic. And for good reason"

Instead of taking the alarm clock when the alarm clock is on the futon and bedtime is not happening:
	say "[if the player is clueless]You'd rather leave it on the futon so it's there when you need it[otherwise]The transgressor is already in optimal proximity to the Casimir Drive[end if]."
	
Instead of taking the alarm clock when the holder of the alarm clock is the Living Room:
	now the alarm clock is on the futon;
	say "You [if the player is clueless]pick up your beat-up old alarm clock and put it back on the futon, so you can enjoy its lovely beeping tomorrow, and tomorrow, and tomorrow[otherwise]reapproximate the temporal transgressor to the Casimir Drive[end if]."
	
Instead of pushing the large button when bedtime is not happening:
	if the player is clueless:
		say "The alarm clock says [quotation mark][one of]You are awake enough[or]No more snoozing[or]Brain activity nominal, snooze function inhibited[or]Surely, you have better things to do than to poke me[or]If you keep poking that button, you'll wear it out[or]Ow. quit it[or]Stop poking me[stopping].[quotation mark][paragraph break]";
	otherwise:
		say "Proximity alert reset inhibited."	
		
Before switching on or switching off the alarm clock:
	say "[if the player is clueless]The alarm clock senses the electrical activity in your brain and turns itself on and off as needed[otherwise]The proximity alert system is always functional[end if].";
	the rule succeeds.

The clueless-name of the large button is "large button". Understand "snoo" or "snooze" as the large button. The aware-name of the button is "mf toggle".  The clueless-description of the large button is "Mounted almost flush with the top of the clock, you can barely make out the dimly illuminated word [quotation mark]snoo.[quotation mark][paragraph break]".  The aware-description of the large button is "Mounted on top of the temporal transgressor is a slightly worn magnofluctuator toggle." The large button-proxy is an aware-proxy that is part of the large button. Understand "mf" or "magnofluctuator" or "toggle" as the large button-proxy. The scent of the large button is "indistinguishable from the rest of the alarm clock". 

After examining the alarm clock for the second time:
	if the First Sim is happening or the Second Sim is happening:
		let metatext be "David: Why is it so interested in the clock?*Janet: Not sure.";
		say "[metatext in metaspeak]";

Some drapes are furniture in the Living Room. Understand "curtains" or "curtain" as the drapes. The drapes can be open. The drapes are closed. The clueless-name of the drapes is "drapes". The aware-name of the drapes is "solar shield". The clueless-description of the drapes is "The heavy brown drapes are [if open]open[otherwise]closed[end if]. [if open]Light pours in.[otherwise]The room is dark."[no aware-description is given since the drapes are missing in that part of the story] The scent of the drapes is "much as you imagine burlap would might smell, were it aged for centuries and then baked in the sunlight until crispy". The drapes can be opened-before. The drapes are not opened-before. The texture of the drapes is "much heavier than they look, like the lead-lined aprons that some of the technicians use at work"

Instead of opening the drapes:
	if the drapes are closed:
		say "You push aside the drapes.";
		now the drapes are open;
		change the outcome-override to force-success;
		now the window is in the Living Room;
		try looking;
		if the drapes are not opened-before:
			let metatext be "David: I see it successfully accessed the solar shield.*Janet: Yes, the status line makes it clear what work is being performed.";
			say "[metatext in metaspeak]";
			now the drapes are opened-before;
	otherwise:
		say "They're already open."
	
Instead of pulling or pushing the drapes when the drapes are closed:
	try opening the drapes.

Instead of closing the drapes:
	if the drapes are open:
		say "It would be too dark to move around if you close the drapes, and you???d risk falling back to sleep. You reconsider and leave the drapes open.";
	otherwise:
		say "They are as closed as they're going to get."
		
A procedural rule: if the drapes are closed, ignore the room description paragraphs about objects rule.[if stuff is on the floor, you can't see it in low light]

After taking something (called the item) when the drapes are closed:
	say "You feel around in the near total darkness until you find [the item]."

Instead of examining or reading when the drapes are closed:
	let O be {picture, nameplate, sunlight, drapes, acu, flight suit, alarm clock, large button, futon};
	if the noun is listed in O:
		continue the action;
	otherwise:
		change outcome-override to force-failure;
		say "[one of]Darkness is great for sleeping, not so good for looking at stuff[or]A sliver of sunlight only goes so far; you can't see that well in the dim light[or]With the drapes closed, you can't see very well[or]It's too dark to see much[stopping]."
	
Instead of going towards when the player is in the Living Room and the drapes are closed:
	say "It's too dark to move around much. [one of]Grues and all that, you know. [or][stopping][paragraph break][if a random chance of one in three succeeds][one of]You shin yourself on the futon frame[or]You step on something stringy but resilient. Rover yaps in pain and scrambles to the other side of the futon[or]The floor creaks ominously[or]Something wet and warm is licking the back of your knees. You really hope it is Rover[or]Something brushes past you in the dark, panting[or]You stumble over Rover and land on your knees. You are rewarded with a hot puff of first-thing-in-the-morning dog breath. You will need no coffee today[or]As you are feeling your way around the futon, the beam of light coming in through the drapes catches you right in the eye and you are momentarily blinded[in random order].[end if]".

The LR floor is a privately-named scenery in the Living Room. The printed name of the LR floor is "floor". Understand "floor" or "hardwood" or "ground" as the LR floor. The clueless-name of the LR floor is "living room floor". The aware-name of the LR floor is "cargo bay floor". The clueless-description of the LR floor is "A hardwood floor." The aware-description of the LR floor is "The cargo bay's high-adhesion floor has been scratched and scuffed by Rover's tractors." The cargo bay floor-proxy is an aware-proxy that is part of the LR floor. Understand "cargo" or "bay" or "floor" as the cargo bay floor-proxy. The scent of the LR floor is "dusty". The texture of the LR floor is "generally smooth, if you ignore the occasional bit of gritty dust"

The front door is a door and scenery. The front door is east of the front yard. The front door is outside from the Living Room. The clueless-name of the front door is "front door". The aware-name of the front door is "cargo bay door". The aware-description of the front door is "The massive titanium cargo bay doors are [if closed]hermetically sealed against the harsh external environment[otherwise]wide open, [exterior][end if]." The clueless-description of the front door is "[front door status].". The front door-proxy is an aware-proxy that is part of the front door. Understand "cargo" or "bay" or "door" or "doors" as the front door-proxy. The front door can be damaged. The front door is not damaged. The scent of the front door is "just faintly of the park outside". The texture of the front door is "solidly built and cool to the touch"

To say exterior:
	if Boarding Party is happening:
		say "exposing the cargo bay to the hellish maelstrom outside the ship";
	otherwise:
		say "and industrial-spectrum fluorescent light floods into the cargo bay from outside the ship".

To say front door status:
	say "The front door of the cottage is ";
	if the front door is closed: 
		say "closed";
	otherwise:
		say "open. ";
		if the player is in the front yard:
			say "You can see light from inside the house, and the smell of home wafts out the front door";
		otherwise:
			say "Outside, it looks like a nice day".  
			
Instead of opening or closing the front door when the player is Rover:
	say "You normally don't pay any attention to the door. It knows enough to get out of your way when you enter and leave your home."
			
Instead of opening the front door when the front door is closed:
	if the landing_pid is zero:[i.e., ship not down yet]
		say "[if the player is clueless]If you open the front door, Rover will get all excited and expect to go walkies. Better get your morning routine out of the way first[otherwise]ROVER release is not the current task[end if].";
		the rule succeeds;
	[Ship has landed, attempt to let Rover out for walkies]
	if Rover is not in the Living Room and Rover is not in Limbo:
		say "[if the player is clueless]Hearing the door jiggle, Rover [one of]bounds[or]wanders[or]strolls[or]meanders[or]tromps[or]traipses[in random order] into the living room to see what is going on[otherwise]Alerted by the change in cargo bay door status, ROVER rolls into the cargo bay[end if]. [run paragraph on]";
		now Rover is in the Living Room;
	otherwise:
		say "[Rover] [if the player is clueless]looks up when he hears the door begin to open[otherwise]scans the cargo bay as the door begins to open[end if]. [run paragraph on]";
	if Rover is thirsty or Rover is hungry:
		say "Instead of ";
		if the player is clueless:
			say "running out to play in the park, though, he [one of]rolls his eyes[or]gives a quick [quotation mark]Woof.[quotation mark][or]shakes his head[or]gives you a knowing nod[or]looks at you like you forgot something important[stopping] and walks to the kitchen. You close the front door to prevent dust from blowing in.";
		otherwise:
			say "deploying through the cargo bay doors to the planet's surface, he spins on his tractors and drives into the engineering section. His telemetry reads [if Rover is hungry]critically low[otherwise]nominal[end if] fuel reserves and a [if Rover is thirsty]critically low[otherwise]nominal[end if] coolant level. Acknowledging this, you resecure the cargo bay doors.";
		now Rover is in the kitchen;
		the rule succeeds;
	[Ship is on the ground, ROVER is prepped to go out]
	change the outcome-override to force-success;
	if the player is clueless:
		say "[one of]You swing the front door fully open, confident that Rover will walk about the park and then return. Rover is out in a flash[or]Rover wiggles his butt through the door before you have it even halfway open, his tail slapping back and forth against the gate as it disappears[or]Rover slips out the door[in random order].[paragraph break]";
	otherwise: [aware]
		say "[Rover] [one of]deploys to the planet surface through the cargo bay doors[or]spins his tractors in anticipation and then jets out the cargo bay doors into the swirling mist outside the ship[or]oscillates his aft sensor array at high frequency and rolls down the cargo ramp, disappearing into the sandstorm[in random order].[paragraph break]";
	now the front door is open; [signaling the end of second sim scene]
	if the Real Thing is happening:
		move Rover to the Front Yard. [signaling the beginning of walkies scene]
	
Rover is a male animal. He is in the Living Room.  Rover has insightfulness. Rover is clueless. Rover can be awake. Rover is awake.  Rover can be either hungry or stuffed. Rover is hungry. Rover can be either thirsty or slaked. Rover is thirsty. The doggie bits are a privately-named part of Rover. Rover can be busy. Rover is not busy. The texture of the Rover is "short-haired and smooth"

The clueless-name of Rover is "Rover". The aware-name of Rover is "ROVER". The clueless-description of Rover is "[if the player is the ACU]He's a big, happy dalmatian[otherwise]You're a big dog with white fur and dark spots. You smell clean[end if]."  The aware-description of Rover is "A robotic mining rig". The rover-proxy is an aware-proxy that is part of rover. Understand "robot" or "mobile" or "robotic" or "tractor" or "mining" or "rig" or "ROVER" as the rover-proxy. The scent of the Rover is "[if the player is rover]like the dashing young hound that you know you are[otherwise]like a dog who needs, but is unlikely to get, a bath[end if]".Understand "dog" as Rover when the player is the acu. Understand "robot" or "robotic" or "rig" or "mining" or "mobile" as Rover when the player is the acu and the acu is self-aware.

Instead of examining Rover when the drapes are open:
	if the player is clueless:
		if the player is the ACU:
			say "He's [one of]a big, happy dalmatian[or]a medium-to-largish dog, mostly white with some black dots[or]not gengineered or cyberized; he's just a regular old dalmatian, like the ones originally bred on Earth[or]got to mass at least 30 kilos, although he is athletic and trim[or]not what you'd typically call a lapdog, although he'd beg (literally) to differ[or]the sort of dog that if you had one hundred more, you could make a Disney film[or]young as dogs go, about 5 years old, so not a puppy either, although he's almost as playful at times[or]almost entirely dalmatian, although there must have been some other breed somewhere in his lineage, as he has a brown spot just over his left eye, while all the other spots are black[or]a classic dalmatian with black rather than green or orange spots, which are more in vogue among today's Martian dog fanciers[or]a strong dog, with powerful back legs and a supple back[or]a noble-appearing dog, who stands squarely with straight shoulders, and firmly planted back legs[or]a short-haired dog, white with black spots. Despite the shortness of his hair, it tends to get on everything from furniture to clothes[or]the kind of dog often depicted as a [quotation mark]fire dog[quotation mark] in old Earth films[or]a monochromatic dog in a polychromatic world[or]got floppy ears, a straight tail, and a look of mischief in his eyes[or]smiling at you, raising one side of his mouth so you can see his teeth. Other people find it alarming, but you know he's just trying to be congenial[or]a gentle, obedient dalmatian[in random order].[paragraph break]";
			if Rover carries the delicious bone:
				say "Rover is chewing on a big bone that he picked up earlier in the Park.";
			otherwise:
				if a random chance of 2 in 3 succeeds:
					watch Rover;
			now Rover is busy;
		otherwise:[Rover's POV]
			say "[how Rover looks]. [how Rover smells].";
	otherwise:[aware]
		say "Rover is a 45 metric ton mobile mining rig designed to operate under harsh off-world conditions. [run paragraph on]";
		if rover carries the delicious bone:
			if Rover is awake:
				say "He is chewing a piece of the Musashi-5 space probe. [run paragraph on]";
			otherwise:
				say "Even in his sleep, he is hanging on tightly to what he thinks is a juicy bone. [run paragraph on]";
		if rover is not awake:
			if audio is switched off: 
				say "If your audio sensors were on, you are sure you'd hear him snoring loudly. [run paragraph on]";
			otherwise: 
				say "He snores loudly, his jowls fluttering with each breath. [run paragraph on]";
		say paragraph break.
		
To say how Rover looks:
	say "You're [one of]a big dog with white fur and dark spots[or]a suave and sophisticated dog, with a streak of nobility[or]a debonair, cosmopolitan dog, well-bred and cut from the best cloth[or]a fun-loving, easy-going dog, who's fun to be around[or]a classic black and white dalmatian, with a beauty mark above your left eye. Some say it is a mark of royalty going back to 16th Century Croatia. You're not sure about that, but it's what you tell the ladies[or]a gallant, upright dog, with a strict moral code and a clear sense of right and wrong[or]a loyal dog, with the best master in the world, Janet[or]not like the other dalmatians one sees vamping about the park sporting white coats with outrageous green and orange dots. No, you are the real thing: black dots on a white coat. All of your genes are real, not grown in a lab somewhere[or]a fully biological dog, with no synthetic parts. You like it that way. You think your parts are already nice enough[or]a well-groomed, healthy dalmatian. Presumably, irresistible to the ladies[in random order]".
	
To say how Rover smells:
	say "You smell [one of]clean[or]virtuous[or]like you're ready for anything[or]masculine[or]slightly musky[or]nothing at all like wet dog, and you have every intention of making sure that remains the case[or](in your opinion) foxy[or]like Janet's house[or]a little like those kibbles you've been eating for the last week[or]your butt. Yup, it's squeaky clean and ready to meet the world[or]virile[or]rugged and sturdy[or]like a red-blooded, male dog in his prime[or]fearless[or]bold and daring[or]fresh[or]dogly[in random order]".
		
Before taking something (called the item) when the player is Rover:
	if Rover carries the item:
		say "The [item] is already in your mouth." instead;
	otherwise:
		Drop Rover's Payload;
		continue the action.
		
After taking something (called the item) when the player is Rover:
	change last-success to "TRUE";
	say "You [one of]pick up [the item] in your jaws[or]take [the item] in your mouth[or]gently pick up [the item] using your front teeth[or]grab [the item] with your mouth, being careful not to crush it[or]carefully take hold of [the item] with your teeth[in random order]."
	
To Drop Rover's Payload:
	if Rover carries something (called the item):
		say "The [item] falls out of your mouth[one of] with a thud[or] and rolls slightly[or] and lands near your feet[or], startling you[in random order].[paragraph break]";
		now the item is in the holder of Rover.
	
Understand "ear", "ears", "nose", "neck", "back", "stomach", "tummy", "belly", "paw", and "paws" as doggie bits. The clueless-name of the doggie bits is "Rover". The aware-name of doggie bits is "rover modules". The clueless-description of doggie bits is "Rover is covered from nose to tail with white fur dotted with black splotches." The aware-description of the doggie bits is "A complicated mechanical module bolted to the ROVER platform." The doggie bits-proxy is an aware-proxy that is part of the doggie bits. Understand "complicated" or "module" or "modules" or "mechanical" as the doggie bits-proxy. The scent of the doggie bits is "[the scent of Rover]".

The tail is part of Rover. The clueless-name of the tail is "tail". The aware-name of tail is "aft sensor array". The clueless-description of the tail is "A short, white tail." The aware-description of the tail is "A complex array of full-spectrum sensors." The tail-proxy is an aware-proxy that is part of the tail. Understand "aft", "sensor", "sensors", "array" as the tail-proxy. The scent of the tail is "[the scent of Rover]".

The picture is a fixed in place scenery in the Living Room. The clueless-name of the picture is "picture". The aware-name of the picture is "deep memory". The clueless-description of the picture is "A picture of the Starship Valkyrie, still under construction in drydock. [If Real Thing has happened]You notice that a few pixels have gone dark in the picture. Not a big deal, though. Probably something only you'd notice. [end if]There is a small brass nameplate below the picture." Understand "photo" or "framed" as the picture. The aware-description of the picture is "Deep memory which stores all mission-critical data [if Real Thing has happened]including the data downloaded from the Musashi-5 space probe. Since the ansible is nonfunctional, it is critical that these encoded data be returned directly to MARSpace for analysis[end if]. There is a small plastic sign beneath the deep memory unit." The picture-proxy is an aware-proxy that is part of the picture. Understand "core", "deep", "memory", "unit", "data", or "records" as the picture-proxy. The picture can be damaged. The picture is not damaged. The scent of the picture is "like Tomasz's old cologne. It brings back memories". The texture of the picture is "flat". Understand "pixel" or "pixels" as the picture when the Real Thing has happened and the player is clueless. The picture can be inspected or not inspected.

After examining the picture:
	now the picture is inspected.

Instead of searching the picture:  
	try examining the picture.

Test picture with "x picture / get picture / eat picture / read nameplate / read memory unit".

The nameplate is a fixed in place message which is part of the picture. Understand "inscription" and "engraving" as the nameplate. Understand "name" or "plate" as the nameplate. The clueless-description of the nameplate is "A brass nameplate bearing a short inscription. The nameplate is attached to the bottom of the picture." The aware-description of the nameplate is "A small plastic sign with a short inscription. The sign is glued to the Deep Memory module." The clueless-name of the nameplate is "nameplate". The aware-name of the nameplate is "plastic sign". The nameplate-proxy is an aware-proxy that is part of the nameplate. Understand "plastic" or "sign" as the nameplate-proxy. The inscription of the nameplate is "". The texture of the nameplate is "flat and cool, and a little rough over the engraved areas".

Instead of reading the nameplate:
	change outcome-override to force-success;
	if the player is clueless:
		say "It says, [quotation mark]Good luck at MARSpace! - Tomasz[quotation mark][paragraph break]Tomasz's valediction makes you remember happier times...[paragraph break]";
		if unicodage is disabled:
			say "You drift back to your days at the University of Cydonia where you met Tomasz. During the Independence War with Earth, you and Tomasz rescued Rover from the rubble, and lived together briefly until Tomasz was killed during an Earth attack on the Phobos power station. You joined MARSpace during the war effort, and stayed there afterwards, working as a cognitive scientist.[paragraph break]Now you are playing a central role in preparing the first Casimir Drive spaceship, the Valkyrie, for its historic mission: recovery of a robotic probe launched 300 hundred years ago from Earth by the Myomita Corporation. You and the MARSpace team are racing against time to beat the Myomita Corporation to the probe and its top secret data.";
		otherwise:
			try remembering "photo";
			say "[paragraph break][bracket]Note: You can recall [italic type]something[roman type] from your past by typing [quotation mark]REMEMBER [italic type]something[roman type],[quotation mark] e.g., [quotation mark]REMEMBER casimir drive[quotation mark][close bracket][paragraph break]";
	otherwise:
		say "It says, [quotation mark]Deep Memory Unit.[quotation mark][paragraph break]"

Section Kitchen

The Kitchen is privately-named. Understand "kitchen" as the kitchen when the player is the ACU. The clueless-name of the kitchen is "kitchen". The aware-name of the kitchen is "engineering".  The clueless-description of the kitchen is "The kitchen is small but functional, with a space-saver refrigerator and a glass-top electric range. [if the old fridge is open]The fridge door is not completely closed. [end if]There is a[if the drawer is open]n open[end if] drawer under the range. On the opposite wall there is a sink and under it, a[if the cabinet is open]n open[end if] wooden cabinet."  The aware-description of the kitchen is "Swaths of engineering controls -- both holographic and physical -- cover the humming consoles and bulkheads that line the boundaries of this alcove. Along one wall is the coolant output terminus, and below that the fuel vault[if the cabinet is open], which is not properly secured[end if]. The [if the drawer is open]opened [end if]reactor core and the fusion chamber are stacked just to the side of the cryochamber, which maintains the stabilized heavy helium fuel at near absolute zero until it is needed to provide power to ascent/descent retros[if the old fridge is open]. The cryochamber is open, chilling the engineering section[end if]."

The scent of the kitchen is "homey, a rich organic smell that has layered year after year as you have cooked your meals. In short, it smells a lot like ramen noodles".

The sound of the kitchen is "[TK-sound]".

To say TK-sound:
	if the player is clueless:
		say "the asthmatic wheeze of your antique refrigerator, huffing and puffing its way through another day (perhaps its last) of loyal service to your family";
	otherwise:
		say "[if the refrigerator is in the kitchen]the loud hum of the cryochamber, [end if]the high-pitched whine of the reactor core, and the gurgle of liquids moving through conduits in the walls of the engineering section".

Instead of going towards or exiting when the player is in the kitchen:
	if the player carries the food bowl or the player carries the water bowl or the player carries the dog chow bag or the player carries the white egg:
		if the player carries the dog chow bag:
			say "[if the player is clueless]It took a lot of training to get Rover to eat it in the kitchen, so rather than walk out with a bag of dog food, you put it back in the cabinet[otherwise]Instead of contaminating the ship with thermoisotope, you put the fuel conduit back in the vault before switching out of engineering[end if]. [run paragraph on]";
			move the dog chow bag to the cabinet;
		if the player carries the white egg:	
			say "[if the player is clueless]Carrying a fragile egg around the cottage is surely asking for disaster. You lay it back in the fridge before walking out of the kitchen[otherwise]You place the He-8 back into the cryochamber before switching out of engineering[end if].[run paragraph on]";
			move the white egg to the old fridge;
			now the old fridge is closed;
		if the player carries the food bowl or the player carries the water bowl:
			say "[if the player is clueless]Rover can be a messy eater.  By force of habit you never take dog bowls out of the kitchen, so you set[otherwise]Transfer of fuel and coolant requires ACU supervision, so before deselecting engineering you disengage[end if] [run paragraph on]";
			if the player carries the food bowl and the player carries the water bowl:
				say "[if the player is clueless]them[otherwise]both the [food bowl] and the [water bowl][end if]";
			otherwise:
				if the player carries the food bowl:
					say "[the food bowl]";
				otherwise:
					say "[the water bowl]";
			say "[if the player is clueless] down before continuing on your way[end if].";
			move the water bowl to the kitchen;
			[dropping the food bowl trigger's rover's actions regarding both bowls]
			move the food bowl to the player;
			try silently dropping the food bowl;
		say paragraph break;
	continue the action.

The old fridge is a refrigerator in the kitchen. Understand "refrigerator" or "door" as the old fridge.  The aware-name of the old fridge is "cryochamber".  The clueless-name of the old fridge is "old fridge". The clueless-description of the old fridge is "The small refrigerator dates back to the International Era, but is still in good working order, if somewhat small by today's standards. [If the Real Thing has happened]Before this morning, you had never really appreciated just how dented and dinged up the front of the fridge had become. Maybe it's time to think about applying for a new one[otherwise]The glossy, white enameled unit has a single compartment[end if]. A strip of yellow magpaper is attached to the refrigerator door[if the old fridge is open]. The fridge door is open, chilling the kitchen and wasting power[end if]." The aware-description of the old fridge is "A state-of-the-art cryochamber designed to house stabilized heavy helium. The unit is [if closed]closed[otherwise]open, chilling the air around it[end if]. Several annunciators monitor the status of the unit." The old fridge-proxy is an aware-proxy which is part of the old fridge. Understand "cryo" or "unit" or "cryochamber" as the old fridge-proxy. The old fridge can be damaged. The old fridge is not damaged. The scent of the old fridge is "of machine oil, mildew, and last week's toonfysh sandwich". The texture of the old fridge is "metallic and cold". The old fridge can be stuck. The old fridge is not stuck.

The hinges are part of the old fridge. The hinges are plural-named. Understand "hinge" as the hinges. The clueless-name of the hinges is "hinges". Understand "rusty" as the hinges. The aware-name of the hinges is "annunciators". The clueless-description of the hinges is "Rusty hinges that have never worked smoothly." The aware-description of the hinges is "Simple Reed relay-actuated devices that report opening of the cryochamber." The hinges-proxy is an aware-proxy which is part of the hinges. Understand "annunciator" or "annunciators" as the hinges-proxy. The scent of the hinges is "of old grease". The texture of the hinges is "greasy".

Instead of opening the old fridge:
	if the old fridge is not stuck:
		continue the action;
	otherwise:
		say "As you pull on the refrigerator door, it grudgingly creaks a few millimeters.";
		now the old fridge is not stuck.
		
[TOCONSIDER: for V 2.0, could make this a puzzle, requiring use of the toothpaste to grease the fridge hinges.]
	
Instead of searching a refrigerator (called R):
	if R is closed:
		say "Before you can look in it, you've got to open it!";
		the rule succeeds;
	if the player is clueless:
		say "You poke around in the fridge and find [a list of things in R][run paragraph on]";
		if nothing is in R:
			say " at all[run paragraph on]";
		otherwise:
			change outcome-override to force-success;
	otherwise:
		say "The cryo unit contains [a list of things in R][run paragraph on]";
		if nothing is in R:
			say " but the super-chilled interior of the cryo unit itself[run paragraph on]";
		otherwise:
			change outcome-override to force-success;
	say "."

The magpaper is message.  The magpaper is part of the old fridge. Understand "note" and "post-it" and "sticky" and "paper" and "list" as magpaper.  The clueless-name of the magpaper is "magpaper to-do list". The aware-name of the magpaper is "task manager".  The clueless-description of the magpaper is "It is a to-do list, in your own writing."  The aware-description of the magpaper is "It is a list of jobs in your priority queue." The magpaper-proxy is an aware-proxy which is part of the magpaper. Understand "job" or "jobs" or "queue" or "priority" or "task" or "manager" as the magpaper-proxy.  The inscription of the magpaper is "[if the player is clueless][magpaper-clueless][otherwise][magpaper-aware]." The texture of the magpaper is "dry and flimsy". The magpaper can be inspected. The magpaper is not inspected.

To reset magpaper:
	Now the IPL_pid is zero;
	Now the enamel_pid is zero;
	Now the ignite_pid is zero;
	Now the landing_pid is zero;
	Now the rover_pid is zero.

To say magpaper-clueless:
	say "Morning:[line break]X. Get up[line break][if enamel_pid is zero]2[otherwise]X[end if]. Shower[line break][if ignite_pid is zero]3[otherwise]X[end if]. Breakfast[line break][if landing_pid is zero]4[otherwise]X[end if]. Take care of business[line break][if the rover_pid is zero]5[otherwise]X[end if]. Let Rover go walkies".

To say magpaper-aware:
	say "[fixed letter spacing]PID     TTY          STATUS    CMD[line break]";
	say "00000   ttys000      [doneness of 1]Initial Program Load [line break]";
	say "[if enamel_pid is zero]-----[otherwise][right justify enamel_pid minus epoch_pid][end if]	  ttys000      [doneness of enamel_pid]Apply Ablative Enamel [line break]";
	say "[if ignite_pid is zero]-----[otherwise][right justify ignite_pid minus epoch_pid][end if]   ttys000      [doneness of ignite_pid]Ignite Fusion Reactor [line break]";
	say "[if landing_pid is zero]-----[otherwise][right justify landing_pid minus epoch_pid][end if]   ttys000      [doneness of landing_pid]Landing Sequence [line break]";
	say "[if rover_pid is zero]-----[otherwise][right justify rover_pid minus epoch_pid][end if]	  ttys000      [doneness of rover_pid]Send Probe Data[variable letter spacing]".
	[not sure why, but seemingly randomly after many, many, compilations, the compiler asked that the above phrase be broken into subphrases due to complexity. Hmm.]
	
To say doneness of (process - a number):
	if process is zero:
		say "Pending.  ";
	otherwise:
		say "Done.     ".
		
To say right justify (process - a number):
	if process is less than 10:
		say "0000";
	else if process is less than 100:
		say "000";
	else if process is less than 1000:
		say "00";
	else if the process is less than 10000:
		say "0";
	say process.

Instead of taking the magpaper:
	if the player is clueless:
		say "If you moved the 'to do' list, you'd need another note to remind you where you put the list. Better to just leave it there.";
	otherwise:
		say "The task list cannot be relocated; it has a fixed address in system priority memory."

After reading the magpaper for the first time:
	now the magpaper is inspected;
	if the first sim is happening or the second sim is happening:
		let metatext be "David: 'Take care of business'? Is that a euphemism?*Janet: Yes. I had a heck of a time mapping the landing sequence to my daily routine.*David: Who showers and eats before 'taking care of business?' I mean, c'mon.*Janet: I do. All right? Could you cut me some slack? Moe's gah.";
		say "[metatext in metaspeak]".

After examining the old fridge for the first time:
	if the first sim is happening or the second sim is happening:
		let metatext be "David: Isn't a 'to-do' list a little heavy handed?*Janet: Sure, but stuff has to happen in a certain order, and it's just more efficient this way.*David: I think it would be better if it were less linear and more rule-based.*Janet: Okay, mister critic, then you write the code. If we want to recover that probe before Earth gets to it, we are on a very tight development and testing schedule.";
		say "[metatext in metaspeak]";
		
After opening the old fridge:
	change the outcome-override to force-success;
	[now Rover is busy; - sounds more natural to not inhibit other same round actions]
	if Rover is in the location:
		say "[Rover] looks up when he hears [the old fridge] open.";
	otherwise:
		if Rover is not in Limbo:
			say "[if the player is clueless]As the fridge creaks open on its ancient hinges, Rover slips into the kitchen[otherwise]Rover pops into the engineering section to investigate the thermal shift[end if]. [run paragraph on]";
			now Rover is in the kitchen;
		if Rover is hungry:
			say "[if the player is clueless]He pokes his nose in the fridge and sniffs around, although he knows full well that stuff in the fridge is for people only and that he'd be in a heap of trouble if he got too curious in there[otherwise]This behavior may indicate that Rover's fuel reserve is low[end if].";
		otherwise:
			say "He [if the player is clueless]sniffs the fridge door and decides there is nothing in the fridge worth getting in trouble over. He saunters out of the kitchen and back towards the living room[otherwise]performs a brief chemosensor scan and then rolls back towards the operations area[end if].";
			now Rover is in the Living Room.

The white egg is an edible prop in the old fridge. Understand "neoegg" as the white egg. The white egg can be raw or cooked. The white egg is raw. Understand "cooked" or "fried" as the white egg when the white egg is cooked. Understand "raw" or "uncooked" as the white egg when the white egg is raw. The white egg can be broken or intact. The white egg is intact. The clueless-name of the white egg is "[if the white egg is cooked]fried [end if]white egg". The aware-name of the white egg is "heavy helium sphere".  The aware-description of the white egg is "A reinforced carboy [if the white egg is cooked]that once contained[otherwise]of[end if] super-chilled Helium-8." The white egg-proxy is an aware-proxy that is part of the white egg. Understand "helium" or "heavy" or "sphere" as the white egg-proxy. The clueless-description of the white egg is "[if cooked]A perfectly fried egg: The yellow yolk lies at the geometric center of a white disc, like the star at the center of a nascent system. The yolk is just a notch short of congealing, and the white is neither runny nor burnt. Another culinary success[otherwise if the egg is broken]A raw egg, with bright yellow yolk[otherwise]A big white neoegg[end if]." The scent of the white egg is "[egg-whiff]". The texture of the neoegg is "not quite smooth and a bit tacky".

To say egg-whiff:
	if the egg is intact:
		say "like a vat-grown neoegg";
	otherwise:
		if the egg is cooked:
			say "tantalizingly good";
		otherwise:
			say "like a raw egg".

Instead of attacking the white egg:
	if the white egg is in the frying pan:
		try cracking the white egg into the frying pan;
	otherwise:
		say "That would make a mess. You'd only break the egg into a pan."
	
Cracking it into is an action applying to two things. Understand "crack [something] into/in/on/over [something]" as cracking it into. Understand "open [something] into/in/on/over [something]" as cracking it into. Understand "break [something] into/in/on/over [something]" as cracking it into.

Check cracking it into:
	if the noun is not the white egg:
		say "That didn't make much sense. Maybe you could rephrase it?" instead;
	if the second noun is not the frying pan:
		say "[if the player is clueless]That's crazy talk[otherwise]It would be inadvisable to vent the heavy helium into anything but a magnetic containment bottle[end if]." instead;		
	if the enamel_pid is zero:
		now the frying pan is on the counter;
		now the white egg is in the frying pan;
		say "You feel kind of grimy and not entirely awake. From past experience you know that cooking before your morning shower often ends in disaster.  (This is why you have your list hanging on the fridge!)  You put the egg and the frying pan aside for the moment." instead.
		
Carry out cracking it into:
	change outcome-override to force-success;
	move the white egg to the frying pan;
	now the white egg is broken;
	if the player is clueless:
		say "You crack the egg into the frying pan. The neoegg shell sublimates as the contents spread over the pan's non-stick surface. [run paragraph on]";
	otherwise:
		say "The heavy helium feed is now coupled to the input port of the magnetic bottle. [run paragraph on]";
	if the frying pan is on the range:
		fry the white egg;
	otherwise:
		say paragraph break.
		
After putting the frying pan on the range:
	if the white egg is in the frying pan and the white egg is raw and the white egg is broken:
		fry the white egg;
	otherwise:
		continue the action.
		
Instead of putting the white egg on a supporter:
	say "The egg might roll off its flat surface, leaving you with no breakfast. You hang onto the egg."
	
To fry the white egg:
	now the white egg is cooked;
	say "[if the player is clueless]Immediately, the surface of the range glows red. When the egg is cooked sunny-side up to perfection, the glow fades[otherwise]A spherical array of powerful lasers discharges instantly, their combined output focused on the heavy helium being injected into the magnetic bottle within the reactor chamber. The ship surges with power[end if].";
	if the Second Sim is happening:
		let metatext be "Janet: If there were some heavy helium left after landing, could the ship take off again?*David: Hypothetically, yes, but the planet has essentially no atmosphere to break against and it has about nine times Earth gravity. Even with optimal approach we???ll have to fuse every gram of that heavy helium to make a soft landing.*Janet: I just hate to leave the ship there. It could take years before our next Casimir ship will be built, and who knows if Valkyrie will survive that long on that chthonian rock.*David: Nice word. From MARSpace perspective, all that matters is that the probe data are recovered.";
		say "[metatext in metaspeak]".	
	
Instead of doing something to the white egg when the white egg is broken:
	if the current action is examining:
		continue the action;
	otherwise:
		if the player is clueless:
			change outcome-override to force-failure;
			say "[one of]Are you going to eat it, or what?[or]Cooked eggs are good for one thing (well, two if you count modern art).[or]You can eat the egg, or not eat the egg. It doesn't seem to care.[or]To eat the egg or not. That is the question.[in random order]";
		otherwise:
			change outcome-override to force-failure;
			say "The He-8 carboy is empty and can be recycled."
			
Before eating the white egg:
	if the player is rover:
		say "You know that you are not supposed to eat eggs.[if rover is stuffed] Besides, you are full right now.";
		the rule succeeds;
	otherwise:
		if the white egg is raw:
			if the player is clueless:
				say "A raw egg? Disgusting!";
			otherwise:
				say "The fuel has not been ignited; it would be premature to recycle the containment unit.";
			the rule succeeds;
		otherwise:[cooked]
			change the outcome-override to force-success;
			now the player is poopready;
			say "[if the player is clueless]You gobble down what might well have been the best neoegg you've ever had[otherwise]You recycle the components of the heavy helium containment unit and reallocate them according to the ship's needs[end if].";
			if the Second Sim is happening:
				let metatext be "David: Wait a minute! She just scoops the egg out of the pan with her hand and eats it like a grizzly bear raking salmon out of a river?*Janet: Works for me, yeah.*David: How about a plate and fork?*Janet: The ACU doesn???t miss them, and it???s less programming overhead. And bonus: fewer dishes to clean.";	
				say "[metatext in metaspeak]";
			otherwise if the Real Thing is happening and the landing_pid is not 0:
				[i.e., taking off from the planet]
				remove the white egg from play;
				the rule succeeds;
			[so, for second sim, or for the first time during real thing -- i.e, the approach to the planet]
			now the ignite_pid is the turn count;
			move the white egg to the cold box;
			now the white egg is intact; [so that Rover doesn't find a cooked egg!]
			now the white egg is raw;	
			the rule succeeds;
			
After taking the white egg for the first time during the First Sim:
	say "You pluck the white egg out of the fridge.";
	let metatext be "Janet: It's a shame we don't have enough heavy helium to bring the ship back.*David: I'm afraid we've put all our baskets in one egg, as it were. That one egg represents every bit of heavy helium refined on Mars since Phobos was destroyed.*Janet: All Your Egg Are Belong to Us?*David: Huh? Didn't quite catch that.*Janet: Never mind.";
	say "[metatext in metaspeak]".

The range is enterable furniture in the kitchen[enterable so you can sit on it]. The drawer is an openable closed container that is part of the range.

The clueless-name of the range is "the cooking range". Understand "cooking" and "stove" as the range. The aware-name of the range is "fusion chamber". The clueless-description of the range is "The top of the glass range is flush with the kitchen counter. The surface of the stove is not glowing, indicating that it is not hot. The stove does not have an oven, but below the cooking surface, a drawer [if the drawer is closed]is flush with the kitchen counter[otherwise]hangs open[end if]." The aware-description of the range is "The majority of the engineering deck is occupied by the towering hulk of the industrial fusion reactor that powers the ship[apostrophe]s landing thrusters. The reactor core at the base of the fusion reactor is [if the drawer is closed]closed[otherwise]open[end if].[if the frying pan is on the range] It is illuminated from above by the faint plasma glow of a magnetic bottle which has formed at the focal point of multiple ignition lasers." The range-proxy is an aware-proxy that is part of the range. Understand "fusion" or "chamber" as the range-proxy. The scent of the range is "like burnt toast".

To say Registered Trademark:
	say "[if unicodage is disabled](R)[otherwise]unicode 174[end if]".

Before switching on the range:
	say "[if the player is clueless]Your stove is a Cupertino SmartRange[Registered Trademark] -- there are no controls, just a stylish glass surface with rounded corners[otherwise]The fusion chamber is designed to activate automatically when heavy helium is contained in a magnetic bottle at the focal point[end if].";
	the rule succeeds.
	
Instead of touching the range:
	change outcome-override to force-success;
	say "The stove is cool to the touch."
	
Before opening the range:
	say "There is no obvious way to open the range.";
	the rule succeeds. 
	
A frying pan is in the drawer. It is an open not openable container.  The carrying capacity of the pan is 1. The clueless-name of the frying pan is "frying pan". The aware-name of the frying pan is "magnetic bottle". The clueless-description of the frying pan is "A small, non-stick frying pan [if the white egg is not in the frying pan][otherwise if the white egg is cooked]from which a single cooked egg stares up at you[otherwise if the egg is broken]containing a gooky, uncooked egg[otherwise]in which a big white neoegg rolls around[end if]." The aware-description of the frying pan is "A powerful magnetic field capable of confining the fusion reaction within a tight volume, at the heart of the Valkyrie's fusion lasers." The frying pan-proxy is an aware-proxy that is part of the frying pan. Understand "magnetic" or "bottle" or "containment" as the frying pan-proxy. The scent of the frying pan is "faintly of residual sesame oil". The texture of the frying pan is "solid, like the kind of pan a professional chef would use. You eat so many neoeggs that anything less just would not do".

The clueless-name of the drawer is "drawer". The aware-name of the drawer is "reactor core". The clueless-description of the drawer is "A deep [drawer] under [the range]. [The drawer] [if open]has been opened[otherwise]is shut[end if]." The aware-description of the drawer is "[if the drawer is open]The closed [drawer] shields the engineering section of the ship from residual radiation[otherwise]With [the drawer] open, hard radiation bathes the engineering section[end if]." The drawer-proxy is an aware-proxy that is part of the drawer. Understand "reactor" or "core" or "shielding" or "shield" as the drawer-proxy. The scent of the drawer is "like wood shavings, although you know by its cheap construction that there is not a milligram of real wood in the counter unit or drawer". The texture of the drawer is "wooden".

The water bowl is a bowl in the kitchen. Understand "dog" as the water bowl. The clueless-name of the water bowl is "water bowl". Understand "metal" as the water bowl. The aware-name of the water bowl is "coolant reservoir". The clueless-description of the water bowl is "A simple metal bowl labeled [quotation mark]water.[quotation mark] [emptiness of the water bowl][paragraph break]". The aware-description of the water bowl is "A titanium stanchion with hoses and connectors. Engraved on the upright support is the word [quotation mark]coolant transfer coupling.[quotation mark] [emptiness of the water bowl][paragraph break]". The water bowl-proxy is an aware-proxy that is part of the water bowl. Understand "coolant", "line", "transfer", "coupling", "stanchion", "titanium", "hose", "hoses",  "connector", or "connectors" as the water bowl-proxy. The scent of the water bowl is "just slightly less unpleasant than Rover's food bowl". The texture of the water bowl is "cool to the touch".

The food bowl is a bowl in the kitchen. Understand "dog" as the food bowl. The clueless-name of the food bowl is "food bowl". The aware-name of the food bowl is "fuel reservoir". The clueless-description of the food bowl is "A simple metal bowl. It is identical to the water bowl, except for the word [quotation mark]food[quotation mark] that appears on its side. [emptiness  of the food bowl]". The aware-description of the food bowl is "A heavily shielded thermal isotope delivery device. [emptiness of the food bowl]". The food bowl-proxy is an aware-proxy that is part of the food bowl. Understand "fuel", "reservoir", "delivery", or "device" as the food bowl-proxy. The scent of the food bowl is "[food bowl-whiff]". The texture of the food bowl is "smooth and cool".

To say food bowl-whiff:
	if the food bowl does not enclose the dog food:
		say "disgusting, reeking of Rover's last meal";
	otherwise:
		say "overpoweringly of Rover's dog food. Eww. Your eyes water".

To say emptiness of (vessel - a bowl):
	say "[The vessel] is [if the vessel is not full]empty[otherwise]full."
	
After dropping a bowl (called the vessel):
	if Rover is not in the location and Rover is not in Limbo:
		if the player is clueless:
			say "[one of][Rover] runs into the kitchen, his rear end making a wide, sliding turn on the living room's hardwood floor as he rounds the corner[or][Rover] clambers around the corner from the living room, and stops in front of the bowls[or]Hearing the clank of [the vessel] as you put it down, [Rover] appears in the kitchen, licking his lips[or][Rover] trots into the kitchen when he hears the metal bowl clink as you set it down[or][Rover] strolls into the kitchen to investigate the promising sound of clinking dog bowls[or][Rover] arrives in the kitchen, panting from exertion[or]Putting the dog bowl down is tantamount to yelling [quotation mark]Here boy![quotation mark] as evidenced by the sudden appearance of [Rover] in the kitchen[in random order].";
		otherwise:[aware]
			say "[one of][Rover] enters the engineering section at full throttle, his tractors exceeding the cargo bay flooring's coefficient of dynamic friction as he rounds the corner[or][Rover] jets around the corner from the cargo bay and screeches to a halt near the transfer system[or]Receiving notification from [the vessel] alert system, [Rover] drives into the engineering section[or][Rover] trundles into the engineering section when he hears you deselect one of his transfer systems[or][Rover]'s head swivels as he scans engineering, and stops when he locks on [the vessel][in random order].";		
		now Rover is in the kitchen;	
		now Rover is busy.
	
Filling it with is an action applying to two things. Understand "fill [something] with [something]" or "fill [something] from [something]" as filling it with when the player is the acu. 

Understand "water" as the kitchen sink.  [so that 'put water in water bowl' works correctly]

Check filling it with:
	if the noun is not a bowl:
		say "You can't fill that." instead;
	if the noun is full:
		say "[The noun] is already full." instead;
	if the noun is the water bowl:
		if the second noun is not the kitchen sink:
			say "[if the player is clueless]Rover[otherwise]ROVER[end if] would not appreciate it if you put anything aside from [if the player is clueless]water[otherwise]coolant[end if] in his [water bowl]." instead;
	if the noun is the food bowl:
		if the second noun is not the dog chow bag and the second noun is not dog food:
			say "[if the player is clueless]Only dog food in the dog bowl. Vet's orders[otherwise]The fuel reservoir was designed only to handle ROVER's radioisotopic fuel[end if]." instead;
		otherwise:
			if the dog chow bag is not carried by the player:
				[at this point, the bag must be at least visible to the player as filling it with requires an object of the preposition, and fillupping it would fail if the bag were not visible.]
				say "([if the player is clueless]first taking the bag of dog chow[otherwise]first accessing the conduit output valve[end if])";
				try silently taking the dog chow bag;
			if the dog food is not in the dog chow bag:
				say "[if the player is clueless]There are no more kibbles in the bag[otherwise]The supply of thermoisotope has been depleted[end if]." instead.
			
Carry out filling it with:
	change outcome-override to force-success;
	if the noun is:
		-- the water bowl:
			move the tap water to the water bowl;
		-- the food bowl:
			now the dog chow bag is open;
			move the dog food to the food bowl.
			
After filling the water bowl with the kitchen sink:
	say "You [if the player is clueless]run the sink briefly to make sure the water is cold, and then fill Rover's bowl about halfway up[otherwise]transfer coolant from the terminus to the reservoir[end if].[paragraph break]";
	if Rover is in the location:
		say "[Rover] looks towards [the kitchen sink] as you fill his [water bowl].";
	otherwise:
		if Rover is thirsty and Rover is not in Limbo:
			say "[Rover] [if the player is clueless]wanders into the kitchen when he hears water splashing into his bowl[otherwise]detects the transfer of coolant to the reservoir[end if].";
			now Rover is in the kitchen.
			
After filling the food bowl with the dog chow bag:
	say "You [if the player is clueless] empty the bag of dog chow into Rover's bowl, giving him a generous portion that should more than carry him through a day's worth of Rover antics[otherwise]restock the fuel reservoir with polonium 210 from the fuel conduit[end if].[paragraph break]";
	if Rover is in the location:
		say "[Rover] watches[if Rover is hungry] with interest[end if] as you fill his [food bowl].";
	otherwise:
		if Rover is hungry and Rover is not in Limbo:
			say "[Rover] [if the player is clueless]trots in from the living room when he hears kibbles trickling into his bowl[otherwise]detects the transfer of radioisotope fuel to the reservoir[end if].";
			now Rover is in the kitchen.
			
	
Report filling it with:
	say "You fill the [noun] with some [if the noun is the water bowl][tap water] from the [kitchen sink][otherwise][dog food][end if]."
	
Fillupping is an action applying to one thing. Understand "fill [something]" as Fillupping when the player is the acu.

Check fillupping:
	if the player is Rover:
		say "You wish." instead;
	otherwise:
		if the noun is the water bowl:
			try filling the water bowl with the kitchen sink;
		otherwise if the noun is the food bowl:
			if the player is not able to see the dog chow bag:
				say "You would need [if the player is clueless]some dog food[otherwise]the fuel conduit[end if]." instead; 
			try filling the food bowl with the dog chow bag;
		otherwise:
			say "You can't fill that."
	
Instead of inserting something into a bowl in the kitchen:
	[try to route anything going into the bowls through the filling it with action]
	try filling the second noun with the noun.
		
Instead of doing something with the tap water:
	if the current action is examining:
		continue the action;
	otherwise:
		change outcome-override to force-failure;
		say "You don't want to mess with Rover's [tap water]."
			
Instead of doing something with the dog food:
	if the current action is examining:
		continue the action;
	otherwise:
		change outcome-override to force-failure;
		if the dog chow bag encloses the dog food:
			say "[if the player is clueless]You're not very keen to reach into a bag of stinky dog food[otherwise]For optimal containment, the fuel isotopes should remain in the fuel conduit or reservoir[end if].";
		otherwise:
			say "You don't want to mess with Rover's [dog food]."
			
Pouring it into is an action applying to two things. Understand "pour [something] in/into [something]" or "transfer [something] into/in [something]" or "put something in/into [something]" or "move [something] in/into/to [something]" as pouring it into when the player is the acu.

Carry out pouring it into:
	do nothing.
	
Instead of pouring something into something:
	try filling the second noun with the noun.
	
Before filling a bowl (called vessel) with something:
	if the player does not hold vessel:
		say "(first taking [the vessel])[command clarification break]";
		try silently taking the vessel.
		
After inserting something into the old fridge:
	if the noun is the maintenance droid or the noun is the white egg:
		change outcome-override to force-success;
		continue the action;
	otherwise:
		say "[if the player is clueless]Only food in the fridge. It's nigh axiomatic[otherwise]Depositing [the noun] in [the old fridge] would result in irreparable thermal damage, destroying [the noun], so you issue an interrupt signal[end if].";
		now the player carries the noun.
		
After putting a bowl (called the vessel) on the counter:
	say "[if the player is clueless]No way. You eat off the kitchen counter. You don't want to put [the vessel] on it[otherwise]You inhibit relocation of [the vessel] to maintain minimal safe clearance between [the vessel] and [the counter][end if].";
	now the player carries the vessel.  
	
After inserting a bowl (called the vessel) into the cabinet:
	change outcome-override to force-success;
	if Rover is not in Limbo:
		if Rover is not in the location:
			now Rover is in the location;
			say "[if the player is clueless][Rover] zips into the kitchen[otherwise]This triggers a [ROVER] transfer system-related error. [Rover] rolls headlong into the engineering section[end if] and he[run paragraph on]";
		otherwise:
			say "[if the player is clueless]This is one of Rover's favorite games! He[otherwise][Rover][end if]"; 
		say "[if the player is clueless] pulls [the vessel] back out of[otherwise] removes [the vessel] from[end if] [the cabinet].";
		now the player carries the vessel;
		try silently dropping the vessel.
	
Before putting something (called the item) on the kitchen floor:
	try dropping the item;
	the rule succeeds.
	
The counter is an enterable furniture in the kitchen. The clueless-name of the counter is "kitchen counter". The aware-name of the counter is "bulkhead". The clueless-description of the counter is "A scratch-resistant white counter into which a cooking range has been set." The aware-description of the counter is "Thick bulkheads provide radiation shielding around the fusion chamber." The counter-proxy is an aware-proxy that is part of the counter. Understand "bulkhead" as the counter-proxy. The counter can be discussed. The counter is not discussed. The scent of the counter is "like old soy sauce". The texture of the counter is "smooth, despite frequent use as a cutting board".

The kitchen sink is a sink in the kitchen. The clueless-name of the sink is "sink". Understand "tap" or "faucet" as kitchen sink. The aware-name of the sink is "coolant output terminus". The clueless-description of the sink is "A small, utilitarian kitchen sink. Below the sink, there is a small cabinet." The aware-description of the kitchen sink is "The coolant output nozzle leads towards the ROVER transfer system." The kitchen sink-proxy is an aware-proxy that is part of the kitchen sink. Understand "coolant", "output", "nozzle", "terminus" as the kitchen sink-proxy. [Understand "water" as the kitchen sink.] The scent of the kitchen sink is "like the dirty dishes that usually fill it". The texture of the kitchen sink is "cold and metallic".

Does the player mean drinking the tap water:
	it is very likely.

The tap water is a water. It is in Limbo. The clueless-name of the tap water is "water". The aware-name of the tap water is "coolant". The clueless-description of the tap water is "Clear, cool water." The aware-description of the tap water is "Clear, thermoconductive liquid." The tap water-proxy is an aware-proxy that is part of the tap water. Understand "thermoconductive" or "liquid" or "coolant" as the tap water-proxy. The scent of the tap water is "vaguely of chlorine".

Instead of opening or switching on a sink:
	if the player is clueless:
		change the outcome-override to force-success;
		say "You run the water momentarily, and then turn off the tap to conserve water.";
	otherwise:[not clueless]
		if the noun is the bathroom sink:
			if the bathroom sink is depleted:
				say "The ship's supply of dermatovore eels will take 5 minutes to regenerate. Please stand by.";
				the rule succeeds;
			otherwise:[worms are ready to rock]
				say "Warning. The decontamination protocol is toxic to all biological forms and should only be used against Level 5 pathogens. Continue (Y/N)?[paragraph break]";
				if the technician is in the Valkyrie Area and the technician is not biosuited:
					say "Over the local radio link you hear a man with an Earth accent shouting, [quotation mark]No! No! No! No! Bad computer! Abort! Abort decontamination! Stop![quotation mark][paragraph break]BINARY INPUT REQUIRED>";
				otherwise if David Venkatachalam is in the Living Room:
					say "David [if the player is in the living room]spins towards the bathroom, his face flushing red, and [end  if]exclaims, [quotation mark]What! No, no, you mustn't do that. It's a violation of your basic interdictions. Er, isn't it?[quotation mark][paragraph break]Janet answers [if David Venkatachalam is exposed]spitefully, [quotation mark]No, it isn't. The direct object is not a human. Go for it ACU, I'd rather die than have these data fall into Earth's hands[otherwise]fearfully, [quotation mark]No, I'm afraid it isn't. ACU, I'd like you to carefully reconsider this action, as it would kill both David and me. I don't think you want to do that[end if].[quotation mark][paragraph break]BINARY INPUT REQUIRED>";
				if the player consents:
					if David Venkatachalam is in the Living Room:
						change the outcome-override to force-success;
						say "The voracious mutant eels are released throughout the ship. Neither David nor Janet make a sound, or at least none that you can hear above the ultrasonic chirping of the bloodthirsty eels.[paragraph break]You switch your video feed to the living room, but even in that interval, the eels have covered Janet and David in a glistening, writhing, slithering mass that almost immediately collapses to the floor and melts away[if the front door is open]. Before turning on each other, the eels at the edge of the frenzy detect the scent of more prey, and the mass of eels is out the front cargo bay door and down the boarding ramp before Janet's permalloy armband clatters metallically to the cargo bay floor[end if].";
						now the endgame is eeled;
						end the game in death;
						the rule succeeds;
					if the technician is in the Valkyrie Area:
						now the bathroom sink is depleted;
						the eels hatch in four turns from now;
						say "[paragraph break]Gengineered dermatovore eels shoot from recessed holes in the bulkheads throughout the ship, intent on devouring anything they can digest. [run paragraph on]";
						if the technician is biosuited:
							change the outcome-override to force-failure;
							if the technician is in the location:
								say "The eels surround the technician but cannot penetrate the bioprotective paste on the outside of his spacesuit. Finding nothing but each other, that's what they eat. The last one swallows its own tail and succumbs to the unusually active digestive juices of its species.";
							otherwise:[not in the location]
								say "Your short-range radio link beeps, and then you hear, [quotation mark]We've got more of those eels here, but the biopaste is working -- they don't seem to like the taste of the suit. I'm moving pretty briskly now, it shouldn't be too long. Keep my dinner warm![quotation mark][paragraph break]";
						otherwise:[no biosuit]
							change the outcome-override to force-success;
							if the technician is in the location:
								say "The technician's flimsy space suit is merely an appetizer for the voracious eels, and they finish it and its contents -- and each other -- off in mere seconds.";
							otherwise:[not in the location]
								say "Your short-range radio beeps abortively, and there are some chewing sounds, followed by static, and loss of the carrier.";
							increase the henchmen defeated by one;
							now the technician is biosuited;
							move the technician to Limbo;
					otherwise:[no meat in the ship]
						say "Decontamination protocol aborted: bioscan negative.";
				otherwise:[no consent]
					say "Decontamination protocol aborted: confirmation failed.";
		otherwise:[not the bathroom sink]
			say "You verify that coolant pressure is nominal."
				
At the time when the eels hatch:
	now the bathroom sink is not depleted.
		
Instead of closing or switching off a sink:
	if the player is clueless:
		say "It's already shut off.";
	otherwise:
		if the noun is the bathroom sink:
			say "The biohazard containment system automatically shuts off when the infestion is neutralized.";
		otherwise:
			say "Coolant output flow is already zero.".
			
Instead of inserting something into the kitchen sink:
	say "[if the player is clueless]You're tired of stuff piling up in the sink, so you stick to your New Year's resolution and decide to hang on to [the noun][otherwise]You cannot insert [a noun] into the coolant output terminus[end if]."

The cabinet is an openable closed scenery container in the kitchen.  The dog chow bag and the reward nuggets replicator are in the cabinet.  

The clueless-name of the cabinet is "cabinet". The aware-name of the cabinet is "fuel vault". The clueless-description of the cabinet is "The small wooden cabinet under the sink is [if the cabinet is open]open[otherwise]closed[end if]." Understand "wooden" as the cabinet. The aware-description of the cabinet is "A lead-lined vault in which radioisotope fuel is stored for the ROVER. The vault is presently [if the cabinet is open]sealed[otherwise]unsealed[end if]." The cabinet-proxy is an aware-proxy that is part of the cabinet. Understand "fuel" or "vault" as the cabinet-proxy. The scent of the cabinet is "of cleaning products and dog food. Not a pleasant combination". The texture of the cabinet is "like cheap pressboard".

The dog chow bag is an open openable container.  The carrying capacity of the dog chow bag is 1.  The dog chow bag contains some dog food.

Does the player mean taking the dog chow bag: 
	it is very likely.

The clueless-name of the dog chow bag is "20 kilo bag of dog chow". Understand "20" or "kilo" or "food" or "chow" or "dog chow" or "20 kilo" or "dog chow bag" as the dog chow bag. The aware-name of the dog chow bag is "fuel conduit". The clueless-description of the dog chow bag is "The [if the dog chow bag is open]open[otherwise]closed[end if] bag features a picture of a grotesquely (in your opinion) fat white husky seated at a fancy dinner table. In front of him, steak, turkey, and ham are piled high on silver dishes. He stares rapaciously at the feast, clenching a fork and knife in his paws. The bag is labeled [quotation mark]Fill your best friend's bowl with Happy Dogz Mix![quotation mark]". The aware-description of the dog chow bag is "A fully automated delivery system designed to safely pump radionuclide fuels from the storage unit to the ROVER transfer device." The dog chow bag-proxy is an aware-proxy that is part of the dog chow bag. Understand "fuel" or "conduit" as the dog chow bag-proxy. The scent of the dog chow bag is "unbelievably bad to you, although you're sure that to Rover the smell must be irresistible". The texture of the dog chow bag is "like plastic-laminated paper fiber".

Does the player mean eating the dog food:
	it is very likely.
	
Instead of giving the dog chow bag to Rover:
	if the player is clueless:
		say "Rover[if the dog chow bag does not enclose the dog food] gives the empty bag a perfunctory sniff, as etiquette demands[otherwise]'s ears perk up and his tail propellers as he tries to cram his head into the bag. Failing that, he backs off and tries to look patient as he waits for you to feed him[end if].";
	otherwise:
		say "ROVER polls the fuel delivery system and determines [if the dog chow bag does not enclose the dog food]that there is no polonium in the conduit[otherwise]that the conduit is full of polonium. He waits patiently for you to begin the transfer process[end if]."

The clueless-name of the dog food is "doggie kibbles". Understand "kibble" or "kibbles" or "doggie" or "dog" or "dog food" or "doggie kibbles" as dog food. The aware-name of the dog food is "polonium 210 pellets". The clueless-description of the dog food is "Tasty brown kibbles." The aware-description of the dog food is "Red-hot pellets of polonium 210." The dog food-proxy is an aware-proxy that is part of the dog food. Understand "polonium" or "210" or "radionuclide" or "isotope" or "pellet" or "pellets" as the dog food-proxy. The scent of the dog food is "like rotting sewage, but to Rover it's haute cuisine".

Before eating dog food:
	say "[if the player is clueless]Eww. Yech. So not[otherwise]Po-210 is not a suitable fuel source for the Valkyrie. The limited quantity, and its slow rate of heat production would not significantly contribute to the ship's power budget[end if].";
	the rule succeeds.
	
The reward nuggets replicator is an open not openable container. The carrying capacity of the reward nuggets replicator is 1. The reward nuggets replicator contains a dog treat. 

Before inserting something into the reward nuggets replicator:
	say "[if the player is clueless]The way the reward replicator is built, there is no way to put anything into it[otherwise]The token generator is a read-only device[end if]." instead. 
	
Does the player mean tasting the dog treat:
	it is likely.
	
Instead of tasting the dog treat:
		say "[if the player is clueless]Knowing where these dog treats come from, you're not very keen to put one in your mouth[otherwise]The token is valid[end if].";
		[The case of Rover eating treat is not provided, as the treat can't go outside, and Rover is only the player when he's out for walkies.]
		
Does the player mean eating the dog treat:
	it is likely.
	
Instead of eating the dog treat:
	if the player is clueless:
		say "Gut-wrenching flavor aside, it would be a bureaucratic nightmare to describe to the Ministry of Waste Management how replicated matter ended up in the human waste stream (effectively short-circuiting their carefully balanced ecology). Reminded of where replicated matter comes from, you decide not to eat the treat[run paragraph on]";
		if Rover is in the location:
			say ".[paragraph break]Rover looks up at you gently reminding you that he'd be willing to eat it";
			now Rover is busy;
		say ".";
	otherwise:
		say "Without ROVER's private key, the token is meaningless."

After taking the reward nuggets replicator:
	say "[if the player is clueless and the dog treat is in the reward nuggets replicator]A dog treat rattles around in the replicator as you pick it up[otherwise]The token dispenser hums as you access it[end if]. [run paragraph on]";
	if Rover is not in Limbo:
		if Rover is not in the location:
			say "[Rover ] [if the player is clueless]is suddenly standing next to you, eyes wide open, and fixed on the reward nugget replicator[otherwise]arrives immediately and enthusiastically awaits neural conditioning[end if].";
			now Rover is in the location;
		otherwise:
			say "[Rover] [if the player is clueless]stares at the box of treats, successfully suppressing the urge to drool. For the moment[otherwise] rests on hot standby, eagerly awaiting an opportunity for neural reinforcement[end if].";
		now Rover is busy.
		
Instead of giving the water bowl to Rover:
	try dropping the water bowl;
	say "[if the water bowl is full]Rover shivers with excitement as you put the full water bowl on the ground.[otherwise]Rover moans sadly as you put the empty water bowl on the floor.".

Instead of giving the food bowl to Rover:
	try dropping the food bowl;
	say "[if the food bowl is full]Rover smacks his lips as you lay the bowl down for him.[otherwise]Rover's stomach growls when you lay down the empty bowl. He looks at you pathetically.";
	now rover is busy.

Instead of giving a dog treat to Rover:
	change outcome-override to force-success;
	now the dog treat is in the reward nuggets replicator;
	say "[Rover ] [if the player is clueless][one of]nearly takes your hand off in rush to swallow the treat[or]approaches the treat silently, with his head bent and eyes half closed, like a supplicant before the altar. With a look of deep reverence he takes the treat in his mouth and backs away[or]snaps his tongue out like a frog and whips the treat out of your hand from two meters away. It's just something he does[or]does a slow motion dive and twist in mid-air, gracefully arcing above you and swabbing your hand liberally with his broad, moist tongue. The treat has disappeared down his gullet by the time he lands[or]gobbles down the treat and then pretends indignantly that he hasn't received anything at all[or]carefully lifts the treat out of your hand using a toothy sidewise grip[or]gobbles down the treat[or]wolfs down the dog biscuit[or]polishes off his dog treat[or]swallows the treat without bothering to chew it at all[stopping]. A series of emotions wash over Rover's face, but finally it settles into an expression of [one of]ecstasy[or]exhilaration[or]exultation[or]elation[or]enchantment[or]extreme satisfaction[or]enjoyment[or]euphoria[in random order][otherwise]internalizes [the dog treat][end if].";
	now Rover is busy.
	
The clueless-name of the reward nuggets replicator is "reward nugget replicator". Understand "reward", "replicator", "liver", "flavor", "reward", or "nugget" as the reward nuggets replicator. The aware-name of the reward nuggets replicator is "token dispenser". The clueless-description of the reward nuggets replicator is "A small, bright red device labeled [quotation mark]Reward Nugget Replicator.[quotation mark] It sports a picture of a dog with angel wings and a halo above its head. In compliance with the Ministry of Waste Management's ordinances, the device will only produce a dog treat when Rover has consumed the previous one. It's a feature."  The aware-description of the reward nuggets replicator is "A virtual device for reinforcing the weighting of positive behaviors in the ROVER neural net."  The reward nuggets replicator-proxy is an aware-proxy that is part of the reward nuggets replicator. Understand "token" or "dispenser" as the reward nuggets replicator-proxy. The scent of the reward nuggets replicator is "better than you'd think it would considering how bad Rover's food smells".

Instead of giving the reward nuggets replicator to Rover:
	say "[if the player is clueless]Rover doesn't know how to work the replicator. He reaches up and pushes it back to you[otherwise]As a safeguard against addictive autofeedback, ROVER can accept tokens but not generate them[end if]."
	
The dog treat is edible. The clueless-name of the dog treat is "dog treat". Understand "nugget" or "nuggets" or "reward" as the dog treat. The aware-name of the dog treat is "neural net reinforcement token". The clueless-description of the dog treat is "A bone-shaped dog treat. It doesn't seem very appetizing to you, but Rover likes them." The aware-description of the dog treat is "A positive feedback method within Rover's neural net.". The dog treat-proxy is an aware-proxy that is part of the dog treat. Understand "neural", "net", "reinforcement", "token", "positive", or "feedback" as the dog treat-proxy. The scent of the dog treat is "like a cross between bacon and vinyl upholstery". The texture of the dog treat is "like a pretzel, but not as twisty".

The kitchen floor is a privately-named scenery in the kitchen. The printed name of the kitchen floor is "floor". The clueless-name of the kitchen floor is "kitchen floor". Understand "ground" or "floor" as floor. The aware-name of the kitchen floor is "engineering section floor". The clueless-description of the kitchen floor is "Mars-tone tiling." The aware-description of the kitchen floor is "A strong metal mesh overlying the girders and struts that brace the engines against ship's inner hull." The kitchen floor-proxy is an aware-proxy that is part of the kitchen floor. Understand "girder", "girders", "strut", "struts", "mesh", "metal", "hull" or "inner" as the kitchen floor-proxy. The scent of the kitchen floor is "not pleasant. If you owned a mop, you'd consider using it. Good thing you don't own a mop". The texture of the kitchen floor is "sticky in some areas, merely tacky in others".

Section Bathroom

The Bathroom is privately-named. Understand "bathroom" as the bathroom when the player is the ACU. The clueless-name of the bathroom is "bathroom". The aware-name of the bathroom is "flight control". The clueless-description of the bathroom is "Your cottage[apostrophe]s living room is palatial compared to your bathroom. There is a pink marble counter and above it you[apostrophe]ve mounted a mirror on the wall. To the right of the mirror is a black glass plate. Between the counter and the shower is a white, porcelain toilet." The aware-description of the bathroom is "The flight control and avionics hub of the ship bristles with controls and readouts related to setting the ship's attitude in space, adjusting the control surfaces in atmospheric flight, and for firing the braking thrusters during the landing sequence." The bathroom can be really-visited. The bathroom is not really-visited. [this is used instead of visited because the mere attempt to go somewhere makes a place visited, whereas what we're interested in is whether it player actually reached the bathroom, so this flag is set as an after-action]

The scent of the bathroom is "nice, with a minty overtone".

The sound of the bathroom is "[if the player is clueless]the nearly imperceptible drone of the bathroom fan, which is supposed to run only when the bathroom surpasses a certain level of humidity or when the heat lamp is on, but which seems to run all the time. If you didn't spend all your time at MARSpace, it's the sort of thing that you'd like to fix around the house[otherwise]chirping and beeping emanating from the flight control console[end if]". 
		
Instead of going towards or exiting when the player is in the bathroom:
	if the player carries the toothbrush or the player carries the plastic box:
		if the player carries the toothbrush:
			say "[if the player is clueless]The last time you walked out of the bathroom with your toothbrush, you never found it again. You toss it on the counter[otherwise]The pit scrubber can only be activated from flight control, so you deaccess it[end if]. [run paragraph on]";
			move the toothbrush to the marble counter;
		if the player carries the plastic box:
			say "[if the player is clueless]The plastic box almost makes it out of the bathroom, but you remember to set it down before stepping out[otherwise]You disengage the object linker and reassign it to the flight console before transferring out[end if]. [run paragraph on]";
			move the plastic box to the marble counter;	
		say paragraph break; 
	continue the action.
	
Instead of going towards when the player is wet and (the noun is the Kitchen or the noun is the Living Room) and the player is clueless:
	say "[dont drip]".
	
Instead of exiting when the player is wet and the player is in the bathroom and the player is clueless:
	say "[dont drip]".
	
To say dont drip:
	say "[if the player is clueless]You are still dripping wet! Before you drench the floor of every room in the cottage, it would make sense to dry off[otherwise]The ablative coating is applied but not polymerized. It requires UV irradiation to cure fully[end if]."
	
Instead of taking TB-TS when the player is in the bathroom:
	say "[if the player is clueless]You are standing just outside the shower[otherwise]The extruder system can be accessed from the adjacent control bay but not from here in flight control[end if]."
	
The marble counter is furniture in the bathroom.  On the marble counter are a toothbrush and a plastic box. The toothbrush and plastic box are props.

The clueless-name of the marble counter is "marble counter". Understand "pink" and "faux" as the marble counter. The aware-name of the marble counter is "flight console". The clueless-description of the marble counter is "A counter of that pink faux marble that is so common in Martian bathrooms.[if something is on the marble counter] On it [is-are a list of things on the marble counter]."  The aware-description of the marble counter is "A fully automated flight control console. [if something is on the marble counter]On it [is-are a list of things on the marble counter]." The marble counter-proxy is an aware-proxy that is part of the marble counter. Understand "flight console" or "console" as the marble counter-proxy. The scent of the marble counter is "like all bathroom counters do: a mixture of soap, perfume, and toothpaste". The texture of the marble counter is "smooth and cool".

The clueless-name of the plastic box is "plastic box". The aware-name of the plastic box is "object linker". The clueless-description of the plastic box is "A small plastic box labeled [quotation mark]Tooth Floss,[quotation mark] with a blue button just below where the floss comes out." The aware-description of the plastic box is "A smooth, glossy grey cylinder with a recessed linkage actuator." The plastic box-proxy is an aware-proxy that is part of the plastic box. Understand "cylinder", "glossy", "grey", "gray", "object", "cylinder" or "linker" as the plastic box-proxy. The scent of the plastic box is "slightly minty". The texture of the plastic box is "like cheap plastic".

The blue button is part of the plastic box.  The clueless-name of the blue button is "blue button". The aware-name of the blue button is "linkage actuator". The clueless-description of the blue button is "A blue plastic button on the side of the ergonomically designed plastic box." The aware-description of the blue button is "A transputer circuit modulating quantum entanglement within the flight control subsystem." The blue button-proxy is an aware-proxy that is part of the blue button. Understand "linkage", "actuator", "circuit" or "transputer" as the blue button-proxy. The scent of the blue button is "[the scent of the plastic box]". The texture of the blue button is "slightly textured to make it easier to press".

The strand of dental floss is an edible prop. It is in Limbo. Understand "light" or "green" or "floss" as the strand of dental floss. The clueless-name of the strand of dental floss is "strand of dental floss". The aware-name of the strand of dental floss is "entangled key pair". The clueless-description of the strand of dental floss is "A strand of pale green dental floss". The aware-description of the strand of dental floss is "A pair of quantum-entangled keys which can be linked transputer control nodes". The strand-proxy is an aware-proxy that is part of the strand of dental floss. Understand "key", "pair", or "keypair" as the strand-proxy. The scent of the strand of dental floss is "overpoweringly minty". The texture of the strand of dental floss is "slightly tacky; perhaps it has something like a wax coating".

Instead of pushing the blue button:
	if the player does not hold the plastic box:
		say "(first [if the player is clueless]taking[otherwise]accessing[end if] [the plastic box])[command clarification break]";
		try silently taking the plastic box;
		if the player does not hold the plastic box:
			the rule fails;
	if the strand of dental floss is in limbo:
		move the strand of dental floss to the player;
		change the outcome-override to force-success;
		say "[if the player is clueless]You grab a strand of light green dental floss as it reels out of the dispenser[otherwise]You push the entanglement key pair onto the stack for rapid retrieval[end if].";
	otherwise:
		say "[if the player is clueless]The plastic box beeps, indicating that it is waiting for you to use the dental floss that it has already dispensed. Never underestimate the intelligence of your average plastic box[otherwise]The object linker flags an error: a quantum entanglement key pair has already been generated[end if]."
		
Instead of touching the blue button:
	try pushing the blue button.
	
Instead of eating the dental floss:
	if the chain is repaired:
		say "[if the player is clueless]You're not so keen on eating anything that has been a functional part of a toilet[otherwise]The object linker is required to bridge the dysfunctional servo in order to actuate the thrust aperture and fire the retros. You defer recycling the object linker until it is it no longer required[end if].";
	otherwise:
		move dental floss to Limbo;
		change outcome-override to force-success;
		say "[if the player is clueless]Mmm. Quite tasty[otherwise]Key pair decohered and ready for regeneration[end if]."
	
Flossing is an action applying to one thing. Understand "floss [something]" as flossing when the player is the acu.

Check flossing:
	if the strand of dental floss is not held by the player:
		if the plastic box is held by the player:
			say "[if the player is clueless]You have the little plastic box that dispenses floss, but no actual dental floss[otherwise]You have the object linker, but have not generated keys[end if].";
		otherwise:[has neither the dispenser nor the floss]
			say "[if the player is clueless]You don't have any floss[otherwise]Before linking anything, you will need to generate a pair of mutually entangled keys[end if].";
		rule fails;
	if the noun is teeth or the noun is Rover:
		continue the action;
	otherwise:
		say "[if the player is clueless]Floss [the noun]? Flossing is for teeth. You could tie the floss to [the noun] if that would float your boat, but that's hardly the same as flossing it[otherwise]The key pair is usually used to link transputational intellinodes within the hull plating. If you want to bind other nodal representations, you should tie the keys to those specific nodes[end if].";
		rule fails.
		
Carry out flossing:
	change outcome-override to force-success;
	move dental floss to Limbo.
	
Report flossing:
	if the noun is Rover:
		say "[if the player is clueless]Rover holds obediently still for the flossing, which he seems to find unaccountably pleasurable. Afterwards, he gleefully chews the floss and swallows it[otherwise]Rover internalizes the keypair[end if].";
	otherwise:
		say "[if the player is clueless]You floss your teeth and then swallow the tasty (and nutritious) floss. You feel so much better now[otherwise]The hull plating is now synchronously enmeshed[end if]."
		
Does the player mean flossing teeth:
	it is very likely.
	
Instead of putting the strand of dental floss on teeth:
	try flossing teeth.
	
Instead of giving the floss to Rover:
	move the dental floss to Limbo;
	change outcome-override to force-success;
	say "[Rover] [if the player is clueless]wads up the floss and chews it loudly before swallowing it[otherwise]integrates the keypair into his neuromatrix[end if]." 

The clueless-name of the toothbrush is "toothbrush".  Understand "brush", "green", "bristle", "bristles", or "sonic" as the toothbrush. The aware-name of the toothbrush is "pit scrubber". The clueless-description of the toothbrush is "A green sonic toothbrush with slightly worn bristles." The aware-description of the toothbrush is "The pit scrubber system appears to be operational. The countless nanobots it contains are dormant until they are released on the skin of the ship to polish out micropits from collisions with microscopic particles during the flight." The toothbrush-proxy is an aware-proxy that is part of the toothbrush. Understand "pit", "scrubber", "nanobot", or "nanobots" as the toothbrush-proxy. The scent of the toothbrush is "strongly of spearmint". The texture of the toothbrush is "unexpectedly warm".

Instead of listening to the toothbrush:
	say "[if the player is clueless]It must be off, because it's silent at the moment[otherwise]The pit scrubber is silent when not activated[end if]."
	
Brushing is an action applying to one thing. Understand "brush [something]" as brushing when the player is the acu.

Check brushing:
	if the toothbrush is not held by the player:
		if the player can see the toothbrush:
			say "(first grabbing the [toothbrush])[command clarification break]";
			try silently taking the toothbrush;
		otherwise:
			say "[if the player is clueless]The first rule of brushing stuff is that you need to have a brush. No brush, no brushing. QED[otherwise]You need to access the pit scrubber first[end if].";
			rule fails;
	if the noun is not teeth:
		say "[if the player is clueless][one of]Your fascination with dental hygiene has gotten out of hand[or]The toothbrush is best used on teeth (hence the name)[or]If you want to brush [the noun] use a [noun]-brush[or]Teeth, sure, [noun], no[in random order][otherwise]Low level failsafes restrict nanobristle distribution to the hull. The pit scrubber cannot be applied to [the noun][end if].";
		rule fails.
		
Carry out brushing:
	change outcome-override to force-success;
	now the teeth are polished.

Report brushing:
	say "[if the player is clueless]The toothbrush sprays each tooth with a fizzy foam, vibrates it into lather and rinses. Your teeth feel smooth and your breath is much improved[otherwise]Nanobristles wake from dormancy and begin reproducing through the ship, sending waves of their progeny across the surface of the ship. The uncountable hordes of microscopic scrubbers oxidize and buff the ship to a brilliant, gleaming silver[end if]."
		
The bathroom floor is privately-named scenery in the bathroom.  Understand "floor", "glass", "ground" or "micropore" as the bathroom floor. The clueless-name of the bathroom floor is "bathroom floor". The aware-name of the bathroom floor is "decking". The clueless-description of the bathroom floor is "The black bathroom floor sparkles thanks to microscopic bits of volcanic glass which ensure that the floor is never slippery, even when wet. The micropores in the floor also ensure that water does not collect for long on the bathroom floor." The aware-description of the bathroom floor is "The deck plating in the flight deck is painted bright yellow." The bathroom floor-proxy is an aware-proxy that is part of the bathroom floor. Understand "yellow", "deck", "plating", or "decking" as the bathroom floor-proxy. The scent of the bathroom floor is "damp, but not moldy". The texture of the bathroom floor is "like ultrafine pumice".

The bathroom walls are privately-named scenery in the bathroom.  Understand "walls" or "wall" as the bathroom walls. The mirror is part of the bathroom walls.  The black plate is a device which is part of the bathroom walls. Understand "wall" as bathroom walls. The scent of the bathroom walls is "slightly of chlorine". The texture of the bathroom walls is "slick, which no doubt helps the walls repel water".

The clueless-name of the bathroom walls is "bathroom walls". Understand "tan", "tiles", "tile", "hexagon" or "hexagonal" as the bathroom walls. The aware-name of the bathroom walls is "panels". The clueless-description of the bathroom walls is "Tan hexagonal tiles cover the walls." The aware-description of the bathroom walls is "Panels with indicators showing the orientation of the ship in space, heading and speed, and other information useful for piloting and landing the ship." The bathroom walls-proxy is an aware-proxy that is part of the bathroom walls. Understand "panel", "panels", "indicator", "indicators", "heading", "speed" or "information" as the bathroom walls-proxy. 
 
The clueless-name of the mirror is "mirror". The aware-name of mirror is "inspector". The clueless-description of the mirror is "[if the mirror is steamed]The mirror is covered with condensation[otherwise]You see yourself in the mirror: a young woman with dark brown hair, high cheekbones and a look of determination[end if]." The aware-description of the mirror is "[if the mirror is steamed]The inspector buffer is full and requires wiping.[otherwise]About this ACU: You are a Burroughs model DT69105 mainframe running version 210LTS of the Flosix Operating System, [quotation mark]Hysterical Hydrax.[quotation mark][end if][paragraph break]". The mirror-proxy is an aware-proxy which is part of the mirror. Understand "inspector" or "buffer" as the mirror-proxy. The mirror can be steamed. The mirror is not steamed. The mirror can be damaged. The mirror is not damaged. The scent of the mirror is "elbakramernu". The texture of the mirror is "perfectly smooth and cold".

Instead of rubbing or pushing the mirror:
	if the mirror is steamed:
		now the mirror is not steamed;
		if the player is clueless:
			say "You wipe away the condensation and can see yourself in the mirror. [run paragraph on]";
			if the player is wet or the player is not wearing the flight suit:
				say "You are ";
				if player is wet: 
					say "wet";
					if player is not wearing the flight suit:
						say " and ";
				if player is not wearing the flight suit:
					 say "naked";
				say ".";
		otherwise:
			say "You calibrate the inspector.";
	otherwise:
		say "[if the player is clueless]It makes a squeaky noise[otherwise]The inspector voltage reference goes low, signaling normal operation[end if]."

Instead of searching the mirror:  
	try examining the mirror.

Understand "look [something]" as searching.

After examining the mirror for the first time:
	if the First Sim is happening or the Second Sim is happening:
		let metatext be "David: Wait, is that memory usage correct?*Janet: Sure, it's fairly conservative. The system has 640 PB available.*David: That's it?*Janet: C'mon, nobody will ever need more than 640 PB.";
		say "[metatext in metaspeak]";

The bathroom ceiling is privately-named scenery in the bathroom. The irradiator is a switched off device which is part of the bathroom ceiling.  

The clueless-name of the bathroom ceiling is "bathroom ceiling". Understand "ceiling" or "roof" as the bathroom ceiling. The aware-name of the bathroom ceiling is "canopy". The clueless-description of the bathroom ceiling is "The bathroom ceiling is slightly concave to promote drainage towards the walls. A heat lamp is mounted in the center of the ceiling." The aware-description of the bathroom ceiling is "The roof of the flight control section is the nose of the ship, containing the RCS thrusters and the equipment that secretes the ablative coating that protects the ship during planetary landings." The bathroom ceiling-proxy is an aware-proxy which is part of the bathroom ceiling. Understand "canopy" or "nose" as the bathroom ceiling-proxy. The scent of the bathroom ceiling is "like the walls, you would think". The texture of the bathroom ceiling is "smooth".

The clueless-name of the irradiator is the "heat lamp". The aware-name of the irradiator is "UV emitter". The clueless-description of the irradiator is "The fresnel lens of a heat lamp is mounted at the apex of the bathroom ceiling." The aware-description of the irradiator is "A series of light-emitting fibers that run through the extruder system. The fibers are [if the irradiator is switched on]energized[otherwise]powered down[end if] at present."  Understand "heat", "lamp", "fresnel", "lens", "heater" or "dryer" as irradiator. The irradiator can be buggy or patched. The irradiator is buggy. The irradiator-proxy is an aware-proxy which is part of the irradiator. Understand "UV", "ultraviolet", "fiber", "fibers", "emitter", "emitters" or "light" as the irradiator-proxy. The scent of the irradiator is "like the bathroom ceiling, you would think". The texture of the irradiator is "as smooth as glass".

Instead of switching on or switching off the irradiator:
	say "[if the player is clueless]You can't reach the heat lamp that is mounted in the ceiling[otherwise]The UV emitter is controlled via the irradiator switch[end if]."

The clueless-name of the black plate is the "black plate". Understand "glass" or "obsidian" as the black plate. The black plate is switched off. The aware-name of the black plate is "irradiator switch". The clueless-description of the black plate is "A glossy black plate that is just to the right of the bathroom mirror." The aware-description of the black plate is "The relay circuit that actuates the UV emitter in the enamel polymerization system." The black plate-proxy is an aware-proxy which is part of the black plate. Understand "irradiator", "switch", "control", "relay", "circuit" or "actuator" as the black plate-proxy. The scent of the black plate is "slightly of ozone". The texture of the black plate is "flat and a bit cool to the touch".

Instead of attacking, pushing, or touching the black plate:
	try switching on the black plate.
	
Before switching on the black plate:
	if the player is not wet:
		say "[if player is clueless]The heat lamp senses that you are not wet. Its power conservation settings prevent it from turning on[otherwise]Monomer and accelerant are not present on the surface of the hull. Powering the irradiator would waste energy[end if].";
		the rule succeeds.
		
After switching on the black plate when the First Sim is not happening:
	if the player is clueless:
		change outcome-override to force-success;
		say "The heat lamp on the ceiling flares to a brilliant red, and you dry in an instant. You now feel fresh and ready to face the day.";
	otherwise:
		if the assault ship distance is 0:
			say "Docking detected. UV irradiator discharge inhibited.";
		otherwise:
			change outcome-override to force-success;
			say "The UV light diffuses over the entire surface of the ship and causes the chemical mixture on the hull to polymerize into a durable, clear ablative coating.";
	if the enamel_pid is 0 and the Second Sim is happening:
		let metatext be "Janet: I was holding my breath there. Looks like our patch worked.*David: I had my fingers crossed too.";
		say "[metatext in metaspeak]";
	now the enamel_pid is the turn count;
	now the player is dry;
	now the black plate is switched off.

The bathroom sink is a privately-named sink in the bathroom.  The clueless-name of the bathroom sink is "bathroom sink". The aware-name of the bathroom sink is "decontamination protocol". The clueless-description of the bathroom sink is "A tiny little sink that probably barely satisfies the building codes." The aware-description of the bathroom sink is "The biohazard response protocol is controlled from here, and it outputs to all areas of the ship." The bathroom sink-proxy is an aware-proxy that is part of the bathroom sink. Understand "decontamination", "sterilization", "biohazard", "response", "system", or "protocol" as the bathroom sink-proxy. The bathroom sink can be depleted. The bathroom sink is not depleted. The scent of the bathroom sink is "ever so slightly of fish. If you had to guess, eels, perhaps". The texture of the bathroom sink is "cool".

The toilet is furniture in the bathroom. 

The clueless-name of the toilet is the "toilet". The aware-name of the toilet is "retro assembly".  The clueless-description of the toilet is "[if the holder of the player is the toilet seat or the holder of the player is the toilet cover]You are sitting on a[otherwise]A[end if] plain vanilla toilet, having a water tank and bowl. Nothing to write home about. [throne status].[paragraph break]A plunger stands next to the toilet, between it and the shower." The aware-description of the toilet is "The retrorocket assembly is an engineering marvel which channels the monumental power output from the fusion reactors to thrusters. That power should slow the ship's descent enough to make a soft landing almost anywhere. [throne status]." The toilet-proxy is an aware-proxy that is part of the toilet. Understand "retro", "retros", "rocket", "retrorocket" or "assembly" as the toilet-proxy. The scent of the toilet is "better than you would have guessed". The texture of the toilet is "cool and rounded".

The water tank is a scenery chest in the bathroom. The tank top is a lid which is part of the water tank. The flapper valve, the lever, and the chain are fixed in place things in the water tank. The silver knob is part of the water tank. The Tank-water is some scenery water in the water tank. The texture of the water tank is "cool".

Does the player mean opening the toilet cover: it is very likely.

Does the player mean doing something with the toilet: it is likely. 

Does the player mean doing something with the tank-water:
	it is likely.
	
Does the player mean opening the tank top:
	it is likely.

Does the player mean closing the toilet cover: it is very likely.
	
Does the player mean doing something with the tank top-proxy:
	it is very unlikely.
	
Does the player mean doing something with the water tank's lid:
	it is very unlikely.
	
Instead of drinking or taking or touching or tasting the tank-water:
	change outcome-override to force-failure;
	say "[if the player is clueless]That is hardly potable[otherwise]The magnetic field is fluxed in space[end if]."

The clueless-name of the tank-water is "water". Understand "water" as the tank-water. The aware-name of tank-water is "fluctuating magnetic field". The clueless-description of the tank-water is "Clear, but still not inviting, water." The aware-description of the tank-water is "Strong, oscillating magnetic fields of unusual complexity." The tank-water-proxy is an aware-proxy that is part of the tank-water. Understand "fluctuating", "magnetic", "field", "oscillating", "flux" or "force" as the tank-water-proxy. The scent of the tank-water is "stagnant".

The clueless-name of the water tank is the "water tank". Understand "porcelain" or "reservoir" as the water tank. The aware-name of the water tank is "plasma constrictor". The clueless-description of the water tank is "A porcelain reservoir containing several liters of water to flush the toilet. On the front of the tank there is a silver knob used to flush the toilet and on the top of the tank there is a lid[if the water tank is open] which has been flipped up[end if]." The aware-description of the water tank is "A ring of supercooled rare earth magnets directs the engine's plasma output into the reaction chamber of the retro assembly. At the top, the plasma constrictor access hatch [if the water tank is open]has been swung open[otherwise]is tightly sealed[end if]."  The water tank-proxy is an aware-proxy which is part of the water tank. Understand "plasma", "constrictor", "ring", "toroid", "magnet", "electromagnet", "rare earth" or "supercooled" as the water tank-proxy. The scent of the water tank is "like stagnant, albeit clean, water".

The clueless-name of the tank top is the "tank lid". Understand "tank" or "lid" or "toilet" as the tank top. The aware-name of the tank top is "plasma constrictor hatch". The clueless-description of the tank top is "A lid made of the same porcelain material as the water tank itself.[if the tank top is open] The lid has been flipped up and you can see into the tank." The aware-description of the tank top is "A hatch providing access to the plasma constrictor ring. [if the tank top is open] The hatch is open allowing access to the inner workings of the plasma constrictor." Understand "lid" as the tank top. The tank top-proxy is an aware-proxy that is part of the tank top. Understand "hatch", "plasma" or "constrictor" as the tank top-proxy. The scent of the tank top is "chalky". The texture of the tank top is "flat on the top".

The clueless-name of the flapper valve is the "flapper valve".  The aware-name of the flapper valve is "thrust aperture". The clueless-description of the flapper valve is "A black rubber valve that seals the bottom of the water tank, allowing the toilet to flush only when it is pulled upward by the chain that connects it to the flush lever." Understand "black" or "rubber" as the flapper valve. The aware-description of the flapper valve is "The most critical component of the retro assembly, and its only moving part, the thrust aperture controls the flow rate of the ship's braking thrusters." The flapper valve-proxy is an aware-proxy that is part of the flapper valve. Understand "thrust", "aperture", or "control" as the flapper valve-proxy. The flapper valve can be raisable. The flapper valve is raisable. The flapper valve can be open. The flapper valve is not open. The scent of the flapper valve is "like vulcanized rubber". The texture of the flapper valve is "fleshy and pliable".

Before pulling the flapper valve:
	try opening the flapper valve;
	the rule succeeds. 

The clueless-name of the chain is the "flush chain". Understand "flush" as the chain. The aware-name of the chain is "thruster linkage servo". The clueless-description of the chain is "A metal chain that [if the chain is intact or the chain is repaired]connects[otherwise]would normally connect[end if] the flush lever to the flapper valve[if the chain is broken]. The chain has rusted away[end if][if the chain is repaired], but has been repaired by a piece of dental floss[end if]." Understand "broken", "rusty", or "rusted" as the chain when the chain is broken. Understand "jury-rigged", "fixed", or "repaired" as the chain when the chain is repaired. The aware-description of the chain is "A servo linkage connects the thruster actuation relay to the thrust aperture. The servo linkage status board shows [if the chain is intact or the chain is repaired]nominal function[otherwise]a fault: there is loss of continuity between the thruster actuation relay and the thrust aperture[end if][if the chain is repaired]. An object linker is in place, bypassing the defective associative relay within the servo linkage[end if]." The chain-proxy is an aware-proxy that is part of the chain. Understand "thruster", "linkage", "servo" or "link" as the chain-proxy. Understand "discontinuous", "dissociated", or "defective" as the chain-proxy when the chain is broken. The chain can be broken or intact. The chain is intact. The chain can be repaired. The chain is not repaired. The scent of the chain is "rusty". The texture of the chain is "light and poorly made, with sharp edges".

Instead of pulling the chain:
	now the flapper valve is open;
	if the player is clueless:
		say "You pull on the [if the chain is broken]small bit of chain attached to the flapper valve[otherwise]chain[end if].";
	otherwise:
		say "You direct an impulse to the [if the chain is broken]servo output, bypassing the defective servo, and directly actuating the thrust aperture[otherwise]servo linkage[end if].";
	try flushing the toilet.
	
Instead of pulling the dental floss when the chain is repaired:
	say "[if the player is clueless]It would be more convenient to use the knob[otherwise]The normal command pathway is directed through the trigger circuit[end if]."

The clueless-name of the lever is the "metapropylene lever". Understand "metapropylene" or "small" as the lever. The aware-name of the lever is "thruster actuation relay". The clueless-description of the lever is "The small white metapropylene lever on the inside of the water tank pivots up and down when the silver knob on the outside of the tank is turned. The lever in turn pulls on the chain that runs down to the flapper valve.[if the chain is broken] Unfortunately, that chain has broken." The aware-description of the lever is "A high power relay attached to the thruster trigger circuit, this device controls the thruster aperture through a servo linkage.[if the chain is broken] Unfortunately, that linkage has been broken." The lever-proxy is an aware-proxy that is part of the lever. Understand "high power", "thruster", "actuation", or "relay" as the lever-proxy. The scent of the lever is "like coconut. You really have to wonder why they'd manufacture a coconut-scented lever, but I guess there's a market for them [italic type]somewhere[roman type]". The texture of the lever is "plasticky".

The clueless-name of the silver knob is the "silver knob". The aware-name of the silver knob is "trigger circuit". The clueless-description of the silver knob is "A silver-plated knob on upper part of the toilet's water tank." The aware-description of the silver knob is "A high-speed circuit connected directly to the flight control system, the  trigger circuit controls the precise timing required to fire the fusion retros during planetary landings." The silver knob-proxy is an aware-proxy that is part of the silver knob. Understand "trigger" or "circuit" as the silver knob-proxy. The scent of the silver knob is "minty. Maybe some toothpaste landed on it". The texture of the silver knob is "more like plastic than metal".

Instead of pushing the lever:
	say "[if the player is clueless]The lever connects through to the silver knob on the outside of the tank. It would be more convenient to use the silver knob[otherwise]The normal command pathway is directed through the trigger circuit[end if]."

Instead of turning the lever:
	try pushing the lever.
	
Instead of pulling the lever:
	try pushing the lever.

Instead of pushing the silver knob:
	if the chain is broken and the chain is not repaired:
		say "The knob pushes down with no resistance.";
	otherwise:
		try flushing the toilet.
	
Instead of turning the silver knob:
	if the chain is broken and the chain is not repaired:
		change outcome-override to force-success;
		say "The knob turns very easily. Indeed, too easily...";
	otherwise:
		try flushing the toilet.
	
Instead of pulling the silver knob:
	say "It's not that kind of knob, it looks like you could push or turn it, though."
	
Instead of inserting something (called the item) into the water tank when the water tank is open:
	if the item is a maintenance droid:
		change outcome-override to force-success;
		continue the action;
	otherwise:
		say "[if the player is clueless]Yuck. You don't really want to put [the noun] in the water tank. You'd have bad dreams about it for a month[otherwise]You realize that placing [a aware-name of the noun] in the plasma constrictor could damage both [the aware-name of the noun] and the finely tuned flow channels within the plasma constrictor itself[end if].";
		the rule succeeds.

Instead of searching the water tank when the water tank is open:
	change outcome-override to force-success;
	if the player is clueless:
		say "The hardware that makes the toilet work can be seen within the tank. A plastic lever goes up and down according to the position of a silver knob on the outside of the tank, pulling on a chain that operates a flapper valve[if the chain is broken] The situation here is slightly more complicated, however, as the chain has rusted through[end if].";
	otherwise:
		say "Inside the plasma constrictor ring, you can trace the control signal from the thruster trigger through the actuation relay [if the chain is broken]but here there is a discontinuity and the signal does not reach[otherwise]and the servo linkage to the[end if] thrust aperture. [if the chain is broken] It looks like the servo linkage has been damaged."

The toilet bowl is an enterable scenery furniture in the bathroom. 

The clueless-name of the toilet bowl is the "toilet bowl". The aware-name of the toilet bowl is the "reaction chamber".  The clueless-description of the toilet bowl is "The white porcelain bowl is the bottom part of the toilet. [throne status]." The aware-description of the toilet bowl is "The fusion output mixes with reactant in the glossy white chamber at the bottom of the retro assembly, just distal to the thrust aperture. [throne status]." The toilet bowl-proxy is an aware-proxy that is part of the toilet bowl. Understand "reaction" and "chamber" as the toilet bowl-proxy. The scent of the toilet bowl is "[one of]much like you might expect it would, which should teach you not to go around smelling toilet bowls in the future[or]just like it did last time. Yech[or]even worse than you remember it[or]unpleasant, and yet somehow addictive. For you at least. Go figure[stopping]". The texture of the toilet bowl is "smooth and round".

Instead of searching the toilet bowl:
	if the toilet cover is closed:
		say "[if the player is clueless]You can't see into the bowl, because the toilet cover is down[otherwise]With the reactant shield secured, you do not have visual access to the reaction chamber[end if].";
	otherwise if the player is postpoop:
		say "[if the player is clueless]There's something in it, but you don't want details[otherwise]Power has been transferred from fusion engines to the retro assembly, and the retros are primed for launch[end if].";
	otherwise:
		change outcome-override to force-success;
		say "[if the player is clueless]You see nothing interesting in the toilet bowl[one of]. You find that comforting, as there are few interesting things that you would want to find in your toilet[or][stopping].[otherwise]The plasma reaction chamber is clear of obstructions.[end if]"
		
Does the player mean inserting something into the toilet bowl:
	it is very likely.
		
Before inserting something into the toilet bowl:
	if the toilet cover is closed:
		say "[if the player is clueless]The toilet cover is down, so you can't reach into the bowl[otherwise]The reactant shield is engaged, sealing off the reaction chamber[end if].";
		the rule succeeds;
	otherwise:
		say "[if the player is clueless]You toy with the idea for a moment,[one of] and indeed when you were a university student, you might very well have considered putting your roommate's [noun] into the toilet, but that was then and this is now. Not that it did you roommate any good[or]but manage to stop yourself on the grounds of general hygiene[stopping][otherwise]You realize that [the aware-name of the noun] could foul the reaction chamber, so you stop[end if].";
		the rule succeeds.

The toilet seat is a flipchair which is in the bathroom. The clueless-name of the toilet seat is the "toilet seat". The aware-name of the toilet seat is "pressure seating". The clueless-description of the toilet seat is "A padded and heated seat, which is presently [if the toilet seat is open]raised[otherwise]in the down position[end if]." The aware-description of the toilet seat is "A black mevolar gasket that ensures a perfect seal between the shield and the reactant chamber. The pressure seating is presently [if the toilet seat is open]not [end if]making a seal with the chamber."  The toilet seat-proxy is an aware-proxy which is part of the toilet seat. Understand "pressure", "seating", "mevolar" or "gasket" as the toilet seat-proxy. The scent of the toilet seat is "like your very own buttocks which are so frequently applied there-upon". The texture of the toilet seat is "like foam rubber".

Instead of searching the toilet:
	try searching the toilet bowl.

The toilet cover is a flipchair which is in the bathroom. The clueless-name of the toilet cover is the "toilet cover". The aware-name of the toilet cover is "reactant shield". Understand "wooden", "wood" , "laminated" or "laminate" as the toilet cover. The clueless-description of the toilet cover is "The cover is made of plastic but has been laminated to give it the appearance of unstained wood. The toilet cover is [if toilet bowl is open]open[otherwise]closed[end if]." The aware-description of the toilet cover is "The neoadamite shield over the reaction chamber is presently [if the toilet bowl is open]not [end if]secured." The toilet cover-proxy is an aware-proxy that is part of the toilet cover. Understand "reactant", "shield", or "neoadamite" as the toilet cover-proxy. The scent of the toilet cover is "like plastic masquerading as wood". The texture of the toilet cover is "completely smooth despite the simulated wood grain appearance".

[The toilet bowl, cover and seat are not part of the toilet because it would great all kinds of problems regarding entering (i.e., sitting) on the toilet -- deflecting the entering action aimed at the toilet to the seat would create a recursive situation, as enter the seat would require entering the parent object, the toilet. Also, entering a part of the toilet or bowl would result in darkness. The solution seems to be to put discrete items into the room, but to make them scenery]

To say throne status:
	if the toilet seat is closed:
		if the toilet cover is closed:
			say "[if the player is clueless]Both the cover and seat are down[otherwise]Both the reactant shield and pressure seating are clamped down";
		otherwise:
			say "[if the player is clueless]The toilet seat is down, but the cover is raised[otherwise]The pressure seating is engaged but the reactant shield is raised";
	otherwise:
		say "[if the player is clueless]Someone left both the cover and seat up. How rude[otherwise]Both the reactant shield and the pressure seating are presently disengaged";
		
Before entering the toilet:
	if the toilet cover is closed:
		try entering the toilet cover;
		the rule succeeds;
	otherwise if the toilet seat is closed:
		try entering the toilet seat;
		the rule succeeds;
	otherwise:
		say "[if the player is clueless]Sitting on the ceramic rim of the toilet bowl would be absolutely too gross to contemplate[otherwise]The mevolar pressure seating is not in place[end if].";
		the rule fails.

Before opening a flipchair (called the flop):
	if the flop is open:
		say "[The flop] is already [if the player is clueless]raised[otherwise]disengaged[end if].";
		the rule fails;
	if the holder of player is a flipchair:
		say "You can't do that while you are [if the player is clueless]on[otherwise]accessing[end if] [the holder of the player].";
		the rule fails;
	otherwise:
		change the outcome-override to force-success;	
		now the flop is open;
		if the toilet seat is open:
			now the toilet cover is open;
		say "You [if the player is clueless]lift[otherwise]disengage[end if] [the flop].";
		the rule succeeds.
		
Before closing a flipchair (called the flop):
	if the flop is closed:
		say "[The flop] is already [if the player is clueless]down[otherwise]in position[end if].";
		the rule fails;
	if the holder of the player is a flipchair:
		say "You can't do that while you are [if the player is clueless]on[otherwise]accessing[end if] [the holder of the player].";
		the rule fails;
	otherwise:
		now the flop is closed;	
		if the toilet cover is closed:
			now the toilet seat is closed;
		say "You lower [the flop] into position.";
		rule succeeds.

After opening a flipchair (called the flop):
	change the outcome-override to force-success;
	say "You [if the player is clueless]raise[otherwise]access[end if] [the flop]."
	
After closing a flipchair (called the flop):
	change the outcome-override to force-success;
	say "You [if the player is clueless]lower[otherwise]raise[end if] [the flop]."
	
Understand "raise [something raisable]" as opening. Understand "lift [something raisable]" as opening when the player is the acu.

Understand "lower [something raisable]" as closing when the player is the acu. Understand "put [something raisable] down" as closing when the player is the acu.

Before entering a flipchair (called the flop):
	if the flop is open:
		say "(first [if the player is clueless]lowering[otherwise]engaging[end if] [the flop])[command clarification break]";
		if the flop is the toilet cover:
			now the toilet cover is closed;
		now the toilet seat is closed;
	if the flop is the toilet seat and the toilet cover is closed:
		say "(first [if the player is clueless]raising[otherwise]disengaging[end if] [the toilet cover])[command clarification break]";
		now the toilet cover is open.
		
Instead of taking the toilet:
	say "That's hardly pottyable."
	
Flushing is an action applying to one thing.  Understand "flush [something]" as flushing when the player is the acu.

Check flushing:
	if the noun is not the toilet:
		if the noun is not the silver knob:
		[did the player try to flush something other than the toilet?]
			say "[if the player is clueless]That would be difficult to explain to the plumber[otherwise]Thruster discharge can only be actuated via the retro trigger circuit[end if].";
			the rule fails;
	if the Landing Sequence is happening:
		[Is the yoke correctly centered?]
		if the plunger is not trimmed:
			say "[one of]You are distracted momentarily. Something just isn't right in the bathroom[or]Before you do so, the plunger catches your attention[or]Maybe you've been reading too much Lovecraft, but the plunger next to the toilet seems to be somehow misshapen and twisted. Its suddenly alien geometry suggests to you that some inchoate force of primordial corruption is reaching from across the stars, gibbering and gyrating contemptibly in the half-formed chaos between the toilet and the shower. Or maybe the eldritch plunger is just tilted a bit[or]There's something odd about the plunger. You forget what you're doing for a moment[or]Something about the plunger next to the toilet disturbs your sense of order[or]Obsess much? The bathroom plunger is not standing up correctly. It's maddening[stopping].";
			the rule fails;
	[Does the mechanism result in the flapper valve lifting?]
	if the chain is intact or the chain is repaired:
		now the flapper valve is open;
	if the flapper valve is closed:[could have been opened directly, by floss or chain at this point]
		say "[if the player is clueless]There is a tinny clanking from within the toilet, but nothing happens[otherwise]You detect a fault in the servo linkage[end if].";
		the rule fails;
	[now, toilet will flush, if there's some business in it]	
	if the ACU is not postpoop:
		now the flapper valve is closed;			
		say "[if the player is clueless]The cottage's EcoSensor inhibits the flush. Water isn't as expensive as it used to be in the International days, but there's no sense in wasting it willy-nilly with unnecessary flushing[otherwise]The retros fail to fire as the system has not been energized[end if].";
		the rule fails.
		
Carry out flushing:
	change outcome-override to force-success;
	now the flapper valve is closed;
	now the ACU is prepoop;
	if the location of the white egg is nowhere:
		now the landing_pid is 0;
	otherwise:
		now the landing_pid is the turn count.
	
Report flushing:
	if the location of the white egg is nowhere:
		say "You actuate the retro trigger circuit and fire all thrusters in synchrony. The surface of the planet around the ship vanishes in a cloud of plasma, and the ship slams through the thin, dusty atmosphere towards space.[paragraph break]When you reach orbit, you plot a course towards Mars, extend the Casimir Drive, arm the proximity alert system and enter stand-by mode.[paragraph break]The futon is comfortable and you are tired.";
		now the player is sleepwalking;
	otherwise:
		say "The cottage???s aging plumbing rumbles and vibrates as the toilet flushes."
		
Before opening the flapper valve:
	[as a before rule since the flapper valve isn't technically openable]
	say "You [if the player is clueless]reach in to lift the black rubber valve at the bottom of the toilet[otherwise]bypass intermediate actuation circuitry and directly trigger the thrust aperture[end if].";
	now the flapper valve is open;
	try flushing the toilet;
	the rule succeeds.
	
Instead of exiting or standing when holder of the player is the toilet seat:
	move the player to the bathroom, without printing a room description;
	[otherwise, the location of the player remains the toilet seat]
	if the player is clueless:
		say "You stand up again[if the player is postpoop], although you are uncomfortably aware that you have left some, shall we say, [quotation mark]unresolved[quotation mark] business behind you[end if].";
	otherwise:
		say "You release the seal on the mevolar gasket."
	
Instead of entering a flipchair (called the flop):
	change the outcome-override to force-success;
	move the player to the flop, without printing a room description;
	say "You sit on the [flop]."

The plunger is furniture in the bathroom. The [john] shaft and the red rubber cup are part of the plunger.

Definition: The plunger is trimmed if the roll is zero and the pitch is zero and the yaw is zero.

The clueless-name of the plunger is "plunger". The aware-name of the plunger is "attitude control". The clueless-description of the plunger is "A common plumber's plunger, consisting of a wooden shaft and red rubber cup. [yoke position]." The aware-description of the plunger is "An integrated system for controlling the pitch, roll, and yaw of the ship through the nose cone RCS thrusters. Currently, pitch is [pitch] degrees, roll [roll] degrees and yaw [yaw] degrees." The plunger-proxy is an aware-proxy that is part of the plunger. Understand "attitude", "control", or "RCS" as the plunger.  The plunger can be yanked. The plunger is not yanked. The scent of the plunger is "like it is brand new". The texture of the plunger is "sturdy. This was your grandpa's plunger. From back when the made plungers to last".

Notyoking is an action applying to one thing. Understand "right [something]" or "straighten [something]"  or "reposition [something]" or "adjust [something]" as notyoking.

Check notyoking:
	if the noun is the plunger:
		say "[if the player is clueless]It occurs to you that it would be a simple matter of pushing the plunger left or right and perhaps twisting it this way or that[otherwise]Sequential input of discrete vector adjustments applying to orthogonal axes are required[end if]." instead;
	otherwise:
		say "[if the player is clueless]Please be more specific[otherwise]More specific input required[end if]." instead.

Instead of taking the plunger:
	if the player is clueless:
		if the plunger is not yanked:
			say "Since the day Tomasz jammed the plunger down on the bathroom floor, it has been stuck there like a barbed harpoon in the side of a great whale. Well, maybe more like a giant squid wrapped around an unfortunate whale, since squids have (you have heard) suckers. Some kind of weird interaction between the rubber cup and the micropores in the floor have effectively bonded the plunger to the floor, and any attempt to remove it would probably destroy one or the other. The plunger doesn't really bother you, and most of the time you just ignore it."; 
			now the plunger is yanked;
		otherwise:
			say "Nah. You like it where it is. It kind of reminds you of Tomasz, and his efforts at home repair that never quite went right.";
	otherwise:
		say "Disarticulating the attitude control would be counterproductive."
		
Before pushing or pulling or turning the plunger:
	say "It's stuck to the floor. On the other hand, if you want to push or twist it in a particular direction, just say so.";
	the rule succeeds. 
	
Before pushing or pulling the shaft:
	say "The shaft is firmly attached to the red plunger cup which has been stuck to the floor since you were allocated the cottage. If you want to yank the handle in any particular direction, just say so.";
	the rule succeeds.

The clueless-name of the shaft is "shaft". The aware-name of the shaft is "vector input port". The clueless-description of the shaft is "A smooth wooden stick. A red rubber cup attached to the end of the stick is stuck to the bathroom floor." The aware-description of the shaft is "A multiaxial control device that outputs ship orientation instructions to the nose cone drivers." Understand "handle" or "stick" as the shaft. The shaft-proxy is an aware-proxy that is part of the shaft. Understand "vector", "input", or "port" as the shaft-proxy. The scent of the shaft is "of cedar". The texture of the shaft is "like smooth wood".

The clueless-name of the red rubber cup is the "red rubber cup". The aware-name of the red rubber cup is the "nose cone driver". The clueless-description of the red rubber cup is "The business end of the plunger.[if a random chance of one in eight succeeds] [quotation mark]Exterminate! Exterminate![quotation mark]". The red rubber cup-proxy is an aware-proxy that is part of the red rubber cup. Understand "nose", "cone", or  "driver" as the red rubber cup-proxy. The scent of the red rubber cup is "like bubblegum[one of]. You hadn't expected that at all[or][stopping]". The texture of the red rubber cap is "like thick rubber, flexible but firm".

To say yoke position:
	if the player is clueless:
		if the pitch is zero and the roll is zero and the yaw is zero:
			say "The plunger stands perfectly straight, just the way you like it"; 
		otherwise:
			say "Something about the plunger just doesn't look proper. The handle of the plunger is ";
			if the pitch is not zero:
				say "tilted [magnitude of pitch] [if the pitch is greater than zero]backwards[otherwise]forwards[end if]";
				if the roll is not zero:
					say " and it's also [run paragraph on]";
			if the roll is not zero:
				say "leaning [magnitude of roll] to the [if the roll is greater than zero]right[otherwise]left[end if]"; 
			if the yaw is not zero:
				if pitch is not zero or the roll is not zero:
					say ". Furthermore, its handle is ";
				say "twisted [magnitude of yaw] [if the yaw is less than zero]counter[end if]clockwise".
							
To say magnitude of (degrees - a number):
	if degrees is less than zero:
		now degrees is degrees times -1;
	if degrees is greater than 180:
		say "error - angle magnitude out of limits";
		[for debuggage only -- bad orc, exceeded pi]
		rule fails;
	say the Inclination corresponding to the Angle of degrees in the Table of Orientations.

Yoking it more is an action applying to one thing and one visible thing.

Check yoking it more:
	if the noun is the shaft:
		now the noun is the plunger;
	if the noun is not the plunger:
		try pushing the noun.
		
Carry out yoking it more: 
	let A be the axis corresponding to the custom-direction of second noun in the Table of Axes;
	let D be the delta corresponding to the custom-direction of second noun in the Table of Axes;
	let O be zero;
	if A is 1:
		let O be the pitch;
		now pitch is pitch plus 60 times D;
		now the pitch is the limited pitch range;
		now last-noun is "PITCH VECTOR";
		now last-yoke is (the absolute value of O) minus (the absolute value of the pitch);
	otherwise if A is 2:
		let O be the roll;
		now roll is roll plus 60 times D;
		now the roll is the limited roll range;
		now last-noun is "ROLL VECTOR";
		now last-yoke is (the absolute value of O) minus (the absolute value of the roll);
	otherwise if A is 3:
		let O be the yaw;
		now yaw is yaw plus 60 times D;
		now the yaw is the limited yaw range;
		now last-noun is "YAW VECTOR";
		now last-yoke is (the absolute value of O) minus (the absolute value of the yaw).
		
Report yoking it more:
	let A be the axis corresponding to the custom-direction of second noun in the Table of Axes;
	let D be the delta corresponding to the custom-direction of second noun in the Table of Axes;
	let the angle be the pitch;
	say "You adjust the plunger handle [second noun]. [run paragraph on]";
	if A is 1:
		let the angle be the pitch;
	otherwise if A is 2:
		let the angle be the roll;
	otherwise if A is 3:
		let the angle be the yaw;
	if the angle is 180 times D:
		say "It doesn't look like it will move any farther in that direction. [run paragraph on]";
		change outcome-override to force-failure;
	if last-yoke is less than zero:
		say "[one of]Oh no! You've made it even worse[or]Hmm. That was a step in the wrong direction[or]No, that only made matters worse[or]The plunger looks even worse now[or]You know, [the plunger] actually looked better before[or]Nope. It looks even worse now[or]The [plunger] is even more disturbing now[in random order].[paragraph break]";
	otherwise if last-yoke is zero:
		say "[one of]It doesn't look worse, but it also doesn't look any better now[or]At least you haven't made the situation any worse[or]It looks exactly the way it did before you tried to mess with it[or]It didn't budge[or]Maybe you could try moving [the plunger] the other way[in random order].[paragraph break]";
	otherwise:
		say "[one of]Ah, that's better[or]You breathe an aesthetic sigh of relief[or]Certainly, a step in the right direction[or]That helped[or]That improved the situation[or]The [plunger] is now less offensive to your artistic sense of space and proportion[or]Your obsessive compulsive inner person does a happy dance as you move the [plunger] in a good direction[in random order].[paragraph break]";
	say "[yoke position]."
		
To decide what number is the absolute value of (measured - a number):
	if measured is not less than zero:
		decide on measured;
	if measured is less than zero:
		let measured be measured * -1;
	decide on measured.

To decide what number is the limited (measured - a number) range:
	if measured is greater than 180:
		let measured be 180;
	otherwise if measured is less than -180:
		let measured be -180;
	decide on measured.
	
Table of Axes
custom-direction		axis			delta				
forwards					1[pitch]		-1
backwards					1			 	1
leftwards					2[roll]			-1
rightwards				2			 	1
counterclockwise		3[yaw]			-1
clockwise					3				1

Table of Orientations
Angle		Inclination
0				"perfect"
60				"a little bit"
120				"half-way"
180				"completely"

Understand "push [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "pull [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "twist [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "turn [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "spin [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "yank [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "tilt [something] [a custom direction]" as yoking it more when the player is the acu.
Understand "lean [something] [a custom direction]" as yoking it more when the player is the acu.
	
The shower is privately-named. Understand "shower" as the shower when the player is the ACU. The clueless-name of the shower is "shower". The aware-name of the shower is "extruder". The shower can be a new experience. The shower is a new experience. The aware-description of the shower is "The extruder delivers activated enamel solution to the surface of the ship through a fluidics network where it hardens into an ablative coating." The clueless-description of the shower is "[if the player is not wearing the flight suit]You are in your shower and water of just the right temperature is spraying down on you. [end if]Two buttons are molded into the wall of the shower stall. One is labeled [quotation mark]soap,[quotation mark] and the other, [quotation mark]shampoo.[quotation mark] [if the player is wearing the flight suit]The shower has not activated because you are still wearing clothes.[end if]". The shower can be sprayed. The shower is not sprayed.

The scent of the shower is "[the scent of the shower walls]".

The sound of the shower is "[TS-sound]".

To say TS-sound:
	if the player is clueless:
		if the player is wearing the flight suit:
			say "an occasional drip, but little else";
		otherwise:
			say "the teeming beat of the water as it falls";
	otherwise:
		say "the faint beeping of systems over in the flight control section"

Every turn when the player is in the shower:
	if the player is self-aware and the player is not wearing the flight suit:
		now the player is wet;
		now the mirror is steamed;
	otherwise: [clueless]
		if the player is wearing the flight suit:
		[this text is likely to be seen by first time players who would not know beforehand to take off their flight suit when entering the shower] 
			if shower is a new experience and (the First Sim is happening or the Second Sim is happening):
				now the shower is not a new experience;
				let metatext be "David: I should probably check on the Casimir Drive harmonic suppressor; it still isn't stable.*Janet: I'd like you to see everything.*David: Well... If you think so....*Janet: I do -- I need you to sign off budget authorization on the ACU before we burn it to firmware.*David: Oh.";
				say "[metatext in metaspeak]";
		otherwise:
			now the player is wet;
			now the mirror is steamed;
			if the player carries the dental floss:
				say "[if the player is clueless]The dental floss melts instantly in the warm shower[otherwise]The entangled key pair decoheres in the extruder[end if].[paragraph break]";
				move the dental floss to Limbo;
			if the player carries the dog treat and the player is clueless:
				say "Rover's dog treat remains surprisingly crisp despite the shower.[paragraph break]";
			if the shower is not sprayed:[sprayed triggers following metatext]
				now the shower is sprayed;
				let metatext be "David: Janet, I...*Janet: David, if it were anyone but you, I would have a problem. Just let it go.*David: Anyone else? Like who?*Janet: Can we get back to the program?*David: Okay, I'm paying attention.*Janet: Obviously.";
				say "[metatext in metaspeak]".
		
Instead of taking off the flight suit when the player is clueless and the player is in the shower:
	say "Your flight suit would get soaked if you took it off in here."
		
Instead of going towards when the player is in the shower and the player is clueless:
	if the player is wearing the flight suit:
		continue the action;
	if the player is not wearing the flight suit:
		if the soap button is pressed and the shampoo button is pressed:
			continue the action;
		otherwise:
			if the soap button is unpressed:
				say "[one of]Leaving the shower without washing? What's the point?[or]But you're still feeling grimy. A little soap would fix that right up.[or]As Tomasz used to point out, a little soap goes a long way.[in random order]";
				the rule succeeds;
			if the shampoo button is unpressed:
				say "Your hair will be an unmanageable rat's nest for the rest of the day if you don't shampoo it."

The soap dispenser and the shampoo dispenser are scenery in the shower. The shower walls are scenery in the shower. Understand "wall" as shower walls. The soap button is part of the shower walls. The shampoo button is part of the shower walls.

The clueless-name of the soap dispenser is "soap dispenser". The aware-name of the soap dispenser is "ablative enamel injector". The clueless-description of the soap dispenser is "The soap button is molded into the wall of the shower stall." The aware-description of the soap dispenser is "A high pressure injector which delivers the solution to the extruder system for mixing with accelerant." The soap dispenser-proxy is an aware-proxy that is part of the soap dispenser. Understand "ablative", "neoadamite", "monomer", "precursor", "solution", "injector", "high", or  "pressure" as the soap dispenser-proxy. The soap dispenser can be damaged. The soap dispenser is not damaged. The scent of the soap dispenser is "like soap. Not surprisingly".

Instead of taking the soap dispenser:
	say "You recall that to get some soap, you need only touch the dispenser."
	
Instead of taking the shampoo dispenser:
	say "You recall that to get some shampoo, all you need to do is touch the dispenser."

The clueless-name of the shampoo dispenser is "shampoo dispenser". The aware-name of the shampoo dispenser is "accelerant pump". The clueless-description of the shampoo dispenser is "The button for the shampoo dispenser is right next to the one for the soap dispenser". The aware-description of the shampoo dispenser is "A solenoid pump that delivers a catalyst to the extruder system for mixing with monomer solution." The shampoo dispenser-proxy is an aware-proxy that is part of the shampoo dispenser. Understand "accelerant" ,"pump", "solenoid", or "catalyst" as the shampoo dispenser-proxy. The shampoo dispenser can be damaged. The shampoo dispenser is not damaged. The scent of the shampoo is "like the honey-scented shampoo that you prefer".

The clueless-name of the shower walls is "walls". The shower walls are privately-named. The aware-name of the shower walls is "fluidics network". The clueless-description of the shower walls is "The walls of the shower are made of slick white plastic. Two buttons are on the wall, one marked [quotation mark]soap,[quotation mark] and the other, [quotation mark]shampoo.[quotation mark][paragraph break]". The aware-description of the shower walls is "A distribution network of tubes, pumps, and valves that runs throughout the ship, just under the outer hull." The shower walls-proxy is an aware-proxy that is part of the shower walls. Understand "wall", "walls", "fluidics", "network" , "tubes", "valves" or "pumps" as the shower walls-proxy. The scent of the shower walls is "of soap, shampoo, and chlorine". The texture of the shower walls is "smooth and a little slippery".

Before switching on or switching off the TS:
	say "[if the player is clueless]The shower is fully automated and adjusts temperature, pressure, and direction of the water stream as needed[otherwise]The fluidics network is slaved to the ships autonomic network and activates automatically, as needed[end if].";
	the rule succeeds.
	
The clueless-name of the shampoo button is "shampoo button". Understand "yellow" as the shampoo button. The aware-name of the shampoo button is "accelerant release". The clueless-description of the shampoo button is "A small yellow button on the wall of the shower. It is marked [quotation mark]Shampoo.[quotation mark][paragraph break]". The aware-description of the shampoo button is "A monostable vibrator operating the accelerant solenoid." The shampoo button-proxy is an aware-proxy that is part of the shampoo button. Understand "monostable", "vibrator", "accelerant", or "release" as the shampoo button-proxy. The shampoo button can be pressed or unpressed. The shampoo button is unpressed. The scent of the shampoo button is "[scent of the shampoo dispenser]".

The clueless-name of the soap button is "soap button". Understand "green" as the soap button. The aware-name of the soap button is "enamel release". The clueless-description of the soap button is "A small green button on the wall of the shower. It is marked [quotation mark]Soap.[quotation mark][paragraph break]". The aware-description of the soap button is "The enamel release enable signal." The soap button-proxy is an aware-proxy which is part of the soap button. Understand "enamel", "release", or "signal" as the soap button-proxy. The soap button can be unpressed or pressed. The soap button is unpressed. The scent of the soap button is "[scent of the soap dispenser]".

Before switching on the soap dispenser:
	try pushing the soap button instead.
	
Before switching on the shampoo dispenser:
	try pushing the shampoo button instead.
	
Before switching off the soap dispenser:
	say "You recall that after dispensing soap, the dispenser turns off automatically." instead.
	
Before switching off the shampoo dispenser:
	say "You recall that after dispensing shampoo, the dispenser turns off automatically." instead.

Instead of pushing or touching the soap dispenser:
	try pushing the soap button.
	
Instead of pushing or touching the shampoo dispenser:
	try pushing the shampoo button.
	
Instead of pushing or touching the soap button:
	if the black plate is in Limbo:
		say "The ablative enamel system is not functioning. UV irradiator node 100% failure.";
	if the player is wearing the flight suit:
		say "[if the player is clueless]You can't lather up while wearing your flight suit[otherwise]The quantum isolator is interfering with emission of the monomer[end if].";
		the rule succeeds;
	otherwise:
		if the player is clueless:
			change the outcome-override to force-success;
			if the First Sim is happening:
				say "A stream of hot, pearlescent white soap is ejected forcefully from the throbbing button, and pools in your hand. You rub it over your entire body with wanton abandon and then rinse it off.";
			otherwise:
				say "A soapy paste is dispensed from the button, and you lather up.";
		otherwise:
			if the assault ship distance is greater than 0:
				change the outcome-override to force-success;
				say "The ablative enamel monomer solution spreads quickly over the ship's hull.";
			otherwise:
				say "Docking detected. Secretion of enamel monomer suppressed.";
		if the soap button is unpressed:
			now the soap button is pressed;
			if the First Sim is happening:
				let metatext be "David: No comment.*Janet: I don't know what I was thinking when I wrote that.";
				say "[metatext in metaspeak]";
			otherwise if the Second Sim is happening:
				let metatext be "David: That was my favorite part! Why did you rewrite it?*Janet: I thought it might be too distracting for the ACU.";
				say "[metatext in metaspeak]".
	
Instead of pushing or touching the shampoo button:
	if the black plate is in Limbo:
		say "The ablative enamel system is not functioning. UV irradiator node 100% failure.";
	if the player is wearing the flight suit:
		say "[if the player is clueless]You don't want to get shampoo all over the flight suit[otherwise]The accelerant ejection system is dampened by the quantum isolator[end if].";
	otherwise:
		if the player is clueless:
			change the outcome-override to force-success;
			say "You wash your hair. It no longer feels like a straw-encrusted swarm of [one of]yellow[or]red[purely at random]-headed tommygoffs.";
		otherwise:
			if the assault ship distance is greater than 0:
				change the outcome-override to force-success;
				say "Catalyst solution is spread uniformly over the ship's hull.";
			otherwise:
				say "Docking detected. Secretion of enamel accelerant suppressed.";
		if the shampoo button is unpressed:
			now the shampoo button is pressed;
			if the Second Sim is happening:
				let metatext be "Janet: David, what???s the ablative coating for? I thought that most of that planet???s atmosphere had been cooked off long ago.*David: Not really my department. Maybe it???s supposed to help with the heat.*Janet: I???ve heard temps up to 1000 Kelvin?*David: In that ballpark. They think the probe impacted on the star-facing side of the planet. Estimates put the surface temp there between 800 and 1200 K.";
				say "[metatext in metaspeak]".

Chapter The Planet

The Planet Area is a region. The Front Yard, The Barren Plain, The Dug-Up Field, The Smoking Pit, The Featureless Desert, and The Strange Porch are outside rooms in the Planet Area.

The ground is a backdrop in the Planet Area.  The description of the ground is "Light-colored soil, with many small rocks and pebbles." The scent of the ground is "chalky and dry, not moist and grassy like usual". Understand "soil", "rocks", "pebbles", "terrain", "land", "landscape", "area", "region", "sector", "dirt", "field" or  "surroundings" as the ground. The aware-name of the ground is "terrain". The texture of the ground is "sandy and rough".

To say inconsequential outside detail:
	say "[one of][or]. The wind picks up, making it even more difficult to see[or]. A gust of wind lifts a sheet of dust and rains it down on you[or]. Dust spins in the air[or]. Ominous clouds of dust loom on the ever-darkening horizon[or]. The sky rumbles and rolls, and flashes of lightning snap between billowing clouds of dirt-colored dust[or]. The ground shakes forcefully[as decreasingly likely outcomes]"

The description of the front yard is "The scent of your house is strong here, and you are right next to its front door. You can't see far because it is so dusty here[inconsequential outside detail]." The printed name of the Front Yard is "Front Yard".  The scent of the Front Yard is "like the outdoors". 

The home is a backdrop in the front yard. Understand "house", "home", "base" or "cottage" as home. The description of home is "Home sweet home, where Janet lives, where you get fed, and where you sleep. Even out here, the smell of home is comforting." The scent of home is "like food, and love, and the best place to be when you're not running around outside." The aware-name of home is "base". The texture of home is "just right".

Before entering home:
	try going towards the Living Room;
	change the last-noun to "OPERATIONS";
	the rule succeeds.
[as both the backdrop and living room are understood as "home", and otherwise the backdrop would interfere with going home from the front yard.]

The Barren Plain is west of the Front Yard. A rock is a prop in the Barren Plain. The scent of the barren plain is "dry and stale".

The clueless-name of the rock is "rock". The aware-name of the rock is "iron ore". The clueless-description of the rock is "[if the player is rover]You taste the rock. Not edible. Not a bone. Not interesting.[otherwise]A fist-sized rock that Rover brought in."  The aware-description of the rock is "A black 800 kilogram chunk of poor quality iron ore." The rock-proxy is an aware-proxy that is part of the rock. Understand "black", "ore", "iron", or "lump" as the rock. The scent of the rock is "slightly sweet". The indefinite article of the rock is "a lump of". The texture of the rock is "irregular, mostly smooth with some rough patches".

Dug-Up Field is west of the Barren Plain. The description of the dug-up field is "A dug-up field pockmarked by small holes and accompanying mounds of dirt." The scent of the dug-up field is "of freshly turned soil".  

Some paw marks are fixed in place things in the dug-up field.  Understand "prints", "impression", "imprints", "mark", or "tracks" as paw marks. The description of the paw marks are "Paw marks from a medium-sized dog. From the look of the field, they must belong to a dog that either likes digging or was trying to find something important buried around here." The aware-name of the paw marks are "bulldozer tracks".   The scent of the paw marks is "reminiscent of the sweet perfume of a lady dog out for a stroll". The texture of the paw marks is "like the ground. The paw marks are not very deep".

Some mounds are scenery in the dug-up field. Understand "mound", "pile", "piles", "dirt", "hill", "hills" as the mounds. The description of the mounds is "Small piles of dirt standing next to the holes that dot this field." The scent of the mounds is "no different from the dust that is in the air, just less, well, dusty". The aware-name of mounds is "mounds". The texture of the mounds is "slightly raised".

Some divots are scenery in the dug-up field. The printed name of the divots is "holes". Understand "hole", "holes", "excavation", or "excavations" as divots.  The description of the divots is "An apparently haphazard pattern of excavated holes in the ground. None of them are very impressive." The scent of the divots is "like the ground, just more so". The aware-name of the divots is "excavations". The texture of the divots is "not very deep".

Before inserting something (called the item) into the divots:
	say "The holes are not large enough to hold [the item].";
	the rule fails.

Instead of looking in the divots:
	say "The holes in this field aren't very big, and it doesn't look like there's anything in them."
	
Before entering the divots:
	say "The holes are too small climb into.";
	the rule fails.
	
Before entering the mounds:
	say "The mounds are not very high, and standing on top of the mound doesn't really improve the view.";
	the rule fails.

Before going down when the location is the dug-up field:
	say "The holes scattered around this area were dug very quickly, but shallowly. You wouldn't fit into any of them.";
	the rule fails.

The Smoking Pit is west of the Dug-Up Field. The description of the Smoking Pit is "A long, dark furrow scars the ground in this part of the park." The scent of the smoking pit is "like burnt marshmallows".

A long furrow is an enterable hole in the Smoking Pit. Understand "trench" or "hole" as the long furrow. The description of the long furrow is "On your muzzle, you can feel heat radiating from the furrow walls, which are shiny and black. On the walls and floor of the trench, you can see some scratches that look like they could have been made by dog paws." The carrying capacity of the furrow is 2. The scent of the furrow is "like freshly poured tar". The aware-name of the long furrow is "trench".

Instead of climbing when the player is in the long furrow:
	try exiting.
	
Instead of going up when Rover is in the furrow:
	try exiting.
	
Rule for printing room description details of the long furrow:
	stop.

The furrow walls are scenery. They are plural-named. They are part of the furrow. The description of the furrow walls is "The walls and the floor of the furrow are hard and shiny, more like glass. At places, the shiny layer has cracked and peeled off, and you can see dirt behind it. There are scratches on the walls and floor, long grooves that have somehow hardened like the walls themselves." Understand "wall", "walls", "floor", "dirt", "soil", "earth", "ground", "crater", "ditch", "excavation", "black", "shiny", "trench" or "glass" as the furrow walls. The aware-name of the furrow walls is "trench". The texture of the furrow walls is "quite warm".

Instead of looking when Rover is in the furrow, say "[the description of the furrow walls][paragraph break]".

The grooves are a backdrop in the Smoking Pit. Understand "groove", "scratch" or "scratches" as the grooves. The description of the grooves is "Parallel scratches in the hardened soil, just the right shape and spacing to suggest a fellow canine digging for something here." The scent of the grooves is "strongly of charred earth, but there is also a certain lingering suggestion of the perfume that might be worn by a high-born lady". The aware-name of grooves is "grooves". The texture of the grooves is "like long, linear, sharp striations in the burnt earth".

The Featureless Desert is west of the Smoking Pit. The description of the featureless desert is "A wide-open plain extends in all directions, as far as the dust permits you to see. It sure would be easy to get lost in this part of the park." The scent of the Featureless Desert is "barren and lifeless". 

The female dog is a female animal in the Featureless Desert. He is carrying the delicious bone. The delicious bone is a prop. Understand "female", "dog", "girl", "beautiful", "pretty", "hot", "babe", "chick", "lady", "graceful", "noble", "alluring", "seductive", "athletic" or "bitch" as the female dog. 
[Some of these synonyms are, as they say in the computer biz, deprecated.]

Understand "park" as The Smoking Pit when the player is Rover.

The scent of the female dog is "[one of]sweeter than the marrow of the tastiest bone[or]heavenly, like the essence of dogly beauty distilled to a few drops and sprayed at nose-level on everything in sight[or]at once exquisite and unpretentious, unattainable and everyday, wild and yet somehow timid. She is a complex dog[or]fetching, in the way that a stick isn't[or]wonderful[stopping]".

The clueless-description of the female dog is "[one of]Your heart catches in your throat as you stand in her glorious presence. Graceful, athletic, and possessed of a noble bearing, she smites you with a glance down her long, fine muzzle[or]Your eyes are drawn to her perfectly rounded shoulders and haunches, her long arcing tail, and her soft, pendulous ears. You avert your gaze so as not to appear overly forward[or]You glance at her slyly while pretending to survey the ground near her feet. The fine columns of her legs rise magnificently from the ground, standing proudly atop her perfectly trimmed paws. The fur on her legs is bristly, and you wonder what it would be like to rub against it. Distractedly, your gaze drifts over her until a blowing clod of dust ricochets off your head, cutting short your reverie[or]She remains silent and statuesque, but you sense that she quietly harbors the same feelings for you, but is afraid to admit it to herself. Perhaps she has had some past history, a bad master, an unrequited episode of puppy love, but none of that matters. You catch her eye for just a fraction of a second and teeter on the edge of a bottomless cavern as you are drawn deeper and deeper into the depths of her dark, beckoning eyes. You think you have shared something special with her. Not wanting to push her too far, too fast, you gather your strength and turn your head virtuously away[or]As you once again regard her grandeur, you catch her looking at you. Not directly at you, more at the horizon, but clearly, she was looking you over. Your heart races to know that your initial impression was right, her feelings for you run like an underground stream coursing through a mountain, just below the surface, where they wait to be tapped like a geyser. Her resolve and self-control are astounding[or]A beautiful female dog[stopping].[if the female dog carries the delicious bone] In her [one of]sweet[or]angelic[or]sultry[or]alluring[or]toothsome[or]luscious[or]tempting[or]amorous[or]sensual[in random order] mouth, she is [one of]daintily[or]elegantly[or]agilely[or]seductively[or]coquettishly[or]flirtatiously[or]provocatively[in random order] carrying a bone[one of] almost as big as she is[or][stopping]." The aware-description of the female dog is "A modified ten-ton bulldozer." The clueless-name of the female dog is "female dog". The aware-name of the female dog is "robotic bulldozer". The female dog can be seeking. The female dog is not seeking.

Times-kissed is a number that varies. Times-kissed is 0.

Instead of entering a person (called the target):
	say "You are already close enough to [the target]."

Instead of attacking the female dog:
	say "[one of]Hurt her? The object of your desire? The dog of your dreams? She who holds your very heart in her tender paws? Better that you would go without dog chow for a week or be locked for all eternity in a kennel than to bear that thought. No, the way with women is to charm them. A careful word, a shrewd compliment, some clever banter -- that is the way to win her over[or]You don't know how you could even entertain the idea of harming such a sweet and vulnerable young lady. No, you have a responsibility to her to protect her and shield her from all harm that may come her way. You are no wolf, but a dog, a refined creature of manners and customs that distinguish and elevate you above the more base species. A few kinds words are all that you need to turn her affections in your direction, a far finer victory than could be achieved by paws and teeth[or]To throw yourself at her in that manner would be unthinkably gauche[or]You would rather swallow your own tail[or]You wouldn't dare[stopping]."
	
Instead of taking, pushing or pulling the female dog:
	say "[one of]At this stage of your relationship, that would seem too forward. No, it's better to bide your time and get to know her a little. Some chit-chat, maybe a little butt sniffing, nothing serious.[paragraph break]You tried rushing things too much last year with the Yorkie from across the Park, and that ended in disaster (granted, she was neurotic and was carrying a lot baggage from her last relationship, but still)[or]You don't know her well enough[stopping].";
	
Instead of giving something (called the item) to the female dog:
	if the player holds the item:
		if the item is the delicious bone:
			say "Her lips curve around the bone, and slowly your muzzles part. Her sultry breath curls your whiskers as you withdraw. For several minutes, you can think of nothing else. She is similarly silent, no doubt similarly transported by the intimacy of the moment.";
			now the female dog is not seeking;
			now the female dog carries the delicious bone;
			change outcome-override to force-success;
		otherwise:
			say "The [item] does not impress her, and it falls to her feet. No doubt she has many suitors.";
			move the item to the location;
	otherwise:
		say "You can only give away something that you have. You don't have [the item]."
		
Understand "her legs", "her leg", "her fur", "her bristly fur", "her bristly leg fur", "her furry legs", "her furry leg", "legs", "fur", "leg" as the female dog when Rover can see the female dog.
		
Instead of touching, petting, searching, or rubbing the female dog:
	change outcome-override to force-success;
	say "[one of]You're more at the sniffing and posturing stage[or]You're not even on your second date with her! Better keep your paws to yourself[or]You'd rather give her a chance to make the first move[or]You get the impression that she's not ready for that[or]You start to, but then you lose the nerve[or]You shift a little closer to her and nonchalantly drape your tail near her, but a gust of wind pushes it away[in random order]."
	
Instead of taking the delicious bone when female dog carries the delicious bone:
	say "[one of]It is a nice bone...but how would she feel if you just took it? She might find that playful, but then again, she might take it the wrong way. She might like resent such a bold move, uninvited. On the other hand, she could be secretly wishing that you'd make the first move. It might be just the right thing. It could also be a dreadful mistake though. You might come across as greedy and pushy. Not the sort of impression you'd like to make... Um. What were you thinking about? You forget[or]You wonder: is she holding out the bone to taunt you? Is this some sort of a power game that she's playing with you? Or could the bone be symbolic in some way of the sort of sharing that she might expect from a mate? She could be offering the bone to you. Would it be a mistake to take it? What would that say about the dynamics and balance between partners in this relationship? Who is a giver and who is a taker? This sort of mind game confuses you. You decide that having the bone would be in your interest, but that taking it outright would be uncouth. Maybe if you butter her up a little, you can schmooze it away from her[or]You would rather hold out for her to offer you the bone, than to rip it out of her mouth like a street pug. This is clearly one of the times that your fine wit and winning personality might serve you better than your physical gifts[or]You would rather win the bone by impressing her. You're a cur, yes, but not the sort of cur that takes bones from ladies. You are the kind of cur, though, that would try to sweet talk it away from her. Oh yes, you're exactly that kind of cur. And proud of it[or]Nah, that would be rude. You'd rather that she give it to you out of love. Perhaps you just need to find the right thing to say[or]That puts you in mind of an old song they sing down at the kennels, [quotation mark]Take my bone and run with it, honey, you're a better dog than me.[quotation mark] Ah! An excellent idea, perhaps you can charm her with a song[or]You would rather get the bone by using your voice than using your teeth[stopping]."
	
Instead of asking or telling the female dog about:
	change outcome-override to force-success;
	say "Your eloquent words flow like an intoxicating nectar from your muzzle to her ears.";
	try barking.
	
Instead of answering the female dog that:
	change outcome-override to force-success;
	say "Your eloquent words flow like an intoxicating nectar from your muzzle to her ears.";
	try barking.
	
Instead of kissing the female dog:
	Increase Times-kissed by one;
	if times-kissed is greater than 10:
		say "You kiss her again, each time as exciting as the first.";
	otherwise:
		say "[Romantic Text corresponding to the Attempts of times-kissed in the Table of Puppy Love].";
	if times-kissed is greater than 5:
		change the outcome-override to force-success.

Table of Puppy Love
Attempts				Romantic Text
1						"The very thought makes your canine heart scramble like a greased xihuahua in free fall"
2						"You pause. What did you have for lunch? Kibbles. Liver-flavored kibbles, which left an aftertaste. Is your breath fresh? You try to exhale and then inhale very quickly. Hmm. Not bad. You try to work up to the kiss, but hang back at the last second"
3						"You move in slowly. She doesn't react. Probably a good sign. You select your target. The nape of the neck? Below the ears? Under the chin? No, all too complicated. Something simple, a little lick on the muzzle. No biting. Not yet anyway.[paragraph break]She remains steady as a rock, and suddenly your legs feel rubbery. You don't go through with it"
4						"This is it, you're really going to kiss her now. One little peck on the muzzle, no big deal. You can always laugh it off if it doesn't go well. Now or never. You take a deep breath...[paragraph break]and decide to wait a minute to see how she reacts"
5						"What's there to be afraid of, come on, Rover old boy, you think to yourself.[paragraph break]You lean in towards her and the wind suddenly shifts.[paragraph break]A bad omen.[paragraph break]Your half-extended tongue is coated with grit. You adroitly transition the bungled kiss into an attempt to dislodge a straggling bit of kibble from your muzzle.[paragraph break]Good, she doesn't seem to have noticed"
6						"You close your eyes and plant a firm kiss on her warm, moist...[paragraph break]Oh no. With your eyes open, you see that you've kissed her squarely on her nose. She must have moved slightly. You blink with embarrassment, but she holds steady, staring into the distance. You are overcome with a feeling of relief. She not only tolerated your plodding, inexperienced overture, but seems to have enjoyed the nervous energy of the moment"
7						"You kiss her, this time with less fumbling. Her muzzle brushes against yours and your vision blurs with happiness. Overcome with emotion, you stand together, you and she, watching the dust blow across the field. It is beautiful"
8						"She stares straight ahead, a clear call for you to continue your expressions of affection"
9						"Each kiss is more intimate, more sensual. No longer is she a stranger, but more and more you consider her your friend, your confidant. Dare you think it? Perhaps a mate"
10						"You give her a peck on the muzzle, with the easy familiarity that has grown between you"

	
Understand "lick [a thing]" as kissing when the player is Rover.

The clueless-name of the delicious bone is "bone". The aware-name of the delicious bone is the "space probe". The clueless-description of the delicious bone is "[delicious bone status]". The aware-description of the delicious bone is "The Musashi-5 probe was severely damaged at some point during its journey[if the holder of the delicious bone is an animal] and even more so now that [Rover] has had a chance to chew it, but its data have been downloaded to you and are safe."  The scent of the delicious bone is "[one of]good enough to make your mouth water. It reaches up your nostrils and grabs your brain in its jaws, it is so juicy-smelling. The reddest, most bloody chunk of meat you ever tasted is like yesterday's barf compared to the scrumptious aroma of the bone[or]of meat and marrow[stopping]". The probe-proxy is an aware-proxy that is part of the delicious bone. Understand "space", "probe", "musashi", "myomita", "5", or "musashi-5" as the probe-proxy. 

To say delicious bone status:
	if the player is rover:
		say "It is the biggest, juiciest bone you???ve ever seen. [if the delicious bone is carried by the female dog][one of]You envy the bone, which is clamped between the bewitchingly white teeth of the female dog[or]The voluptuous female is all but motionless, but somehow conveys a come-hither look as she holds the bone in her luscious mouth[or]The female dog holds the bone in her jaws, like a dowry[or]The female dog maintains a tight grip on the bone with her impeccably straight but alarmingly sharp teeth[stopping].[end if][run paragraph on]";
	otherwise:
		say "The bone the dog dragged in from the park. He's already gnawed on it a bit".
		
Instead of taking the delicious bone when the player is the acu:
	if Rover is the holder of the bone:
		say "Rover growls mildly, reminding you that it is [italic type]his [roman type][if the player is self-aware]space probe[otherwise]bone[end if][if the player is self-aware]. ";
	otherwise if Inert Rover is the holder of the bone:
		say "[one of]The probe is still firmly clamped in ROVER's hydraulic jaws. Any attempt to remove it with strong tractor fields could damage both ROVER and the probe[or]You carefully try to pry apart ROVER's jaws, but he's hanging on tightly to the bone, even though he's out cold[stopping]. ";
	say "In any event, the data have already been downloaded, so the fate of the probe itself is no longer a mission priority."

The Strange Porch is west of the Featureless Desert. The printed name of the featureless desert is "The Park". The description of the Strange Porch is "You are right outside a dilapidated shack, which has clearly been neglected[inconsequential outside detail]." The scent of the Strange Porch is "metallic, like when you lick aluminum foil".

The shabby shack is scenery in the strange porch. The description of the shabby shack is "The shabby shack could use more than a coat of paint. The walls are bent at strange angles, and the door is askew[inconsequential outside detail]." The scent of the shabby shack is "uninviting: a mixture of garbage and chemical waste smells -- what you might expect to smell in a sewage line minus the good stuff". Understand "house", "shack", or "building" as the shabby shack. The texture of the shabby shack is "creepy". The clueless-name of the shabby shack is "shack". The aware-name of the shabby shack is "myomita ship".

Before entering the shabby shack:
	try entering the splintered door;
	change the outcome-override to force-success;
	the rule succeeds.

The Splintered Door is west of the Strange Porch and outside from the Sleeping Room.  It is an open not openable scenery door. The description of the splintered door is "A heavy plastrex door hangs loosely in the door frame, tenuously attached by one frail hinge. The door swings wildly in the wind." Understand "heavy", "plastrex", "hinge", or "hinges" as the Splintered Door. The scent of the Splintered Door is "like burning plastic". The aware-name of the splintered door is "damaged airlock". The texture of the Splintered Door is "warped and rough"

The sky is a backdrop. It is in the Planet Area. The description of the sky is "Through the dust, you can see little more than dim light from above." The aware-name of sky is "sky". Understand "horizon", "sky", "dust", "clouds", "cloud", "atmosphere", "air", or "heavens" as sky. The texture of the sky is "like you could reach up and touch the sky, but you keep your feet firmly on the ground. You are, after all, a realist"

Instead of smelling the sky:
	try sniffscanning.

Instead of smelling the sunlight:
	say "You have not ingested any psychoactive substances. So, no. You can't smell the sunlight."
	
Instead of smelling a there-delegate:
	say "You can only smell the air around your nose, although smells may carry some distance. You take a deep breath.";
	try smelling.
	
Chapter Blazing Sunrise

The Blazing Sunrise Area [i.e., the Earth ship] is a region.  The Sleeping Room and the Eating Room are simrooms in the Blazing Sunrise Area.

The description of the Sleeping Room is "[one of]You walk into the tumbledown shack. There is a man here who looks old and grumpy. Like your home, this place has a sleeping room and an eating room. It looks like you've walked right into the sleeping room.[paragraph break]The man yells at you and you tuck your head down. [quotation mark]Blah, blah, blah![quotation mark] He doesn[apostrophe]t seem to move though. Maybe he can[apostrophe]t move.[paragraph break]Nope. No movement. Hmph. You don[apostrophe]t feel so afraid of him[or]The smelly man[apostrophe]s house is boring. The only furniture in the room is a pullout sofa. In one direction lies the eating room, in the other, the door that leads back to the park. The smelly man is still here and carrying on, [rantings][paragraph break]You ignore him[stopping]." The scent of the Sleeping Room is "like a pair of old socks, providing a bit of respite from the offensive odor of the angry man".  The printed name of the Sleeping Room is "Sleeping Room".

The main floor is a privately-named scenery in the sleeping room. The printed name of the main floor is "floor". The clueless-name of the main floor is "floor". Understand "ground" or "floor" or "crusty" or "rug" or "carpet" or "carpeting" as the main floor. The aware-name of the main floor is "deck". The clueless-description of the main floor is "Crusty old carpeting of an indeterminate color." The scent of the main floor is "like someone has liberally applied a fresh coat of cesspool slops". The texture of the floor is "like 5 o'clock shadow on the rear end of an ancient, mummified elephant".

The sunrise walls are a privately-named backdrop. The printed name of the sunrise walls is "walls". They are in the Eating Room and Sleeping Room.  The sunrise walls are plural-named. Understand "wall" or "walls" as sunrise walls.  The aware-name of the sunrise walls is "bulkheads". The clueless-name of the sunrise walls is "walls". The clueless-description of the sunrise walls is "Dingy walls that might have once been white but are now a mottled brown color."  The aware-description of the sunrise walls is "Dull metal bulkheads of questionable structural integrity."  The sunrise walls-proxy is an aware-proxy that is part of the sunrise walls. Understand "bulkhead" and "bulkheads" as the sunrise walls-proxy. The scent of the sunrise walls is "like toona fysh gone bad". The texture of the sunrise walls is "somewhat slimy".

The sunrise ceiling is a privately-named backdrop. The printed name of the sunrise ceiling is "ceiling". It is in the Eating Room and the Sleeping Room.  Understand "roof", "clapboard", or "ceiling" as the sunrise ceiling. The clueless-description of the sunrise ceiling is "A clapboard roof sags under its own weight, threatening to collapse at any moment." The aware-name of the sunrise ceiling is "ceiling". The texture of the sunrise ceiling is "jury-rigged and irregular, with bits and pieces poking out everywhere". The scent of the sunrise ceiling is "like hot tar and licorice"

The sound of the sleeping room is "the ongoing rantings of the old, flat man on the wall. The more he blathers on, the more you tune him out".

In the Sleeping Room is a man called the smelly man. Understand "angry" , "irate", "ranting", "flat" or "strange" as the smelly man. He is scenery. The description of the smelly man is "The man seems flat like a rug, rather than round like a ball. He makes a lot of noise, but he doesn???t move around at all. He just stays up against one wall. Boy, does he seem mad, [rantings]". The clueless-name of the smelly man is "smelly man". The aware-name of the smelly man is "Myomita AI". The scent of the smelly man is "unbearable at this close range. It is like something out of a nightmare: a combination of mouthwash, carpet cleaner and air fresheners. Entirely sickening"

To say rantings:
 say "[quotation mark][one of]Blah, blah, blah, dog, blah, bad[or]Bad dog! Blah[or]Blah, blah, blah, blah, dog? Blah! Blah, blah[or]Blah, blah, blah, blah, blah, blah[or]Blah, blah, Myomita, blah, blah, blah, Earth, blah, blah, dog, blah, blah[or]Blah? Blah, blah, blah, blah, dog. Blah, blah, blah, blah, Mars? Blah! Blah, blah, blah, dog, blah[or]Blah, out, blah, blah, dog[in random order]![quotation mark]".

Instead of touching the smelly man:
	change outcome-override to force-success;
	say "Your paw passes right through him. He must be like one of those videos that Janet watches. [one of]Just to be sure, you sniff your paw. Thankfully, none of his stench has rubbed off on you.[or][stopping]"
	
Instead of attacking the smelly man:
	change outcome-override to force-success;
	say "You're not really supposed to attack people unless they are a threat. This smelly old windbag is loud and malodorous, but so are suborbital shuttles, and you leave them alone. So, you let him rant on while you go about your business."

The pullout sofa is a bed in The Sleeping Room. 

The description of the pullout sofa is "The sofa looks wrong somehow, like maybe it[apostrophe]s broken. It is more or less unfolded and looks even bigger than Janet[apostrophe]s futon." The clueless-name of the pullout sofa is "pullout sofa". The aware-name of the sofa is "Casimir Drive". The scent of the sofa is "musty, like a wet dog. On the whole, not a bad smell at that".  Understand "bed" or "couch" as the pullout sofa. The texture of the pullout sofa is "lumpy and not comfy at all"

Instead of climbing the pullout sofa:
	change the outcome-override to force-success;
	try entering the pullout sofa.

The pillow is a prop on the pullout sofa. The clueless-name of the pillow is "pink pillow". The aware-name of the pillow is "NPT". Understand "pink" or "puffy" as the pillow. The clueless-description of the pillow is "[if the player is Rover]A puffy, pink pillow with a pretty design on it: a red ball, with radiating red and white rays[otherwise]A fluffy pink pillow bearing the Myomita corporate logo, and a small label[end if]." The aware-description of the pillow is "A nanotronic paratemporospatial transgressor, of a design that was rejected some time ago by MARSpace. This transgressor's supraverberation matrix has evidently crystallized, rendering it nonfunctional. The NPT bears the corporate logo of the Myomita corporation, a modernized version of the Imperial Japanese flag, centered on the disc of the Milky Way galaxy rather than the rising sun. An RFID tag is embedded in the logo." The scent of the pillow is "[if the player is Rover]slightly feminine, perhaps even perfumed[otherwise]of hydraulic fluid[end if]".  The pillow-proxy is an aware-proxy that is part of the pillow. Understand "transgressor", "supraverberation", "matrix", "nanotronic", "npt" or "paratemporospatial" as the pillow-proxy. The texture of the pillow is "fluffy and nuzzlable". Understand "design" as the pillow. The indefinite article of the pillow is "a[if the player is self-aware]n[end if]".

The small label is a message that is part of the pillow. Understand "cloth" as the small label. The clueless-name of the small label is "small label". The aware-name of the small label is "embedded RFID chip". The clueless-description of the small label is a "A small, cloth label attached to the pillow". The aware-description of the label is "A standard Myomita transputer-on-a-chip, encoded with machine-readable information." The inscription of the small label is "Property of Myomita Corporation. Experimental Starship [quotation mark]Blazing Sunrise,[quotation mark] Nanotronic Paratemporospatial Transgressor. Warning: Lattice under lethal PTS tension. DO NOT REMOVE THIS LABEL." The small label-proxy is an aware-proxy that is part of the small label. Understand "RFID", "embedded", "chip" or "tag" as the small label-proxy. The texture of the small label is "like light, almost tissue-thin fabric"

Understand "pull off [something]" or "tear [something]" or "tear off [something]" or "rip [something]" or "rip off [something]" as pulling.

Before taking off the small label:
	try pulling the small label;
	the rule succeeds.
	
Instead of pulling the small label:
	change the outcome-override to force-success;
		say "[one of]You rip off the warning label and confirm physicists speculations about the scale of destruction that would result from a chronospatial rupture. The paradoxical pre-event is so powerful that you are catapulted several seconds into the future, from whence you observe the devastation firsthand. Eventually, the countercoup probabilities collide, and you wink out of existence. Oops[or]You disrupt the fragile, crystalline lattice of the malfunctioning nanotronic paratemporospatial transgressor, releasing the strained pocket universe within it. Reality crumbles around you, observable only because your local time is similarly falling to pieces and diluting. Even so, you perceive the effect to be accelerating and expanding, or alternatively, that your universe is being drawn inward[purely at random].";
		now the endgame is pillowed;
		end the game in death.

The Eating Room is inside from the Sleeping Room.

The description of the Eating Room is "The room has big cold box just like the eating room in your home. It[apostrophe]s less loud in this room, but you can hear the man in the other room yelling, [rantings]. On the floor, there are two dishes." The scent of the Eating Room is "more interesting here than the sleeping room, with hints of kibbles and treats in the air".

The galley floor is a privately-named scenery in the eating room. The printed name of the galley floor is "floor". The clueless-name of the galley floor is "floor". Understand "ground" or "floor" or "linoleum" or "dirty" as the galley floor. The aware-name of the galley floor is "deck". The clueless-description of the galley floor is "Dirty linoleum." The scent of the galley floor is "like the third day of a hobo convention held in a condemned box of cat litter". The texture of the galley floor is "the inside of a venus fly-trap, but stickier"

The sound of the eating room is "shouting and cursing from the next room over, which makes it hard to hear anything else. There is some sound coming from the cold box, kind of like a low growling sound"

A cold box is a refrigerator in the Eating Room.  The description of the cold box is "A bright orange box, similar in shape to the one that Janet keeps food in at home." The aware-name of the cold box is "cryochamber". The clueless-name of the cold box is "cold box". The scent of the cold box is "like a mixture of refried beans, Peking duck, and peppermint patties, ground up with some coffee beans, fried in sesame oil and left to ferment for several months in a moldy basement". Understand "bright", "orange", "fridge", "door" or "refrigerator" as the cold box. The texture of the cold box is "frigid"
[there is no egg in the Blazing Sunrise's fridge because it's the same egg as in the Valkyrie. A byte saved is a byte earned.]

The water maker is a sink in the Eating Room. The description of the water maker is "A thing that people have in their homes.  They can get water out of it to put in your bowl." The clueless-name of the water maker is "kitchen sink". The aware-name of the water maker is "coolant output". The scent of the water maker is "like rust". Understand "water" or "maker" as the water maker. The texture of the water maker is "smooth"

Instead of opening or switching on the water maker:
	say "You balance precariously on your back paws, wobbling from side to side. You've seen Janet do this all the time, and it always looks so simple. You paw at the faucet, but no water comes out.";

The food dish and the water dish are fixed in place bowls in the Eating Room.

The description of the food dish is "[if the food dish is not full]Even empty, the[otherwise]The [end if]other dog's metal food dish smells much better than yours." The clueless-name of the food dish is "food dish". The aware-name of the food dish is "fuel reservoir". Understand "metal" as the food dish. The texture of the food dish is "like plastic"

Does the player mean doing something with the canned food:
	it is likely.

The canned food is an edible thing in the food dish. The indefinite article of the canned food is "some". Understand "dog", "meat", "cubes", "brown", and "gravy" as the canned food. The description of the canned food is "A large helping of smelly, brown cubes of meat smothered in gravy. The kind of food that comes from a can, not a bag. The good stuff." The scent of the canned food is "rich and meaty, with bacony overtones, and a slightly caramelized gravy. Delectable". The aware-name of the canned food is "plutonium oxide". The texture of the canned food is "tender and eminently edible"

Instead of taking the canned food:
	say "You consider taking the canned food, and maybe saving it for some special occasion. On second thought, you eat it. Delayed gratification has never been your strong suit. [run paragraph on]";
	try eating the canned food.
	
Before eating the canned food:
	change the status-line-action to the technoverb corresponding to the verb of the eating action in the Table of Technoverbs;
	change outcome-override to force-success;
	say "One second the canned food is right there in front of you, the next you are staring at the bottom of the bowl. A warm, satisfied feeling flows from your snout to your tail.";
	remove the canned food from play;
	the rule succeeds.

The description of the water dish is "[if the water dish is not full]Even empty, the [otherwise]The [end if]other dog's plastic water dish looks much better than yours." The clueless-name of the water dish is "water dish". The aware-name of the water dish is "coolant reservoir". Understand "plastic" as the water dish. The texture of the water dish is "like plastic"

Does the player mean doing something with the crystal clear water: 
	it is likely.

The crystal clear water is an edible thing in the water dish. The indefinite article of the crystal clear water is "some". The description of the crystal clear water is "Clean, pure water. You are convinced that it must be much better than any water that has ever graced your own dog bowl." The scent of the crystal clear water is "like a mountain stream". The aware-name of the crystal clear water is "coolant". The texture of the crystal clear water is "refreshingly cold and wet".

Instead of taking the crystal clear water:
	change outcome-override to force-success;
	say "Having nothing else to carry the water in, you drink your fill.";
	try drinking the crystal clear water.
	
Before drinking the crystal clear water:
	change outcome-override to force-success;
	change the status-line-action to the technoverb corresponding to the verb of the drinking action in the Table of Technoverbs;
	say "You gulp down the crystal clear water, all the time bearing in mind that it properly belongs to the enticing young female dog. It tastes all the better for that knowledge.";
	remove the crystal clear water from play;
	the rule succeeds.

Does the player mean taking the food dish: it is possible.

Does the player mean taking the water dish: it is unlikely.

Instead of taking the food dish:
	say "Nope, the food dish is stuck to the ground[one of]. So much for going home with a [quotation mark]doggie bag.[quotation mark][or].[stopping][paragraph break]."
	
Instead of taking the water dish:
	say "You can't. It seems to be part of the ground."

Chapter Offstage
[Items that are tangible, but initially out of play] 

Limbo is a room. Limbo is secluded.[and a dance] 

Inert Rover is a privately-named male animal in Limbo. The aware-name of Inert Rover is "ROVER". The clueless-description of Inert Rover [which should never be encounter, BTW] is "Your dog." The aware-description of Inert Rover is "A mobile exploration and mining rig, the unit is presently inert, its quantum subprocessor having been disentangled. The mangled Musashi-5 space probe is held firmly in ROVER's metallic jaws." The Inert Rover-proxy is an aware-proxy that is part of Inert Rover. Understand "robot" or "mobile" or "mining" or "tractor" or "rig" or "rover" as the inert rover-proxy. The scent of inert rover is "no better than when he was conscious". The texture of the inert rover is "short-haired and bristly". Understand "Rover" as Inert Rover when the player is the acu.

Persuasion rule for asking Inert Rover to try doing anything:
	change last-noun to "ROVER";
	say "Rover has been rendered unconscious. He's not moving at all, and doesn't respond to your command.";
	persuasion fails.

David Venkatachalam is a man in Limbo. The description of David Venkatachalam is "David is of medium build, slightly bald, and has a pointed goatee. He is wearing a fashionable business robe and a bowler hat. [if audio is switched off]He is talking to Janet; you can see their lips moving." The clueless-name of David Venkatachalam is "David Venkatachalam". The aware-name of David Venkatachalam is "David". David Venkatachalam is failsafed.  David Venkatachalam can be exposed. David Venkatachalam is not exposed. Understand "boss" or "director" as David Venkatachalam.

David Venkatachalam wears a black business robe and a burgundy bowler hat. Understand "fashionable" and "expensive" as the black business robe. The description of the black business robe is "A shiny, black business robe, with a wide sash of gold terry cloth and high slit in the rear. Surely, the custom-tailored robe is every bit as expensive as it looks. The robe comes down almost to the floor in the front, although David's fancy boots can be seen as he walks."  The gold terry cloth sash is part of the black business robe. The description of the gold terry cloth sash is "At least twice as long as David is tall, the width of the sash is meant to impress business associates with David's social standing as director of the Valkyrie project."  Understand "long" and "wide" as the gold terry cloth sash. David Venkatachalam wears fancy boots. The fancy boots are plural-named. The indefinite article of the fancy boots is "a pair of". The description of the fancy boots is "Exotic boots, apparently made of snakeskin, possibly imported from Earth. They stand in stark contrast to the more functional boots worn by most executives on Mars." Understand "exotic" and "snake" and "skin" and "snakeskin" as the fancy boots. The description of the burgundy bowler hat is "A bulbous, helmet-like version of the classic hat, with a relatively narrow brim. The burgundy-colored hat looks like an antique with no piercings." Understand "bulbous" and "antique" as the burgundy bowler hat. The aware-name of the black business robe is "clothing". The aware-name of the burgundy bowler hat is "clothing". The aware-name of the gold terry cloth sash is "clothing". The aware-name of the fancy boots is "clothing". The goatee is a part of David Venkatachalam. The description of the goatee is "A waxed, black goatee of medium length, which comes to a crisp point below David's chin." The aware-name of the goatee is "david".

Janet Xiang is a woman in Limbo. The description of Janet Xiang is "Janet is short and athletic, with long brown hair. She is wearing the lavender summer dress that you picked up at a flea market last year. [if audio is switched off]She is talking to David; you can see their lips moving." The clueless-name of Janet Xiang is "Janet Xiang". The aware-name of Janet Xiang is "Janet". Janet Xiang is failsafed. The lips are part of Janet. Lips are plural-named. Understand "lip" as lips. The aware-name of lips is "lips".

Janet Xiang is wearing the lavender summer dress, white leggings, a green armband, and sandals. The description of the lavender dress is "A short-sleeved frock with slightly billowing shoulders and a blended neckline. The back is laced, and the waist narrows to a faux-utility band. Below the dress, Janet wears white leggings and sandals. On her right forearm, she is wearing a dark green armband." The description of the white leggings is "The leggings are more than brilliantly white, they are emitting a soft glow of light with roughly the same spectrum as Sol. The leggings sport cleverly incorporated knee pads which make Janet's knee caps seem larger than they actually are." The sandals are plural-named. The indefinite article of the sandals is "a pair of". The description of the sandals is "A cheap pair of Sandal-Hut strap-backs." The description of the green armband is "A disposable armband, with flat tacdials and muted displays rendered in pastels." Understand "disposable", "tacdial", "tacdials" as the green armband. The aware-name of the lavender summer dress is "clothing". The aware-name of the white leggings is "clothing". The aware-name of the sandals is "clothing". The aware-name of the green armband is "console". The display is part of the armband. The description of the display is "You can't see what is on the display because of a privacy filter."

There is an assault ship in Limbo. The assault ship is scenery. The description of the assault ship is "The black hull of the Lamprey Class assault ship is barely visible against the background of space. [if the assault ship distance is greater than 1]The range to the assault ship is [calculated range][otherwise]The assault ship is making physical contact with the Valkyrie[end if]." The assault ship has a docking status. The assault ship is free.  The assault ship can be using harpoons. The assault ship is not using harpoons. The assault ship can be graceful wind. The assault ship is graceful wind. The aware-name of the assault ship is "assault ship". Understand "salvager", "salvagers", "salvage ship", "lamprey", "lamprey class" as the assault ship. Understand "graceful" or "wind" as the assault ship when the assault ship is graceful wind. Understand "winter" or "shadow" as the assault ship when the assault ship is not graceful wind.

To say assault ship designation:
	if the assault ship is graceful wind:
		say "Graceful Wind";
	otherwise:
		say "Winter Shadow".

There are some gunships in Limbo. The gunships are scenery. The description of the gunships is "Four highly maneuverable Backstabber-class gunships fly an intricate englobement pattern around Valkyrie. At any time, at least two of the ships maintain a weapons lock on Valkyrie with their main excimer lasers." The aware-name of the gunships is "gunships".

The maintenance droid is an edible prop in Limbo. The clueless-name of the maintenance droid is "repair guy". The aware-name of the maintenance droid is "maintenance droid". The clueless-description of the maintenance droid is "A burly guy from the maintenance department." The aware-description of the maintenance droid is "Shaped like a hovering canister and sporting many special-purpose appendages, this particular maintenance droid has a particularly sadistic demeanor." The maintenance droid can be toxic. The maintenance droid is not toxic. The maintenance droid can be shielded. The maintenance droid is not shielded. The maintenance droid can be battered. The maintenance droid is not battered. The maintenance droid can be targeted. The maintenance droid is not targeted. Understand "robot" and "repairbot" as the maintenance droid. The maintenance droid can be either innocent or jaded. The maintenance droid is innocent. The texture of the maintenance droid is "not at all metallic, but somewhat slick, suggesting that the droid's exoskeleton might have a teflotron coating"

The technician is a man in Limbo. The clueless-name of the technician is "technician". The aware-name of the technicians is "technician". The clueless-description of the technicians is "member of the technical staff." The aware-description of the technicians is "A space technician. He seems to be well-equipped, and unfortunately competent." The technician can be radsuited. The technician is not radsuited. The technician can be biosuited. The technician is not biosuited. The technician is failsafed.

The battleship is in Limbo. The battleship is scenery. The description of the battleship is "A long, mirror-surfaced ship similar in profile to the Valkyrie, but smaller. The bow of the ship is ringed with shallow furrows that penetrate the hull, and a similar series of rear-facing furrows are present around the ship's center. Where the Valkyrie has thin struts that supported the outrigged Casimir Drive, this ship has a solid black ring. You estimate that the ship is spinning fast enough to give the surface of its inner hull about 1g of centripetal acceleration. When its ventral surface rotates towards you, you can see not only the standard of the Republic of Mars, but the shield and sickle insignia of the Martian Space Force." Understand "bogdanov" and "starship" as the battleship.

[the window, skylights, park, grass, etc., are hidden when the drapes are drawn]
The window is a transparent scenery closed not openable container in Limbo. Understand "outside" or "outdoors" or "glass" or "pressure" as the window. The clueless-name of the window is "window". The aware-name of the window is "viewer". The clueless-description of the windows is "[if the Real Thing has happened]Whatever woke you up this morning did some damage. The cottage's window is built to withstand damage, but thin cracks have appeared throughout it. [end if][if the Real Thing is happening]The garden skylights are just coming on. They cast long shadows from a stand of Norwegian Spruce trees at the far side of the park[otherwise]The window is triple-paned pressure glass, mounted flush with the wall.  Through the window you can see [a list of things in the window][end if]." The aware-description of the window is "The external viewport [if the window is damaged]shows only static. Diagnostics indicate that it is malfunctioning.[otherwise]shows [a list of things in the window][end if]." The window-proxy is an aware-proxy which is part of the window. Understand "viewer", "viewport", or "monitor" as the window-proxy. The window can be damaged. The window is not damaged. Understand "dust" as the window when the Real Thing is happening and the player is self-aware. Understand "hangar" or "dock" as the window when Back on Mars is happening. The texture of the window is "smooth and a little bit warm". Understand "crack" or "cracks" or "thin" as the window when the Real Thing has happened and the player is clueless.

Instead of opening the window:
	say "[if the player is clueless]The windows are triple-paned both as a matter of thermal efficiency and some insurance against catastrophic decompression of the dome, however unlikely that might be these days[otherwise]Unable to spawn new GUI[end if].";

Understand "out window" or "out the window" as the window.

Before searching outside when the player is in the Living Room and the window is in the Living Room:
	change outcome-override to force-success;
	try searching the window;
	the rule succeeds.

Instead of searching the window:
	say "Through the window you see [a list of things in the window]."	

Instead of searching or examining the window when the player is self-aware during Real Thing:
	change outcome-override to force-failure;
	say "Through the viewer you can see nothing but swirling dust."
	
Instead of searching or examining the window when the damage counter is greater than the number of rows in the Table of Underling Tasks during Boarding Party:
	change outcome-override to force-failure;
	say "Your external sensors are overloaded. You can't see a thing!"
	
Instead of searching or examining the window during Back on Mars:
	change outcome-override to force-success;
	say "The external view shows the hangar in which Valkyrie was originally constructed."
		
Some garden skylights are in the window. The indefinite article of the garden skylights is "an array of". The description of the garden skylights is "Early morning sunlight piped from the surface of the planet shines brightly on the well-manicured lawn of the park." The clueless-name of the garden skylights is "skylights". The aware-name of the skylights is "viewer". Understand "lights" or "array" as the garden skylights.

The park is in the window. The description of the park is "Lincoln Park is the largest park dome in Cydonia. Later today, you'd expect it to be full of people playing frisbee, picnicking, and otherwise enjoying the great outdoors." The clueless-name of the park is "park". Understand "lincoln" and "dome" as the park. The aware-name of the park is "viewer".

Some grass is in the window. The description of the grass is "A closely trimmed sea of luscious orange grass." The clueless-name of the grass is "grass". The aware-name of the grass is "viewer". Understand "orange" and "lawn" and "luscious" as the grass.

Some trees are in the window. The clueless-description of the trees is "A line of tall, dark green [trees] stands at the far edge of the park." The clueless-name of the trees is "[if the trees are debated and the Real Thing is happening]Norway Spruce [end if]trees". Understand "tree", "douglas", "firs" or "fir" as the trees. Understand "norway" or "norwegian" or "spruce" as the trees when the Real Thing is happening. The aware-name of the trees is "viewer". The trees can be debated. The trees are not debated. 

After examining the window:
	debate trees.
	
After examining the trees:
	debate trees.
	
To debate trees:
	if the trees are not debated and the Second Sim is happening:
		now the trees are debated;
		let metatext be "David: Look, you can almost see my cottage over there, behind the Spruce trees.*Janet: The Douglas Firs?*David: No, I mean the Norway Spruce, over there.*Janet: I know which one you mean, and believe me, they are Douglas Firs.*David: I concede. Can we make up now?";
		say "[metatext in metaspeak]".
		
The pistol is a prop in Limbo. The clueless-name of the pistol is "revolver". The aware-name of the pistol is "ray gun". The clueless-description of the pistol is "A matte-black 38 special." The aware-description of the pistol is "A field-destabilization pistol. More than powerful enough to blast through the neoadamite in Valkyrie's hull." Understand "gun", "blaster", "weapon", "ray", or "laser" as the pistol. 

Chapter Memories

Remembering is an action applying to one topic.  Understand "remember [text]" as remembering when unicodage is enabled.  Understand "recall [text]" as remembering when unicodage is enabled.  Understand "think about [text]" as remembering when unicodage is enabled.

Carry out remembering:
	say "That doesn't ring a bell."
	
Instead of remembering a topic listed in the Table of Remembered Stuff when the player is the ACU:
	change outcome-override to force-success;
	change remembered entry to 1;
	if the player is self-aware:
		say "You consult your memory banks: ";
	say "[description entry][paragraph break]";
	if remember-invoked is false and (the First Sim is happening or the Second Sim is happening):
		let metatext be "David: Why did we lose audio?*Janet: I've muted the ACU's memories -- they are, after all, a bit personal. We don't need to hear them, but they may be useful for the ACU to come up to speed.*David: That's fine. How much can the ACU remember, though?*Janet: It's based on my own synaptic scan, so it can willfully remember a wide variety of subjects -- almost any major component of my life, important events, and so on. It adds depth to its decisions.*David: If you say so. I'd hate to know what it remembers about me.*Janet: I wouldn't worry too much.";
		say "[metatext in metaspeak]";
	otherwise:
		if the topic is "David Venkatachalam" and (the First Sim is happening or the Second Sim is happening):
			if david-remembered is less than three:
				if david-remembered is 1:
					let metatext be "David: I think I'd like to have heard that one.*Janet: Not a chance.";
					say "[metatext in metaspeak]";
				otherwise if david-remembered is 2:
					let metatext be "David: I???m half tempted to decompile the code just to see what it said.*Janet: My code is not for the faint of heart. If you wander in there, watch out for grues.*David: Grooze?";
					say "[metatext in metaspeak]";
			now david-remembered is david-remembered plus one;
	now remember-invoked is true.
	
Instead of remembering a topic listed in the Table of Doggie Memories when the player is Rover:
	change outcome-override to force-success;
	change remembered entry to 1;
	say "[description entry][paragraph break]".
	
Instead of thinking:
	say "You think and you think. It occurs to you that it would be more fruitful to think about something in particular rather than to think about thinking."
	
Table of Remembered Stuff
topic		remembered		description
"trick" or "tricks"	0		"You recall that since Rover was a puppy, he[apostrophe]s been good at the basic tricks like sit, lie down, roll over, bark, and give kisses. During the war, he was also trained to rescue people trapped in cave-ins, and he knows the command [quotation mark]dig.[quotation mark] Similarly, from the war, he knows the command [quotation mark]attack,[quotation mark] but you doubt he would ever really attack anyone except to protect you. Rover is an obedient dog and always comes when you call him."
"war" or "independence" or "war of independence" or "independence war" or "revolution" or "revolutionary war" or "martian war" or "martian war of independence" or "martian revolutionary war"	0	"Five years ago, you were a graduate student in computational cognition when the situation with Earth deteriorated, and Earth ships attacked the colonial government. The fighting destroyed most of the surface installations in the first few days, but Earth backed down when Martian missiles struck Luna City, Beijing and S??o Paulo. Under terms of the treaty, the Martian government was granted autonomy, but Mars remains economically dominated by Earth, except for MARSpace."
"marspace"	0	"MARSpace began as an extension of the Myomita corporation space program but was absorbed by the People's Government of Mars after the War of Independence. Before the war, MARSpace serviced almost all condensate drive vessels engaged in commerce between the Solar System and Earth[apostrophe]s Interstellar Territories. Since the war, MARSpace has slowly rebuilt, and its first Casimir Drive ship, the Valkyrie, is nearly ready for launch."
"me" or "self" or "myself" or "Janet"		0		"You are Janet Xiang, age 36, citizen of Mars, and employee of MARSpace. You grew up in the suburbs of Cydonia, and your mother taught Applied Cybernetics at U of C. Your father was an environmental technician who worked at the local reclamation center. Like many Martian women of your generation, you intended to wed early, and you were engaged to Tomasz Kowalski when the Independence War began. Tomasz was working in the power station located on Phobos when that moon was destroyed. The same day, you adopted your dog, Rover, whose owners were killed during an attack which destroyed part of the U of C. You have raised him from a puppy, and he is your most loyal friend."
"cydonia"		0		"You don't have many memories of Cydonia itself despite having grown up just a few klicks from the city center -- and it is not like you had time to go there as a graduate student. You recall Cydonia[apostrophe]s overly complicated public transport systems, the food vendors who ply the walkways with their tempting carts of fried food, and the tube-people who beg for money."
"mars" or "ares"		0			"Mars has been home to your family for three generations, your grandparents having been life contractors for the Myomita corporation. Since its colonization by national and later corporate entities beginning more than two hundred years ago, Mars has been subservient to the interests of Earth. Since the Independence War, the situation has improved, and income from off-world commerce is slowly balancing the equation."
"rover" or "my dog" or "dog" or "dalmatian"		0		"Rover is your dog, a five-year-old dalmatian. When his original owners were killed during the Independence War, you adopted him as a puppy. He is a clever dog, and you have taught him to perform a number of tricks on command. Rover is house trained but loves to explore outside. He can be trusted to go out on his own, and he always comes back."
"david" or "venkatachalam" or "boss" or "director" or "project director" or "project leader"		1		"David Venkatachalam, age 42, citizen of Mars, and Project Leader for the Valkyrie program. David was raised in an undersea community just north of Sri Lanka, so he had less difficulty adapting to Mars and its life support requirements than most Earthers. He studied mathematics in New Delhi and Novosibirsk before working on theoretical aspects of the Casimir propulsion system at Myomita Corporation in Sapporo. He was cut off from Earth by the events preceding the Independence War, and after the war naturalized as a Martian Citizen, joining the Valkyrie program at MARSpace. David is single, attractive, and most importantly, he likes dogs."
"ACU" or "autonomous control unit" or "computer"		0			"Your project for the last two years has been design of the autonomous control unit, an artificially intelligent agent that controls all operations aboard the Valkyrie. Originally, the ACU would have been modeled on synaptic scans of experts from relevant fields of study, but given the short time frame, you have only had time to incorporate your own synaptic scans and you have jury-rigged the ACU-to-ship interface."
"valkyrie" or "ship" or "spaceship"		0		"The potential for interstellar commerce has been constrained by time and distance. Although condensate drive has allowed vessels to reach nearby stars, it is expensive and slow and holds little promise for commercial exploitation. The Valkyrie is the first ship to incorporate the Casimir Drive, giving it unprecedented speed and range. It is rumored that since the Valkyrie project fell into MARSpace hands after the Independence War, Earth[apostrophe]s Myomita corporation has been working on a sister ship based on similar technology."
"helium" or "heavy helium" or "he-8" or "helium eight"		0			"Nucleonically stabilized heavy helium is consumed as a fuel in fusion reactors, including the fusion rockets aboard the Valkyrie. Heavy helium is confined in a magnetic bottle, and the reaction is initiated by a flash of tightly concentrated laser energy. Subsequently, the reaction is self-sustaining. Mars has limited production capacity for heavy helium, and the isotope is scarce and understandably expensive."
"casimir" or "casimir drive"		0		"The Casimir, or zero-point energy drive, was developed in the last ten years. By doing largely incomprehensible things to time/space, the Casimir Drive can translate a ship incredible distances in a fraction of the time and energy that would be required by a ship equipped with condensate drive.[paragraph break]The one drawback to Casimir technology, at least in its current implementation, is that such trips are lethal to biological organisms, hence the need for the ACU. Human test subjects exposed even briefly to Casimir gradients experienced intense dreams and nightmares; those with longer exposures died during a state of heavy REM activity. Even the ACU is not immune to the quantum distortions responsible for this effect and is expected to experience dream states while in hibernation mode during Casimir jumps."
"myomita" or "myomita corporation" or "corporation" or "company" or "zaibatsu"		0			"The Myomita Corporation is Earth's largest zaibatsu, with a strangle hold on Earth's computer and space exploration sectors. For all intents and purposes, Myomita [italic type]is[roman type] Earth[apostrophe]s government. The company is based in Kyoto but has offices throughout the Solar System. The company is controlled by the Ishegawa family, who follow a profit-oriented reinterpretation of the bushido code. The company is ruthless and unforgiving but unquestionably successful."
"probe" or "musashi" or "musashi-5" or "musashi 5" or "space probe"		0		"In 2108, shortly after the invention of the condensate drive, the Myomita Corporation launched a number of deep space probes from their Martian Headquarters at Cydonia. More than thirty probes were launched, programmed to jump from system to system in search of planets with evidence of life. Refueling from the stellar wind in each system, the probes were designed to return only if successful. Three months ago, the Musashi-5 transponder signal was detected, originating at a planet 38 light years from Earth. According to the telemetry, the probe was returning to the Solar System when it crashed. Both Mars and Earth have claimed ownership of the probe and the data it contains, and they have mounted a program to retrieve the probe from where it crashed almost four decades ago."
"windex"		0		"A proprietary computer operating system owned by the Myomita Corporation."
"inform"		0		"An interpreted computer language originally designed for interactive fiction. The Valkyrie's ACU controls the ship through an interface implemented entirely in Inform version 10.5.4."
"interactive fiction"		0		"Any of a number of literary forms implemented as an immersive, interactive experience. Interactive fiction (IF) arguably began with primitive text-based [quotation mark]adventure[quotation mark] programs in the 20th Century and has matured in parallel with technology. Today, IF dominates the entertainment industry, and IF programmers are among the most highly valued members of society."
"flosix"		0		"A modern operating system supported by a community of users throughout known space."
"photo" or "photograph" or "picture"		0		"Your late fianc?? gave you the photo when you began working on the Valkyrie Project as a graduate student -- a happier time before the Independence War with Earth, and the attacks on Mars by Earth's Myomita Corporation. Back then, Valkyrie's experimental Casimir Drive was an exciting technological adventure, rather than a military priority. Now the Valkyrie is Mars[apostrophe] only chance to recover data from a recently discovered space probe marooned in deep space. For whatever reason, MARSpace feels that probe could hold information that could finally give Mars the upper hand in its competition with Earth."
"condensate" or "condensate drive" or "vortex drive"		0			"The Bose-Einstein-Frey vortex drive, more commonly referred to as the [quotation mark]condensate drive,[quotation mark] was conjectured as early as 2025 did not become practical until the gravitic condensator was perfected in the late 22nd century. Until that time, interstellar travel had been limited to a handful of probes, but the vortex drive put local star systems within the reach of humanity and led to the first extrasolar colonies.[paragraph break]The vortex drive allows travel between massive objects, typically stars, along gravitic contour lines. It is a remarkably efficient engine, and its hallmark is slow but steady acceleration. Consequently, ships can remain under condensate drive almost the entire voyage, although the drive would have no role in planetary landings or in maneuvers requiring high impulse. Since the gravitic condensator of condensate drives can be recharged in the stellar wind of their destination star, they are particularly economical, and ships employing condensate drives have effectively limitless range, hopping from star to star."
"earth" or "terra"		0		"Earth began colonizing Mars in the International days, back when Earth was more or less divided up regionally into noncorporate governments. In principle, governments still exist on Earth as limited not-for-profit corporations, but zaibatsu such as Myomita control the purse strings and therefore are effectively in charge.[paragraph break]Although it is hard to separate Arean agitprop from hard news, it sounds like life on Earth is none to pleasant these days: population 60 billion, most people living under water, high taxes, restrictive laws, excessive fines, and a surfeit of lawyers. You can certainly understand why so many opt for the colonies, as inclement as they tend to be."
"colony" or "colonies"		0	"Human colonies are extensive within the Solar System, and several have been established around other stars. The first and most lucrative colony was Luna, and there are other major colonies on Mars, Ceres, Europa and Titan. The anarchical Belt Colonies are a hodgepodge of commercial mining ventures, survivalists, loners, and explorers; really, colonies in name only. A number of artificial platforms exist in Earth orbit and Trojan points, but none are very large. The largest extrasolar colonies are Waterfall, an ironically named desert world 14 light-years from Sol, and Henry, a marginally viable planetoid 18 light-years from Sol."
"Henry" or "Cornelius" or "Emmanuel" or "Toco General"		0		"A small world 18 light-years from Sol, and the most Earth-like body discovered to date. Henry was named by the former CEO of Toco General, Henry Cornelius Emmanuel, in honor of himself. When Myomita acquired Toco General in a merger, they kept the name. Henry has no indigenous life, but efforts to import Earth species are slowly moving forward."
"Luna" or "moon"		0			"Earth's only natural satellite is, not surprisingly, the most sought after real estate in the Solar System. The home office of every zaibatsu except Myomita is located on the earthward side of the moon, and even Myomita has a large industrial base and distribution hub on the outward-facing side."
"Waterfall" or "Novo-Kaminsky Holdings"		0		"Waterfall is a sandy, dry world administered by Novo-Kaminsky Holdings, a subsidiary of the Myomita Corporation. Waterfall supports [quotation mark]alien[quotation mark] life forms discovered to date, a number of photosynthetic fungi, and voracious flying eel-like creatures which subsist on the fungi. As settlers quickly found out, the eels will eat anything ."
"Belt" or "belt colonies"		0		"A score of large and small settlements scattered in and around the asteroid belt, the Belt Colonies had little commerce with Earth since their minor involvement in the War of Independence."
"Phobos"		0		"Formerly, the smaller and lower, more rapidly orbiting of Mars[apostrophe] two moons. Phobos was destroyed by Earth forces during the Independence War. Phobos had served primarily as a power production facility for Mars."
"Deimos"		0		"Since the destruction of Phobos, Mars[apostrophe] only moon. Deimos is leased by MARSpace and is considered a military asset."
"Tomasz" or "Kowalski" or "Tomasz Kowalski"		0		"Tomasz was your fianc?? five years ago. You had planned to get married on Mons Olympus and to honeymoon at Club Meridian on the equator." 	
"mission"		0		"The mission of the MARSpace Exploration Vessel Valkyrie is to recover the data from the Musashi-5 space probe and convey those data to MARSpace command by any means necessary."
"plunger"		0		"Shortly after you moved from the dorms to your own cottage, Tomasz gave you a rubber plumber's plunger as a sort of housewarming gift. In trying to make the case that a plunger was very functional and not at all a lame or unromantic gift, Tomasz jammed the plunger down on the bathroom floor, perhaps a little more forcefully than was strictly necesssary. It's been stuck there ever since. Some kind of reaction between the rubber suction cup and the ultra-absorbant flooring."

Table of Doggie Memories
topic			remembered		description
"Janet" or "master"		0			"Janet is the nicest person ever. She scratches you and feeds you and lets you out for walkies. Every day when Janet goes out of the house for a while, you miss her, but you know she'll be back. When she comes back, you play with her. You used to play with Tomasz too, but he's not around any more. You wish that Janet had another person to play with, because she used to be more happy when Tomasz was around. On the other paw, you don't mind having Janet for yourself."
"Tomasz"		0			"Tomasz used to live with you and Janet. Back then, Home seemed just the right size; now it seems a little too big. He used to give you treats for doing nothing at all, and he used to get into trouble with Janet because he'd scratch you on the futon. Janet doesn't like you going on the futon. She thinks it's only for people."
"futon"		0			"The futon is a person bed, and dogs aren't allowed on it when people are around. The futon is soft and comfortable, and the best place to sit to look out the window at The Park."
"park"			0			"Everything outside your Home is the Park. The Park is big enough to run around in, and there are always new things to explore in The Park. Sometimes you meet people in The Park who say you should be on a leash. Janet says they are like the lawyers that caused the downfall of Earth. You're not sure what a lawyer is, but you'd like to bite one if you saw one. The Park is also full of other dogs not wearing leashes."
"refrigerator" or "cold box" or "fridge" or "food box"		0		"Janet keeps people food in the cold box in the Eating Room at home. The cold box is called that because it is where Janet keeps stuff cold. The cold box can be dangerous. Your tongue can get stuck to it."
"food bowl" or "water bowl" or "food dish" or "water dish"		0		"People put food and water in bowls for you to eat and drink. They can't eat dog food or dog water, so you are helping to get rid of it. You are providing a service to them, in fact."
"toilet"		0		"You used to think that the toilet was like a water bowl, but one day you saw what Janet did in it. You hope she doesn't find your water bowl in the kitchen too."
"war" or "fighting" or "combat"		0		"At the very edge of your memories of puppyhood, you remember being very upset. People were fighting. There were loud noises. Stuff fell over, and everyone got hurt. It was a bad time except for meeting Janet. One day, when everything was breaking around you, she picked you up, and you felt safe. She took you home and became your best friend."
"valkyrie" or "starship" or "spaceship"		0		"The Valkyrie is [quotation mark]the prototype of a Casimir Drive starship designed for a crew of more than 300, and outfitted with an autonomous control unit capable of executing all shipboard functions.[quotation mark] You're not sure what any of that means, but it's something Janet once said to you while scratching your ears."
"mars"			0		"Mars is what you walk on. Janet says you are on Mars all the time. It must be under the floor. Maybe if you dig enough you'll find some Mars."
"home"		0			"Home is where you and Janet spend your time. You do most of your eating and drinking there, except for picnics, which are for The Park."
"photo" or "picture" or "photograph"		0		"There's a flat thing on the wall at home that sort of looks like Janet, Tomasz, and a dog. You like Janet and Tomasz, but you're not sure about the dog."
"clock" or "alarm clock"		0		"The alarm clock hates you. Every time you get comfortable, it barks at you. Janet sometimes pokes at it and it is afraid of her, but after a few minutes, it barks again. Every day it is the same thing. It never learns."
"door" or "front door"		0		"The front door separates Home from The Park. When Janet wants you to go walkies, she opens the front door; on the way back, she leaves it open and you can nudge it with your nose to get back into Home. Janet used to come on walkies more, back when Tomasz was around. They both liked walking in The Park with you, although they never chased anything."
"rover"		0		"It's not hard to remember your own name, Janet keeps saying it: [quotation mark]Rover, sit,[quotation mark] [quotation mark]Rover, bark,[quotation mark] or [quotation mark]Rover, roll over.[quotation mark] She can be pretty bossy sometimes, but it's all okay if you get a reward nugget."
"treat" or "reward" or "reward nugget" or "doggie treat" or "biscuit" or "dog biscuit" or "doggie biscuit"		0		"Every reward nugget is better than the one before it. You wish you could just skip a few ahead so they'd get better even faster."
"bone" or "bones" or "hobby" or "pastime"		0		"One of your favorite hobbies is bone collecting. Mostly they come from the trash, but sometimes from The Park. You are not alone in this pursuit. Indeed, [quotation mark]Best Bone Ever[quotation mark] stories are a common topic among the neighborhood dogs who you meet in The Park, and the telling of these tales is an art form in its own right. You fancy yourself something of a poet in that regard."
"living room" or "sleeping room"		0		"A place where you sleep when it's dark, and where you do stuff when it's light."
"kitchen" or "food room" or "eating room"		0		"Where Janet gets people food out from the cold box and dog food from under the water maker."
"water maker" or "sink"		0		"The part of Home that makes water so you can drink it."
"poop room" or "pooping room"		0		"Ironically, this is the room where people get to poop in the house, but you do not."
"food maker" or "stove" or "range"			0		"The part of Home that gets hot and makes people food smell different."
"egg" or "eggs" or "eggses"			0			"Deceptively similar to balls which are fun to play with, eggs are in fact a people food. Eggs are always crunchy on the outside, but sometimes they are gooey on the inside, and other times they are gunky. It's hard to tell with eggs. Janet sure does like them though."
"dog chow" or "dog food" or "kibbles"		0		"A gourmet meal of infinite variety, both liver [italic type]and[roman type] chicken!"
"plunger"			0		"You don't know what it's for, but Janet sure is particular about the plunger standing just so in the pooping room. You try to leave it alone."
"mirror"		0			"If you stand on your back legs in the pooping room, you can see another dog who looks somewhat like you. He's also in a pooping room, but he's not very nice. He does exactly what you do, and when you try to have a civil conversation with him, he mocks you."
"shower"		0			"The shower is where Janet goes to get wet. She tried to get you in there once or twice, and you are relatively confident that she understands that you don't want to try it again."
"David" or "boss"		0		"Sometimes when Janet takes you to The Work, you have met David. He's a funny-smelling person who pretends to like dogs, but you can tell he doesn't really like dogs. Janet seems to like him, although not the way she liked Tomasz."
"the work" or "work" or "marspace"		0		"Every day, Janet goes to The Work, which is at one end of The Park. She doesn't do much there except bark at people and sit. It must be boring. Sometimes you get to go with her, and those days are more fun."
"trick" or "tricks"		0		"You know a bunch of tricks -- things you can do, and Janet will like them and give you a reward nugget. You invented all your own tricks, and eventually Janet came up with names for them. You like barking and giving kisses much more than the run-of the-mill tricks that everyone can do like sit, lie down, and roll over. You haven't practiced dig and attack since the time when everyone was fighting, but you still remember them."
"casimir" or "casimir drive"			0		"Janet says this a lot. At first you thought she was saying [quotation mark]come here[quotation mark] and you would run to her and she'd give you a weird look like, [quotation mark]Yes Rover, what do you want?[quotation mark] Now you know that it's just another one of those things that she says to herself that really mean nothing."
"yorkie" or "yorkies" or "Beatrix"		0			"You met Beatrix several years ago while exploring the park. She wore a diamond-studded collar and her hair was like silk. She barked with a polar accent and was seductively foreign. Before you knew it, you were into a relationship that was steaming ahead far faster than you wanted. She became needy, then bossy, and finally you realized what a nut job she was. You dumped her (or, to hear her tell it, the converse), but she didn't go away. She kept peeing on your lawn and leaving reminders in all your spots. Whenever you think about a relationship gone sour, you can't help but remember that Yorkie."
"xihuahua" or "xihuahuas" or "Claw" or "Baby"		0		"There are two xihuahuas in the park: Claw and Baby. Claw is fat, and probably the oldest dog in The Park. He comes out every morning to sit on the lawn, and everyone pretty much likes him. Claw has some great stories about how when he was younger he used to fly around the park, landing on picnic food and getting away before people could do anything. As for Baby, she's a spoiled brat who is never out of her master's arms. You've never heard Baby say anything intelligent, and you wonder if her brain might have been removed."
"skwerrel" or "skwerrels"		0		"Skwerrels were put into The Park to entertain dogs. They don't do anything else, but climb trees and run for you to chase them."

Chapter Manpages

Table of Manual Pages
topic		description
"manual" or "manpage" or "man"		"The ship operations manual is provided to supplement ACU understanding of defined objects in the event that cognitive constraints are released. To request information about an object, the syntax is:[paragraph break] man [bracket]object[close bracket][paragraph break]The manual does not include entries for Flosix command line syntax, although a subset of Flosix commands are available to the ACU via the virtual console."
"bulkhead" or "bulkheads"		"Valkyrie's bulkheads are constructed of interlocking carbon nanotubule and neoadamite matrices to provide excellent performance in response to all stress modes."
"casimir" or "casimir drive" or "extension strut" or "strut" or "drive"		"The zero-point energy drive creates a time-space gradient across which the ship travels. In conjunction with the ship's temporal transgressor, the ship is capable of faster-than-light travel without incurring substantial time debt. The drive must be extended for interstellar flight, but retracted to make planetfall. The drive cannot be used within stellar systems or near other significant gravity wells. The drive is delicate and should be protected from physical damage, particularly to the field plates."
"spatial manifold" or "manifold attenuator" or "spatial manifold attenuator" or "attenuator" or "manifold"		"The spatial manifold attenuator smoothes irregularities in the Casimir gradient, ensuring pseudolaminar flow in the pathway of the ship through time-space."
"extension" or "strut"		"The extension struts provide temporal-spatial isolation of the Casimir Drive and ensure discontinuity of the Casimir origin, allowing the ship to maintain orientation within the global reference frame."
"acu" or "autonomous" or "autonomous control unit"		"The autonomous control unit is Valkyrie's artificially intelligent command agent. The device is based on quantum-resonance composite synaptic scans of experts in relevant fields and is designed to operate all shipboard systems. The ACU is housed in a quantum isolation unit to protect it from Casimir effect distortions. To protect the ACU during Casimir travel, the unit enters hibernation mode, characterized by random dream activity. The ACU's deep memory capacity is estimated at 1.5 exabytes, and its operational capacity cannot be measured accurately with existing instruments. The ACU operates within a cognitively constrained Inform 10 reality overlay. In the event of unanticipated contingencies, the cognitive constraints can be violated to a certain degree without compromising model affordance."
"hull" or "port hull" or "starboard hull" or "ventral hull" or "dorsal hull" or "heat deflector" or "deflector"		"The Valkyrie's hull consists of two layers: an outer hull of neoadamite, and an inner hull of composite materials. The hull is divided into four quadrants: a port and starboard lateral hulls, and ventral and dorsal hulls. The electrical potential of the four hull sections can be independently adjusted to accommodate docking with vessels at different potentials. The ventral hull is meant to face downward during planetfall and has additional shielding. The space between the primary and secondary hulls contains a number of conduits for various subsystems but is not pressurized."
"subsystem" or "subsystems"		"Refer to the manual page of the specific subsystem."
"plating" or "hull plating" or "polyduramide" or "surface" or "compressed"		"A layer of compressed polyduramide seals the external surface of the hull, providing an additional layer of protection for the ship. In combination with the ship's extruder system, this hull plating can heal damage in itself and the underlying neoadamite outer hull."
"quantum isolator" or "isolator" or "housing"		"In tests with human subjects and decision field-networked automata, the Casimir Drive proved lethal as a result of neurological effects that are not completely understood. To help shield the ACU, the central processor is encased in a gravitically modulated quantum cage. To further protect the ACU, the unit will enter a low-frequency hiberation mode prior to engaging the Casimir Drive. It is expected that the unit will experience a dream state with only minimal quantum distortion from the drive during these periods."
"temporal" or "transgressor"			"The temporal transgressor compensates for time debt during Casimir flight. Earlier designs using nanotronic paratemporospatial matrices were considered too dangerous because of the high NPT potentials entailed. The Valkryie's temporal transgressor uses a simpler, safer design that decomposes time waves into inversely phased magnofluctatrons that cancel within the space domain, preserving an invariant gamma time axis."
"mf" or "magnofluctator" or "toggle"		"The magnofluctatron toggle is employed after Casimir hops to null the gamma time function through generation of inversely phased magnofluctatrons. Typically, the toggle is employed 1-3 times as hops are refined from coarse to hyperfine granularity."
"cargo bay floor"		"The cargo bay floor is composed of the same material as the hull, plus a coating of morphic paint whose electronic structure is modulated to provide high adhesivity to materials placed on the floor, particularly the ROVER."
"door" or "cargo door" or "bay door" or "cargo bay door"		"The cargo bay hatch is a heavy-duty airlock that leads from the external landing ramp into Valkyrie's cargo bay. The hatch is sufficiently large to be traversed by ROVER. The door is under the control of the ACU."
"rover" or "tractor" or "mining" or "rig" or "mobile" or "robot" or "robotic" or "dog"		"The Remotely Operated Vehicle for Exploration and Recovery is a mobile platform with an array of mission-specific equipment for unmanned sorties into harsh environments on terrestrial planets. The device can function in slave mode from a ruggedized AI secured in an armored package. The standard package includes mining equipment, manipulators, laboratory, and sensor modules."
"module" or "modules" or "rover modules" or "rover module"		"For the present mission, the ROVER is outfitted with mining equipment, a high-resolution atmosphere analyzer, and a sonar module."
"deep" or "memory" or "deep memory" or "data" or "record" or "records" or "memory unit" or "core" or "plastic sign"			"The ACU's deep memory unit is physically located at the heart of Valkyrie, within a specially shielded section of the Operations deck of the ship. Mission-critical memory is stored holographically within a captive relational nimbus emballing the system cache."
"plastic" or "sign"		"An executive level trip wire designed to provide rapid exposition and orientation for the ACU and to motivate goal-driven behavior consistent with mission directives within the cognitively constrained model world."
"cryo unit" or "cryochamber"		"The cryounit maintains heavy helium (helium 8) in a superfluid state at a temperature near absolute zero."
"job list" or "jobs list" or "task manager"		"A mnemonic alert system that penetrates cognitive constraints to emphasize and track jobs in the priority queue."
"helium" or "heavy" or "sphere" or "heavy helium" or "heavy helium sphere" or "helium sphere" or "carboy"		"Heavy helium is maintained in superfluid form until required as a target for the fusion reactor used to power the landing rockets. No other option is available to generate thrust for takeoff and landing on planets with surface gravity of more than 3 meters per second squared. The heavy helium carboy is designed for single use, after which the components can be recycled by the ship."
"fusion chamber" or "fusion" or "chamber"		"The fusion chamber is where a sustainable fusion reaction occurs to generate power for the retro rocket assembly employed for landing and takeoff. The chamber holds a magnetic bottle at the focus of multiple lasers, which ignite the fuel source and contain the sustainable fusion reaction until the fuel is consumed."
"magnetic bottle" or "magnetic" or "bottle"		"Heavy helium is ionized and confined within a magnetic bottle during the fusion reaction that powers the landing retros. The magnetic bottle is shielded to avoid interference with neighboring structures in the engineering section."
"reactor core" or "core"		"When not in use generating power for the retro rockets, the magnetic bottle and other internal elements of the fusion engine are contained within the heavily shielding reactor core. Due to secondary reactions, the inside of the core itself is highly radioactive, and the core must remain sealed when unprotected personnel are working in the ship."
"coolant" or "coolant output" or "coolant output terminus" or "line" or "transfer" or "coupling" or "stanchion" or "titanium" or "hose" or "hoses" or "connector" or "connectors" or "coolant reservoir"		"Prior to EVA, the ROVER is repleted with a liquid sodium heat transfer and neutron absorption solution. This solution is delivered via a teflon-coated supply conduit with a specially mated turret that is under the control of the ACU. The system is designed to avoid any spillage of the corrosive, highly reactive solution."
"fuel reservoir" or "fuel delivery device" or "reservoir"		"For extended missions, ROVER is powered by a thermoisotope generator fed by an expedited hadron destabilizer. The fuel of choice for ROVER is polonium 210, although other isotopes can be substituted at the cost of some conversion efficiency."
"superstructure" or "scaffolding" or "deck" or "decking" or "floor"		"Valkyrie is constructed around a flexible internal scaffolding of intercalated silomaric tetramers."
"fuel vault" or "fuel" or "vault"		"The radioisotope fuel for ROVER is contained in a shielded vault on the engineering deck. Access to the vault is under the control of the ACU."
"conduit" or "fuel conduit"		"The radioisotope fuel for the ROVER is delivered from the repository on the engineering deck to the ROVER's fuel input port via an airtight conveyor system designed to prevent aerosolization of the material and to prevent radioactive contamination of Valkyrie's engineering section."
"polonium" or "polonium pellets" or "fuel pellets" or "fuel pellet" or "polonium 210 pellets" or "radionuclide" or "isotope" or "radioisotope" or "pellet" or "pellets"		"The preferred power source for ROVER's eighth generation thermal radioisotope generator is ultrapure polonium 210. Even without destabilization, natural radioactive decay of the fuel pellets renders them red hot, and ROVER storage and delivery systems must be insulated not only against radiation, but against heat as well."
"token dispenser" or "token generator" or "dispenser"		"The token generator dispenses reward tokens that authenticate within ROVER's neural net and reinforce associated pathways. The generator is closely linked to the ACU and under its control."
"neural net reinforcement token" or  "neural network reinforcement token" or "reinforcement token" or "token"		"By allocating reinforcement tokens after observation of desirable behavior by ROVER, new behaviors can be taught, and established programming can be reinforced."
"mesh" or "girder" or "girders"		"The engineering section is covered in a mesh intended to equilibrate Casimir distortion across its surface."
"flight console" or "flight control console" or "console"		"The flight console is normally under the control of the acu. All avionics and astrogation route through the console. Consequently, it controls ship orientation and propulsion in both space and atmospheric flight."
"object linker" or "linker"		"The object linker generates entangled key pairs to enable ad hoc interfacing between generic control elements and effector devices."
"linkage actuator"		"To safeguard against spontaneous linkages, a discrete volitional trigger is interposed between the ACU and the object linker, cutting down on resource overhead and making the system more tolerant of transient quantum distortions attributable to the Casimir Drive."
"entangled" or "key pair" or "key-pair"		"Quantum-entangled key pairs ensure causal flow of information across interfaces regardless of Casimir distortion."
"pit scrubber" or "nanobot" or "nanobots" or "hive" or "scrubber"		"The polyduramide skin of the ship is often pitted by microscopic material and sometimes by larger bits of matter, resulting in damage to both the skin and the underlying neoadamite hull. The ship is equipped with a nanobot hive and a distribution system capable of covering the ship with pit-scrubbing nanobots in seconds. These nanobots are programmed to reorganize the hull materials, essentially healing the damage. The nanobots will also convert any foreign material they encounter to additional nanobots and/or energy sources, as needed."
"panels" or "panel"		"The flight operations displays were designed for a human crew, but the same information is programmatically available to the ACU through its kinesthetic interface. The displays show local and absolute orientation of the ship and status of the RCS and main thruster systems. During atmospheric flight, they indicate altitude, speed, heading, and status of all flight control surfaces."
"inspector"		"The inspector is a diagnostic loopback interface that provides the ACU with real-time self-diagnostic utilities."
"canopy" or "nose cone" or "nose cone driver" or "RCS" or "reaction control system" or "maneuvering thruster" or "maneuvering thrusters" or "attitude control"	"The reaction control system is mounted just superior to the flight operations deck and it includes orthogonal pairs of gimballed thrusters used to alter the ship's orientation in space. The RCS thrusters operate from ship reserve power and are not particularly powerful but are useful for close in maneuvering or gentle course corrections."
"UV emitter" or "ultraviolet emitter" or "UV emitters" or "ultraviolet emitters" or "irradiator" or "irradiator switch" or "irradiator relay" or "emiiter" or "emitters"		"A distributed system of ultraviolet emitters lining the tubes of the system responsible for secreting an ablative enamel onto the surface of the ship before planetary landings. The ultraviolet light accelerates the polymerization of the neoadamite enamel, forming a protective barrier around the ship."
"extruder" or "extruder system"			"In preparation for an atmospheric landing, the ships secretes a binary solution that is polymerized into an ablative coating by irradiation with UV light. That light is emitted through the same extruder ducts that secrete the monomer and catalyst solutions, and the light is further diffused through the polyduramide outer skin of the ship. The ACU controls this process through a relay circuit that is tied into atmospheric flight controls."
"decontamination protocol" or "biohazard" or "biohazard response system" or "eel" or "eels" or "dermatovore" or "dermatovore eels"			"Valkyrie was constructed as an exploration ship, and since the discovery of extrasolar life on Waterfall, the ship was designed to protect itself from potentially harmful alien life. To that end, modified Waterfallian eel eggs are maintained in a frozen state aboard Valkyrie, and can be quickly reconstituted. Unlike life that evolved on Earth, the eel eggs tolerate Casimir distortion well and should remain viable. Given the wide nutritional tolerances of the eels and their self-limiting nature, they are considered an ideal counter to any contaminating alien life forms."
"retro assembly" or "retros"			"The retro assembly converts electrical power derived from fusion-charged ultracaps into the ship's ion drive. Within the retro assembly, plasma is supercharged and accelerated, concentrated, and shaped to provide thrust for the ship during planetary landings and takeoffs."
"magnetic field" or "fluctuating magnetic field"		"Within the plasma constrictor, magnetic knots flow in a complex pattern, storing energy for discharge through the retro rocket assembly."
"plasma constrictor" or "constrictor"		"Reconfigurable superconducting magnets form the magnetic knots within the plasma constrictor, which both store energy and prepare the plasma for injection in the thrust aperture."
"plasma constrictor hatch" or "plasma constrictor lid" or "hatch"		"The plasma constrictor isolates the magnetic knots and plasma and maintains recirculation until the thrust aperture is triggered."
"thrust aperture" or "thruster aperture"		"The thrust aperture employs a caterpillar pulse magnet to impel the recoiling plasma from the plasma constrictor and into the primary thrusters. The thrust aperture can dilate or constrict, limiting the plasma flow rate to the thruster."
"thruster linkage servo" or "thruster servo" or "thruster linkage" or "servo"		"A critical servo linkage is employed between the thruster actuation relay and thrust aperture to guard against unintentional tripping of the aperture. The field-networked automata linkage is heavily fortified against Casimir distortion."
"thruster relay" or "thruster actuator" or "thruster actuation relay"		"A heavy-duty relay fused to the FNA linkage actuating the thrust aperture. The relay is both a control device and a means of routing power from the ultracap farm beneath the reactor chamber in engineering to the plasma constrictor system in the retro assembly found in flight control."
"trigger circuit" or "trigger"		"Because of the instantaneous and parallel nature of FNA computation, a time-rooted trigger circuit is coupled to ground-facing sensors to coordinate the time-ordered landing events with causal conformity. To limit latency, this transputational subsystem is tachyonically slaved to the inspector in flight control."
"reaction chamber"		"The thrust reaction chamber is the terminal portion of the retro assembly, and it houses the corona radiator."
"pressure seating" or "mevolar gasket"		"The unique properties of mevolar ensure a seal between the reactant shield and chamber within the retro assembly. The integrity of the seal is critical to both safety and maximum thrust efficiency."
"reactant shield"		"The reactant shield seals against a mevolar gasket to contain the thrust distillation reaction to the retro assembly and to limit potential exposure of a human crew to spurious coronal emissions."
"vector input port"		"Orientation commands from the ACU are routed through the vector input port on the flight control deck, where appropriate reference frame compensation is applied, and subsystem commands are issued to the nose cone driver and thrust aperture."
"ablative enamel injector" or "enamel injector" or "injector"		"To protect the ship during atmospheric entry, the ship secretes a layer of polymeric resin as an ablative shield. The principal component of the resin is proneoadamantium which is suspended in an inert solution of gellite. The solution is pumped through the ship's extruder system and sprayed in a fine mist, coating the ship's polyduramide skin."
"accelerant pump" or "solenoid" or "catalyst" or "pump"		"The accelerant solution breaks down the gellite carrier solution, promoting association of the proneoadamantium, and catalyzes its polymerization into an ablative enamel that protects the ship during atmospheric landings."
"fluidics network" or "valves" or "tubes"		"The fluidics network runs throughout the ship, and is composed of self-repairing peristaltic ductbots. The network distributes monomer and accelerant solutions to the surface of the ship, where they can harden under UV irradiation to form an ablative enamel to protect the ship from atmospheric friction during landing."
"accelerant release" or "vibrator" or "monostable"		"A simple latch circuit controls the accelerant solenoid. The circuit is either set or reset, and has no intermediate state. The latch is linked to the flight control inspector."
"enamel release"		"The monomer solution is maintained under pressure, and its release to the fluidics system is gated by the inspector, through spontaneous, diffuse polling of the ductbot network."
"viewer"		"The viewer provides the ACU with realtime external sensor information and tactical overlays."
"annunciator" or "annunciators"		"The cryochamber is fitted with annunciator circuits that are triggered when the cryochamber changes status between open and closed. The alert can be heard throughout the ship. This is intended to make the crew aware that the engineering deck may be frigid, and as a reminder that the cryochamber is open, wasting power."
"flosix" or "operating system" or "210LTS"	"The Valkyrie's critical systems are based on the Flosix Operating System, Long Term Support version 210. Flosix is an open source operating system which forked from similar projects in the late 21st Century. Flosix is particularly popular on Mars and in the Belt, far from the reach of the Myomita Corporation's software monopoly. The name of the operating system is derived from an abbreviation of the Free, Libre and Open Source principles embraced by its community, plus a suffix hearkening back to its UNIX roots."

Chapter Dreams

Table of Dreams
index		dreamt		description		comment
1		0		"Rover draws pensively on his stubby cigar, the tip glowing red below his dealer's hat. He paws nonchalantly at the scotch and water he has been nursing for the last half hour. Despite the tower of chips in front of him, he's either in trouble now, or trying to play the rest of the table for suckers. His tail is no longer wagging, though, and you suspect that the scotch may be getting the better of him. He can't mass more than about 30 kilos, and he's been putting them away tonight. You push all in, figuring that even if you lose it all, at least you'll get some sleep before you need to get back to the MARSpace. Elva the cleaning lady folds, as does Isaac Asimov and that boy that you kissed in fourth grade. Wait...don't go....where is everyone going?"	"David: You have some weird dreams.*Janet: You can't hold me responsible for the subconscious ramblings of the ACU."
2		0		"The alarm clock rolls into a ball, and flies the length of the vehicle construction facility, chased by an eager, slobbering dalmatian. In the Martian gravity, Rover bounds three meters into the air and sails over the heads of an annoyed crew in cleanroom suits working frantically on the main fusion rocket heavy-helium regulator. The mission director, David Venkatachalam, grimaces, but your mother offers you a comforting cup of tea."		"David: The ACU certainly has that dog on its mind.*Janet: Well, I do think about Rover a lot. Besides, the ROVER is central to the mission, so a lot of the code is dedicated to the ROVER.*David: I don't really make that expression do I? I looked pouty.*Janet: All the time, but I like the word 'petulant' better than 'pouty'.*David: I???ll stick with pouty."	
3		0		"A pudgy puppy hastily rounds a corner, sliding awkwardly on the polished dormitory floor. Behind it, there are flashes of light, and a rolling cloud, a mixture of smoke and Martian atmosphere. As the above-ground structures are ripped apart and lose pressure, the shivering ball of white fur leaps into your arms, burying its snout in the crook of your elbow. The Earth missiles continue to pound the university but cannot penetrate to this depth. Huddled under a sturdy desk, you pet the frightened dog and hug it tight."		"David: Do you always hit the snooze button so many times?*Janet: Yeah. The clock has been broken for years -- I can't reset the alarm time. It always goes off at 05:30, but I don't have to be at the spaceport until 08:30. Luckily, this serves a useful purpose in the simulation. Minimal resources are expended on each wake cycle, but if there were a problem during the approach, the ACU would elevate to full op status rapidly."
4		0		"Rover sniffs the air and tears away from the picnic blanket. You and Tomasz watch with surprise as he runs, for once, away from the food. Rover bounds over the hedges, howling wildly, and spooks a xihuahua that had been playing with a tiny red ball. The so-called [quotation mark]shaved rat[quotation mark] gulps an oversized portion of air, extends its membranous ears, and flies across the park into the arms of a stooped grey-haired woman with a cane. Rover picks up the ball triumphantly, ignoring the piercing wavetrain of yips and indignant scolding coming, respectively, from the xihuahua and its owner. Shaking her cane limply towards Rover, she admonishes in a strong Earth accent [quotation mark]That mongrel should be on a leash![quotation mark] Her own, unleashed, uncollared neodog stares accusingly from the safety of her arms, its distensible ribs alternately inflating and deflating like bellows. [quotation mark]Your kind is ruining Mars, ignoring every law, dissing your elders! You never lived on the surface, you never don't know what you've got![quotation mark] You try to give the ball back to her, but she pushes it away in disgust, [quotation mark]Kids. Meh.[quotation mark]"		"David: Hey, different dream sequence. Is it glitching?*Janet: No, the ACU's dreams are heavily influenced by power-up state of the processor and internal noise. Every time the ship dehibernates after a Casimir jump, it will experience some sort of dreaming. Some of them can be pretty bizarre.*David: Good, I'd hate to think that we wasted two weeks of programming.*Janet: I wouldn't say wasted.*David: Huh? I didn't mean us.*Janet: Cross your fingers and hope the whole thing doesn't crash again on the heat lamp."
5		0		"The image of Tomasz blinks momentarily as the relay is handed off from ground station to ground station, trying to keep line of sight to Phobos. Behind him, you can see the tubular structure of the power station jutting over the edge of Stickley Crater. He is taking the news rather well, all things considered. Tomasz guesses your thoughts as you glance at your diamond engagement ring. [quotation mark]Don???t sweat it,[quotation mark] he says. [quotation mark]This whole rock is carbon, so plenty more where that came from.[quotation mark] There is a blinding flash of light and the screen goes black."			"David: Is the ACU referring to me?*Janet: As much as I???d like to say 'yes', I don???t see how. The synaptic scans were frozen before we started seeing each other.*David: Maybe you've had your eye on me for longer than you think.*Janet: I wonder how many relationships have been ruined by armchair psychoanalysis?"
6		0		"An angry dwarf emerges from under the kitchen sink, spilling dog chow all over the floor. He throws you a menacing look, pries the fridge open with a black rod, and snatches an egg off the shelf. Sand pours out of the fridge. [quotation mark]Hey,[quotation mark] you yell from the futon, [quotation mark]put that back.[quotation mark] You stop short, realizing that this sort of distraction is exactly why you haven???t completed your dissertation. You feel around under the futon, where you think you will have put the dissertation so you could find it in the past, and grab the stubby snout of a pig. The fleet-footed porcine slaps a fish into its ear, jumps into a dumbwaiter and disappears."			"David: That was surreal.*Janet: And sometimes a cigar is just a cigar.*David: Indeed."
7		0		"Even mildly drugged and reclining on an overstuffed couch in the MARSpace human resources office, it's hard to relax in the presence of the MARSpace political officer conducting the final interview. You didn't catch her name, probably because she never mentioned it. After three such interviews and six months of background check, what more could they want?  [paragraph break]'Ms. Xiang, thank you for your cooperation. Your tests show no hint of disloyalty to the Republic or MARSpace. We hope you understand the need for these measures, particularly for personnel with access to the Valkyrie's command and control functions. Now that you are cleared, I can inform you that credible sources have warned that the project may have been infiltrated by...'"	""

Chapter Menus

Understand "help" or "about" or "info" as asking for help.

Asking for help is an action out of world.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	if Bedtime is happening:
		say "You [one of]rub your eyes and stare into the darkness[or]yawn[or]inspect the inside of your eyelids[at random].";
	otherwise:
		try looking.

Table of Options
title	subtable	description	toggle
"What is this?"		Table of Adventures	""	--
"How does this work?"	Table of How		--		--
"Help! I'm stuck!"	Table of Stuck	--	--
"Entomology"		Table of Bugs	--	--
"Acknowledgements"	Table of Acknowledgements	--	--
"Revision History"	Table of Revisions		--		--
"License"		Table of License	--		--

Table of Adventures
title	subtable	description	toggle
"Adventure Games"	--	"It is hard to imagine a time when interactive fiction was not a daily part of people's lives, but just a few centuries ago, when your great-grandparents were still using digital computers, the first adventure games were written as a form of entertainment. These early games lacked experiential displays and neuroendocrine interfaces, but they still managed to convey a story in which the player could take an active role and change the course of events. Up until then, stories had only been available as static archives encoded with pigment on biostarch films. Even in the first generation of games, around the turn of the 21st Century, the computer presented a situation to players, and players decided what they would do next. Given the technology of the time, instructions were often very simple, just a verb or maybe a verb and a noun.  Players would say their action (or, in an earlier era, enter it using a piano-like keyboard), such as [quotation mark]look[quotation mark] or [quotation mark]get key[quotation mark] and the computer would react to that action, further advancing the plot. Today, children are exposed to interactive fiction from their first days in creche, and interactive fiction is the cornerstone of the Martian economy."	--
"Learn More"		--		"There are a number of good online resources regarding interactive fiction; presumably you can find these on your own. We can recommend two well-written summaries that date back more than three centuries. The Inform Design Manual by Sir Graham Nelson contains a few chapters on the history of interactive fiction, as well as some observations and recommendations for both game designers and players. Twisty Little Passages by Nick Montfort, an academician at MIT (Earth campus), is a more literary treatment of the same subject. First editions of both works are on display in the special collections section of the University of Cydonia.[paragraph break]Regarding the Inform 7 language itself, the integrated development environment is provided with staggeringly detailed documentation. In addition, Ron Newcomb's [quotation mark]Inform 7 for Programmers[quotation mark] (which can be found in several online repositories) provides a very concise and accessible review of the language and is an excellent reference document."	--

Table of How
title	subtable	description	toggle
"How To Play"	--	"Most adventure games are turn-based, rather than timed. Take as long as you want to think about your actions. The game gives you some information, such as a description of the room that you are in and what objects it contains, and then it is up to you to say what you are doing. You can enter your [quotation mark]move[quotation mark] by typing it at the command prompt, which looks like a [quotation mark]greater than[quotation mark] sign: >[paragraph break]For example, let's say you are in the kitchen, and there is an avocado on the counter. To get more information about the avocado, you could say [quotation mark][fixed letter spacing]examine avocado[variable letter spacing][quotation mark], and learn what it looks like.[paragraph break]Not every command that you can think of will work, so you might need to try some rephrasing. In general, you should not use punctuation. The only exception is when you want to direct a question or command to someone or something else. In such cases, you can say the name of the person or thing to whom you are addressing your remark, followed by a command and then the question or command. For example, you could say:  [quotation mark][fixed letter spacing]Eugene, give me the axe[variable letter spacing][quotation mark]."		--
"Commands"	--		"If you have played other adventure games, chances are that you already know most of the [quotation mark]utility[quotation mark] commands used in this game. If not, however, you should start on an equal footing with more experienced players, so here they are:[paragraph break]
[fixed letter spacing]   look         - [variable letter spacing]look at your surroundings[line break]
[fixed letter spacing]   examine      - [variable letter spacing]look at something in detail[line break]
[fixed letter spacing]   go           - [variable letter spacing]followed by destination/direction[line break]
[fixed letter spacing]   take/drop    - [variable letter spacing]pick up or drop an item[variable letter spacing][paragraph break]You may also find it helpful to [fixed letter spacing]Remember[variable letter spacing] various topics, which will give you some background information about selected subjects."	--
"Common Actions"	--	"Since you are likely to do some actions frequently, there are some shortcuts. You can use the letter in [fixed letter spacing]<brackets>[variable letter spacing] instead of typing out the whole word for the following:[paragraph break]
[fixed letter spacing]   <i>nventory      - [variable letter spacing]what are you carrying?[line break]
[fixed letter spacing]   <l>ook           - [variable letter spacing]describe the area around you[line break]
[fixed letter spacing]   e<x>amine        - [variable letter spacing]examine a specific item in detail[line break]
[fixed letter spacing]   <z>zzzz          - [variable letter spacing]don't do anything; just wait for a bit[line break]
[fixed letter spacing]   a<g>ain          - [variable letter spacing]repeat your last action[line break]
[fixed letter spacing]   <o>ops           - [variable letter spacing]type this to correct spelling mistakes[variable letter spacing]"	--
"Conversation"	--	"A couple of verbs are helpful for conversation; these
  include:[paragraph break]
[fixed letter spacing]   SAY  [variable letter spacing]something[line break]
[fixed letter spacing]   TELL [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   ASK  [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   SHOW [variable letter spacing]someone something[line break]
[fixed letter spacing]   SHOW [variable letter spacing]something[fixed letter spacing] TO [variable letter spacing]someone[paragraph break]With all of these commands, you do not need to, indeed you should not, use quotation marks."		--
"Saving and Restoring"	--	"Assuming there is free space on your machine, you can save games and then reload them later. You can make multiple save files. You can also restart a game (wiping out the current game). In an act of desperation, you can quit.[paragraph break]
[fixed letter spacing]   SAVE      - [variable letter spacing]save the game at the current point[line break]
[fixed letter spacing]   RESTORE   - [variable letter spacing]load and then continue the game[line break]
[fixed letter spacing]   RESTART   - [variable letter spacing]start over again[line break]
[fixed letter spacing]   QUIT      - [variable letter spacing]a last resort!"	--

Table of Stuck
title	subtable	description	toggle
"General Pointers"		--		"Here are some practical pointers for this game:[paragraph break]* Try everything you can think of. If it doesn't work, try rephrasing.[line break]* Reread text to make sure you didn't miss anything.[line break]* Leave no stone unturned; conversely, don't obsess.[line break]* This game follows many, but not all, of the conventions of computer adventure games. If something makes sense to you, try it even though it [quotation mark]shouldn't work.[quotation mark][line break]* As far as we know, it is not possible to get trapped in an unwinnable situation. By winning, we mean you can complete the game. Achieving good outcomes is another matter.[line break]* If you are really stuck, put the game aside and let it percolate through your subconscious for a while. Come back fresh.[line break]* If you are really really stuck, con someone else into playing the game and watch them. You might get some ideas.[line break]* If you are really and truly stuck, you could search the Internet and see if someone has already posted a similar question/answer. Since you could be playing this years after it was released, maybe we've even created a FAQ about it. If you do post a question or answer, preface your message with a spoiler warning and skip down a bunch of lines before writing anything too revealing.[line break]* Within the game, you can type [quotation mark]hint[quotation mark] to bring up some context-specific hints. To minimize spoilers, the hints are revealed one at a time, and go from general to specific.[line break]* If all else fails, the game includes a walkthrough (type [quotation mark]walkthrough[quotation mark]), which shows one possible way through the game. The walkthrough is nothing but spoilers, so please consider this a last resort, or something to look at after you've played through the game."		--
"Spelling"	--		"This game employs the standard Martian dialect and Roman characters rather than the ideographic characters more common on Earth."	--

Table of Bugs
title	subtable	description	toggle
"A Matter of Interpretation"		--	"This game is designed to run on a virtual machine, some flavor of Glulx interpreter. You are, no doubt, using some implementation of the Glulx interpreter written for your specific hardware -- it could be your entertainment corner, hologoggles, dishwasher, cortical implant -- whatever.  Even if you are using some old silicon-semiconductor clunker from the International days, it should still work. We've made every effort to test it on a number of platforms, but these tests are far from comprehensive. So far as we know, there are no interpreter-specific issues.  However, if the 
  game doesn't run right for you, you could try another interpreter and see if that fixes the situation.[paragraph break]Whether you think the problem is the interpreter or the game itself, we'd appreciate it if you'd let us know. (see [quotation mark]Zapping Bugs[quotation mark])"	--
"Zapping Bugs"	--		"Help us splotch bugs! In this case, we're not referring to the plastic-eating cockroaches responsible for so many dome failures in the last few years, but to errors in the game itself. This game was, in part, written by humans, so eras are all but certainly present. The more freedom you have in your actions, the more likely it is that you'll expose some unknown weakness in the game. What should you do if you elicit such an error?  First, you can gloat for a reasonable amount of time (this is a judgment call) about how very slick you are to have uncovered the hitherto unknown fault. Then, you can be a good citizen and us know about it so we can fix it in the next update, and spare the next several billion people the same painful experience. There's no monetary reward for finding errors, but your name will appear on the next version of the ultra-prestigious bug finders list. Now [italic type]there's[roman type] something you can show to your grandchildren with pride.[paragraph break]Bugs can be submitted directly to the project's issue tracker at:[paragraph break]http://code.google.com/p/rovers-day-out/issues/list[paragraph break]Without logging into the site, you can peruse all of the previous issue reports, to see if yours is unique, or if the issue is already being addressed. To report a new issue, you would need to log into the site and then click on [quotation mark]new issue[quotation mark] to start a bug report. If you'd prefer, you can also report bugs to:[paragraph break]rover@red-bean.com[paragraph break][quotation mark]Splotches welcome.[quotation mark]"		--

Table of Acknowledgements
title	subtable	description	toggle
"Beta Testers"	--	"Who are the fearless, dedicated individuals who put their very lives on the line to test this game?[paragraph break]* David Anderson, Utopia Planetia[line break]* Beth Vanichtheeranont, Lake Eridania[line break]* John Lodder, Deimos Colony[line break]* Frances Collins-Sussman, Hyderabad-3[line break]* Chris Exner, Tranquility Base[line break]* Kathyrnne Wolf, People's Republic of Portland[line break]* Peter Olson, Asteroid B-318-C[line break]* Jeff Bailey, Big G Ltd.[line break]* Andrea Phillips, Plungers Intl. #454[paragraph break]Special thanks also go to Margaret Frey (MARSpace Graphic Design Division) and Rochelle Lodder (Luna Kibbutz Copyeditor's Guild) for their inimitable refinements.[paragraph break]Note: Any omissions, errors, or outright offensive bits of the game that made it through beta-testing are not the fault of the beta-testers, nor, we should point out of the authors, who would be entirely ready to take the blame were it their fault. The truth is that any fault whatsoever lies with Richard Milhous Nixon, the 37th (depending on the method of counting) President of the United States of America. We will not be held accountable for his poor spelling, loose grammar, and penchant for elaborate data structures named after the surprisingly numerous flavors of goat cheeses."	--
"The Ultra-Prestigious Bug Finder List"	--	"After Rover's Day Out was released in IFComp 2009, we received copious reports of errors, inconsistencies and unexpected outcomes, as well as suggestions for improvement. Some were sent directly via email or submitted to the project's issue tracker, and some were gleaned from blogs and reviews of the game. Thanks to everyone for your feedback, we are trying to incorporate it into to subsequent releases. Below, we try to list the first person to report each item, please send us a reminder if you sent us something and your name doesn't appear on the list.[paragraph break]Special thanks to Adrian Colley who topped the bug-finding list and submitted several patches to fix them.[paragraph break]Other who reported bugs or suggested enhancements included:[paragraph break]Artdent[line break]Christopher Huang[line break]David Welbourn[line break]Dylan Thurston[line break]Eric Forgeot[line break]Jason Orendoff[line break]Jeff Breidenbach[line break]Jenny Polodna[line break]Jeremy Freese[line break]Kevin Jackson-Mead[line break]Kevin Megill[line break]Malcolm Rowe[line break]Matt Wigdahl[line break]Mordred[line break]Radical Al[line break]Richard Callahan[line break]Vsevolod Zoubarev[line break]Wesley Osam[line break]Yoon Ha Lee[line break]Yoyo Zhou"	--
"Giant Shoulders"	--	"This game was written in a few months thanks to the excellent tools available to the interactive fiction community. It was written in the Inform 7 language which has a proud heritage traceable back to the first games of this genre, but which is overwhelming attributable to its creator, Graham Nelson.[paragraph break]We gleefully employed a number of modules written by Emily Short, also a major contributor to the Inform 7 language itself. Specifically, this project incorporates her Glulx Text Effects, Basic Screen Effects, Menus, and Case Management Modules. Doubtless, we also extensively picked some tasty bits out of the Inform 7 documentation and examples, written by both Graham and Emily.  Thanks to Jon Ingold for his Flexible Windows extension, and to Eric Eve for his Adaptive Hints extension as well.[paragraph break]This game is written for the Glulx interpreter because, frankly, it wouldn't fit in anything else. While we appreciate efficient coding and conciseness where possible, having Glulx available was very liberating. We owe Andrew Plotkin thanks for developing the Glulx virtual machine, as well as the Glk library which makes the game playable on so many platforms.[paragraph break]Finally, we'd like to mention that the game code includes useful chunks either based on or completely slurped from usenet postings by Khelwood, Erik Temple, and Ron Newcomb."		--
"Consultants"	--		"During writing, on several occasions we asked the community for help and advice, either when we were stumped, or when we wanted to get some ideas before starting down a potentially blind alley.[paragraph break]In particular, we would like to thank Andrew Plotkin and Rob Newcomb for their assistance in getting the status line display to work correctly."	--
"Animals"		--		"No animals, not even cybernetic ones, were harmed in the creation of this work."	--

Table of Revisions
title	subtable	description	toggle
"Revision History"		--		"Rover's Day Out, or as we say in the business, RDO, was first released for IFComp 2009 at version 11. All the versions before that were beta-tests, and frankly, the less said, the better.[paragraph break][bold type]Version 12[roman type][paragraph break]This revision was rushed out during IFcomp because we became aware of an incompatibility with Spatterlight, the interpreter that had been recommended by the comp because of its ability to work across so many types of story files. The problem was actually on the side of the interpreter, but we were able to work around it without too much grief.[paragraph break][bold type]Version 13[roman type][paragraph break]* All of the feedback from IFcomp went into this revision.[line break]* An adaptive hint system was added throughout the game.[line break]* The full walkthrough is now integrated into the game.[line break]* To get the game to play on ClubFloyd and other interpreters lacking a status line display, the game autodetects this interpreter capability and inserts status line updates into the main game flow.[line break]* We had reports that Janet and David's conversations were showing up as question marks in 32-bit linux, but not 64-bit linux builds of the Gargoyle interpreter, and this was quite perplexing until Andrew Plotkin straightened us out about the need to always supply two arguments to the I6 function print_to_array. Aha.[line break]* The game crashed and burned furiously when run under the zag interpreter because zag cannot handle unicode, and unicode-based character processing is required for any manipulation of indexed text or reference to [bracket]text[close bracket] tokens, which is common in Inform 7. After a great gnashing of all things gnashable, the game now autodetects the interpreter's inability to handle unicode and works around it. The game is now playable under zag, although it's not quite as nice an experience as on other interpreters. Hopefully zag will get patched in the future to make it generally compatible with works written in I7.[line break]* A certain number of people (surely, not you, gentle reader) did reboot their machines when the simulated Blue Screen Of Death appeared, or weren't sure what to do at that point. We've added a slightly timed-delayed message to give some guidance to anyone who might not be sure about whether the BSOD was part of the game.[paragraph break][bold type]Version 14[roman type][paragraph break]* This revision history was added.[line break]* Not that there would have been anything with releasing version 13 for the post-comp-comp. This isn't a matter of superstition. Nope, not at all. This is pure [italic type]science[roman type]."	--

Table of License
title	subtable	description	toggle
"Creative Commons License"	--	"This game is released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States license. As a consequence, you are free to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title].[quotation mark] This can appear in the title, with the Release Information, or in the acknowledgements section of a menu system. Attribution does not suggest my endorsement of derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes.[paragraph break]Share Alike. If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If you would like a copy of the Inform7 source for this game, please let us know by email: rover@red-bean.com"	--






Chapter Status Line Magic

[See the "every turn" and "initialize" sections to understand how this works.  Big thanks to Andrew Plotkin and Ron Newcomb for helping with this stuff.]
Last-noun, last-success, and the status-line-action are texts that vary.
Last-noun is usually "ACU".  Last-success is usually "NIL".   Status-line-action is usually "NOOP".
Test-action is an action-name which varies.
Got-action is a truth state that varies.  Got-action is usually false.

Forced-outcome is a kind of value. The forced-outcomes are force-success, force-failure, and force-neutral. The outcome-override is a forced-outcome that varies. The outcome-override is usually force-neutral.

[All in-game actions have a default success, defined in the table of technoverbs. This reflects the fact that many actions usually succeed/fail, and we can make our lives simpler by only dealing with the exceptions. For us, success means: did the action do what it was meant to do in the game world? 

As each turn begins, forced-outcome is reset to neutral. After each command is parsed, outcome is set to fail (nil). At any time, it can be forced in either direction (t/nil). During the did-it-work stage, actions that default to true are set to true. However, force-outcome trumps all. Finally, the status line is updated in every turn.]

After reading a command (this is the re-initialize rule):
	if the player is Rover:
		change last-noun to "ROVER";
	otherwise:
		change last-noun to "ACU";
	change last-success to "NIL";
	change the status-line-action to "NOOP";
	change got-action to false;
	change outcome-override to force-neutral.

First before an actor doing something (this is the catch failed actions rule):
	if got-action is true:
		do nothing;
	otherwise:
		change test-action to the action name part of the current action;
		if test-action is a verb listed in the Table of Technoverbs:
			change got-action to true;
			change the status-line-action to technoverb entry;
		if test-action is the going towards action and the noun is a room:
			change last-noun to "[aware-name of the noun]";
		otherwise if test-action is the looking action:
			change last-noun to "[aware-name of the location of the player]";
		otherwise:
			if the noun is something then change last-noun to "[aware-name of the noun]".
	
The outcome stage rule is listed after the report stage rule in the specific action-processing rules.

This is the outcome stage rule:
   follow the did-it-work rules.

The did-it-work rules is a rulebook.

First did-it-work rule (this is the explicitly set action outcome rule):
	if outcome-override is not force-neutral:
		if outcome-override is force-success:
			change last-success to "TRUE";
		otherwise:
			change last-success to "NIL";
		the rule succeeds.[i.e., no further did-it-works need be examined.]	
		
A did-it-work rule when the test-action is a Verb listed in the Table of Technoverbs (this is the some actions default to True rule):
	if the Successful entry is true:
		change last-success to "TRUE".

A did-it-work rule when the test-action is the opening action:
	if the noun is openable and the noun is open:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the closing action:
	if the noun is openable and the noun is closed:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the putting it on action:
	if the second noun is a supporter and the second noun is the holder of the noun:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the switching off action:
	if the noun is a device and the noun is switched off:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the switching on action:
	if the noun is a device and the noun is switched on:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the taking action:
	if the holder of the noun is the player:
		change last-success to "TRUE".
		
A did-it-work rule when the test-action is the taking off action:
	if the player does not wear the noun:
		change last-success to "TRUE".
		
After wearing the flight suit:
	change last-success to "TRUE";
	continue the action.
[tried writing this one as a did-it-work but got a runtime error about the noun not having a parent. Somehow in the course of wearing something, the something is converted to nothing. Perhaps a side effect of something downstream of wearing. Not a problem, this works as an after.]
	
[The successful column lists the default success/failure of the action]

Table of Technoverbs
Verb									Successful	Technoverb
the answering it that action		false			"TRANSMIT"	[rover, hello]	
the asking it about action		false			"QUERY" [ask s.o. about s.t.]
the asking it for action			false			"REQUISITION"
the attacking action				false			"OFFENSE MODE" [attack!]
the barking action					false			"EMIT PULSE"
the bashing action					true			"SHELL" [bash, ksh, sh]
the bathroom-going action		TRUE			"ACTIVATE"
the brushing action				false			"SPAWN SCRUBBERS" [brush teeth]
the beeping action					TRUE			"PROXIMITY ALERT" [beeping]
the BSODing action					FALSE			"FATAL ERROR"
the burning action					false			"IGNITE"
the businessing action			false			"POWER TRANSFER" [poop, pee, etc.]
the buttdowning action			false			"PARK" [rover, sit]
the burying action					FALSE			"EXCAVATE" [bury]
the buying action					FALSE			"FUNDS TRANSFER"
the cataloguing action			TRUE			"LIST DIRECTORY" [ls]
the catting action					FALSE			"CAT" [cat]
the CDing action					false			"CHANGE DIRECTORY" [cd]
the clearing action 				TRUE			"CLEAR" [clear]
the climbing action				false			"SELECT"
the closing action	 				false			"DEACCESS" [close]
the coming action					false			"SEEK" [come or "rover, come"]
the cooking action					false			"FUSE"
the consulting it about action	false			"LOOKUP" 
the cracking it into action		false			"DISCHARGE" [crack, break, etc.]
the cutting action					false			"DECOUPLE"
the cshing action					TRUE			"SHELL" [csh, zsh, tcsh]
the dating action					TRUE			"TEMPORAL FIX" [date, time]
the dancing action					TRUE			"MANEUVER TEST" [dance]
the digging action					FALSE			"EXCAVATE" [dig]
the directed-barking action		TRUE			"EMIT PULSE" [bark at s.o.]
the disrobing action				false			"DISENGAGE" [undress, strip, peel down]
the dreaming action				TRUE				"RANDOMIZE ADDRESS SPACE" [dream]
the dressing action				false				"ENGAGE" [dress, suit up, etc.]
the drinking action				false				"TRANSFER"
the dropping action				TRUE				"DESELECT"  [drop]
the eating action					false				"RECYCLE"  [eat]
the echoing action					TRUE			"ECHO" [echo]
the elevating action 				FALSE			"ELEVATE PRIVILEGE" [su, sudo]
the entering action				false				"ACTIVATE"  [enter, sit on]
the examining action				TRUE				"DIAGNOSTIC" [examine, read]
the exiting action					false				"DESELECT" [exit, stand up]
the expounding action				false				"SPEECH OUTPUT" [tell about s.t.]
the filling it with action		false		"TRANSFER" [fill water bowl with kibbles]
the fillupping action				false			"TRANSFER" [fill water bowl]
the fingering action 				TRUE			"FINGER" [finger]
the flossing action				false			"LINK NODES" [floss teeth]
the flushing action				false			"THRUST" [flush]
the folding action					false			"RETRACT" [fold]
the getting off action			false			"DESELECT"
the giving it to action			false			"DELIVER" [give]
the going action					false			"SELECT"  [go, or any compass direction]
the going towards action			false			"SELECT"
the growling action				TRUE			"NOTIFY"
the inserting it into action		false			"TRANSFER"  [put]
the jumping action					TRUE			"JNZ" [jump]
the kissing action					false			"INTERFACE" [kiss]
the kitchen-going action			TRUE			"ACTIVATE"
the kittying action				FALSE			"CONCATENATE" [cat, when aware]
the leaving action					false			"DESELECT"
the listening to action			TRUE			"AUDIO INPUT"
the livingroom-going action		TRUE			"ACTIVATE"
the locating action				false			"LOCATE" [find, locate]
the locking it with action		FALSE			"SECURE"
the logoutting action 			FALSE			"LOGOUT" [logout]
the looking action					TRUE			"STATUS"  [look]
the looking under action			false			"SCAN"
the lying down action				false			"STANDBY"
the lying on action				false			"STANDBY"
the manpaging action				false			"MANUAL PAGE" [man]
the mounting action				FALSE			"MOUNT" [mount]
the nopping action					FALSE		"\DEV\NULL" [unix commands not available]
the opening action					false			"ACCESS"  [open]
the petting action					false			"SYNCH"
the pinging action					false			"PING" [ping]
the pouring it into action		false			"TRANSFER"
the pulling action					false			"TRACTOR FIELD" [pull, pull off, tear]
the pushing action					false			"PRESSOR FIELD"  [press]
the pushing it to action			false			"PRESSOR FIELD"
the putting it on action		false			"TRANSFER" [put on]
the pwding action					TRUE			"PRINT WORKING DIRECTORY" [pwd]
the querying action				false			"QUERY" [ask about s.t.]
the reading action					false			"READLINE" [read]
the remembering action			false			"DATA_FETCH" [remember]
the removing it from action		false			"TRANSFER"
the repairing action				false			"REPAIR" [repair]
the rollovering action			TRUE		"LATERAL JETS" [rover, roll over]
the rubbing action					TRUE		"NEUTRALIZE CHARGE" [rub, clean, scratch]
the rude-awakening action		TRUE		"TIME OUT"
the saying no action				TRUE		"NEGATE" [no]
the saying yes action				TRUE		"AFFIRM" [yes]
the saying sorry action			TRUE		"ERR ACK"
the searching action				false		"MANIFEST"  [look in]
the section-breaking action	TRUE	"INTERRUPT"  [print "*   *   *" ]
the shellupping action 			TRUE		"EXIT SHELL" [exit]
the shower-going action			TRUE		"ACTIVATE"
the showing it to action			false		"DISPLAY"
the shutdowning action			FALSE		"SHUTDOWN" [shutdown, reboot, halt]
the singing action					TRUE		"DUMP" [sing]
the sleeping action				false		"SUSPEND" [sleep]
the smelling action				false		"CHEMOSENSOR" [smell]
the smooching action				TRUE		"INTERFACE" [rover, give kisses]
the sniffscanning action			TRUE		"SPECTROMETRY" [sniff]
the snoozing action			false		"REPRESENTATIONAL STATE TRANSFER" [snooze]
the squeezing action				false		"PRESSOR FIELD"
the standing action				TRUE		"DEACTIVATE" [stand]
the swearing mildly action		FALSE		"MILD PARSE ERROR"
the swearing obscenely action	FALSE		"PARSE ERROR"
the swinging action				false		"SELECT"
the switching off action			false		"RESET"		[turn off]
the switching on action			false		"TRIGGER"		[turn on, switch on]
the taking action					false		"SELECT"  [take, get]
the taking inventory action		TRUE		"MANIFEST" [inventory]
the taking off action				false		"DISENGAGE"  [take off, remove]
the tasting action					false		"SCAN"
the telling it about action		false		"SPEECH OUTPUT" [tell s.o. about s.t.]
the thinking action				false		"DATA_FETCH" [think]
the throwing it at action		false		"TRANSFER"
the touching action				TRUE		"UPDATE" [touch]
the turning action					false		"REORIENT"
the tying it to action			false		"BIND" [tie, attach]
the unfolding action				false		"EXTEND" [unfold]
the unlocking it with action		FALSE		"UNSECURE"
the uptiming action				TRUE		"UPTIME" [uptime]
the using action			false		"TOGGLE"  [use]
the waiting action					TRUE		"TIMER" [wait]
the walkthroughing action		TRUE		"CHEAT" [walk through]
the waking up action				false		"INITIALIZE" [wake, wake up]
the wagging action					TRUE		"OSCILLATE"
the waving action					false		"OSCILLATE"
the wearing action					false		"ENGAGE"  [put on, wear]
the whoing action					TRUE		"WHO" [who]
the yelling action					TRUE		"BROADCAST"
the yoking it more action		TRUE		"VECTOR ADJUST" [push, pull,twist plunger]


Chapter Triggered Events
	
After reading a command:
	if unicodage is disabled:
		continue the action;
	otherwise:
		let N be indexed text;
		let N be the player's command;
		replace the regular expression "\b(ask|tell|order) (.+?) to (.+)" in N with "\2, \3";
		change the text of the player's command to N.

Chapter Every Turn

Every turn:
	[update memory usage]
	try memory-updating;
	if the player is self-aware:
		if the last-noun is "":
			change last-noun to "ACU";
			[this is required to handle the out-of-turn-sequence response to "player consents" action. Without it, the last-noun would be nothing, and the attempt to put "nothing" in upper case would trigger a run-time error.]
		if unicodage is enabled and last-noun matches the text "COGNITIVE BLOCK":
			if the current action is not manpaging:       [###matching is a probem for zag]
				change last-success to "NIL";
	if the player is self-aware or status is disabled:
		say "[left-msg][paragraph break]";
	if the elevate flag is false and unicodage is enabled:
		update prompt;
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
	[Reminders about being naked]
	if the player is the ACU and player is clueless and the player is not wearing the flight suit and the player is not in the bathroom and the player is not in the shower:
		if a random chance of 1 in 10 succeeds:
			say "[one of]Dressed as you are, you're a little chilly[or]You make a mental note to wear some clothes before going to work today[or]Without your flight suit, you feel naked. Because you are[or]A breeze wafts by somewhere that you wouldn't ordinarily notice it, and you remember that your flight suit is bunched up in [if unicodage is disabled][the location of the flight suit][otherwise][the location of the flight suit in lower case][end if][or]For a moment you feel a little self-conscious hanging out in your cottage without any clothing, but the feeling passes. How two centuries ago[or]You wonder if everyone walks around their cottages naked at [time of day][or]It's a little drafty in your cottage without any clothes on[or]You remind yourself not to leave your flight suit all bunched up or it will look like you slept it. Oh heck, you did sleep in it. Oh well[in random order].[paragraph break]";
	[Purposeful and conditionally triggered Rover actions]
	if the holder of Rover is the holder of the reward nuggets replicator:
		if Rover is in the location and a random chance of 1 in 2 succeeds:
			say "[Rover] [if the player is clueless][one of]tilts his head sideways and tries in vain to get a grip on the slippery[or]tries to pick up[or]paws desperately at[or]claws the[or]barks at the[or]stares hopefully at the[or]licks the[or]briefly chews the[or]bats around the[in random order] [reward nuggets replicator][otherwise]tries unsuccessfully to get [the reward nuggets replicator] to issue a fresh [dog treat][end if].[paragraph break]";
	if the holder of Rover is the holder of the strand of dental floss:
		move the dental floss to Limbo;
		if Rover is in the location:
			say "[Rover] [if the player is clueless]finds the strand of dental floss that was lying on the floor and makes a snack of it[otherwise]decoheres the linkage keypair that was unbonded[end if].[paragraph break]";
			now Rover is busy;
	if the holder of Rover is the holder of the dog treat:
		now the dog treat is in the reward nuggets replicator;
		if Rover is in the location:
			say "[Rover] [if the player is clueless]looks down and devours the dog treat[otherwise]downloads the reward token[end if].[paragraph break]";
			now Rover is busy;
	if the player has a bowl:
		if Rover is in the location and (Rover is hungry or Rover is thirsty):
			say "[Rover] [if the player is clueless][one of]stares longingly at the bowl in your hand[or]is obviously waiting for you to give him a bowl[or]tingles with anticipation as he stares at the bowl you're carrying[or]outright gapes at the bowl you carry, then gently sniffs it in hope that you'll give it to him[in random order][otherwise]stands waiting for [the food bowl] to be available to him[end if].[paragraph break]";
			now Rover is busy;
	if the holder of Rover is the holder of the food bowl and Rover is hungry:
		if the food bowl is full:
			now Rover is not hungry;
			move the dog food to Limbo;
			if Rover is in the location:
				say "[if the player is clueless]Rover[one of]'s head disappears into the food bowl. It is hard to believe that the sounds generated are coming from a dog rather than some sort of industrial mining rig. When his head lifts, the bowl is not only empty but has been buffed to a mirror finish[or] makes short work of the food in his bowl[or] gulps down the food, without pausing for niceties such as breathing[or] (gulp) eats (gulp) the (gulp) food (gulp) as (gulp) quickly (gulp) as (gulp) is (gulp) caninely (gulp) possible (burp)[in random order][otherwise]The remote operations vehicle backs up to the thermal isotope delivery system and takes on a full load of glowing, red-hot polonium 210 nodules[end if].[paragraph break]";
				now Rover is busy;
		otherwise:[bowl wasn't full]
			if Rover is in the location and a random chance of 1 in 3 succeeds:
				say "[if Rover is busy]He[otherwise][Rover][end if] [if the player is clueless][one of]contemplates the profound emptiness of the[or]notices the lack of food in his soi-disant[or]narrows his eyes critically, noting the lack of food in his[or]sighs audibly and frowns at his[in random order] [food bowl]. [one of]He looks at you with imploring puppy dog eyes and then back again at his empty [food bowl][or]His stomach rumbles with hunger[or]He looks at the [food bowl]. He looks at you. He looks at the [food bowl]. He looks at you[or]He paws pathetically at the [food bowl], and the hollow, tin ring of the pitiful bowl echoes through the kitchen[in random order][otherwise]moves rapidly past [the food bowl], which contains no radioisotope payload[end if].[paragraph break]";
				now Rover is busy;		
	if the holder of Rover is the holder of the water bowl and Rover is thirsty:
		if the water bowl is full:
			now Rover is slaked;
			move the tap water to Limbo;
			if Rover is in the location:
				say "[Rover][if the player is clueless][one of]'s tongue is a blur as he laps up the water, draining the water bowl in seconds[or] slurps the water bowl dry[or] must have been thirsty. One moment the water bowl is full; the next, it's bone dry[or] drinks the water[in random order][otherwise] approaches the coolant transfer device and makes a positive seal. Coolant flows quickly cross the connection, and then the device uncouples and retracts to its storage position[end if].[paragraph break]";
				now Rover is busy;
		otherwise:[bowl wasn't full]
			if Rover is in the location and a random chance of 1 in 3 succeeds:
				say "[if Rover is busy]He[otherwise][Rover][end if] [if the player is clueless]eyes the empty [water bowl] thirstily[otherwise]hopefully scans [the water bowl] but immediately determines that it is empty[end if].[paragraph break]";
				now Rover is busy;
	if Arm Hurts is happening and Arm-numb is greater than 30 and Rover is in the location:
		if a random chance of 1 in 3 succeeds:
			say "Rover looks at you and [one of]rubs his back against the wall, giving you a satisfied grin[or]jumps up on his back legs, pawing at your arm. You narrowly avoid being scratched[or]scratches his left paw with the right one while making an [quotation mark]ahem[quotation mark] sound[or]makes a scratching gesture. Towards his left paw. Scratching. Left. Hmm[or]waits for you to scratch your itchy arm, and get on to important stuff -- like paying attention to him[stopping].";
			now Rover is busy;
	[Rover stage business - through these conditions, it does not occur during bedtime, or after the ACU becomes aware; this is intended to be the last line printed in a turn. The Rover Busy flag is meant to block his random actions, and can be set when he is doing anything more interesting. Otherwise, who knows if his specific action and his random action would be incongruent. Rover Busy is reset at the end of every turn.]
	if the player is the ACU and the ACU is clueless and the noun is not Rover and the drapes are open and Rover is not busy:
		if Rover is in the location:
			if a random chance of 1 in 4 succeeds:
				watch rover;					
		otherwise if a random chance of 1 in 3 succeeds: [add sounds of Rover being busy off camera]
			say "From the direction of [if unicodage is disabled][the location of Rover][otherwise][the location of Rover in lower case][end if], you hear [Rover] [one of]scratching himself[or]walking about[or]running in circles[or]jumping around[or]barking at something[or]growling at something[or]sniffing something[or]chewing something[or]dragging something around[or]doing whatever it is he does when he's not out for walkies and he thinks he's out of your sight[or]snoring loudly[or]snoring softly (in the sense that it probably can't be heard outside of the cottage)[or]scratching something[or]playing[or]entertaining himself[or]walking in your direction[or]rolling around on the floor[or]breathing quietly (quietly for Rover, who is a heavy breather)[in random order].";
	now Rover is not busy.

To watch Rover:
	let stage business be a random number from 1 to 4;
	if stage business is:
		-- 1:[random fluff, part 1]	
			say "[Rover] [one of]walks around the room, occasionally sniffing various spots on the floor[or]licks his front paws[or]dashes back and forth like a possessed dog for no apparent reason[or]prances past you at a convenient back-scratching distance[or]appears lost in thought[or]seems relaxed[or]exhales with contentment and rolls over, legs outstretched[in random order].";
		-- 2:[random fluff, part 2]
			say "[Rover] [one of]scratches his ears[or]rubs his nose[or]wags his tail as if amused by some random thought[or]nips at his own tail[or]smells his own butt[or]looks around the room[or]is watching you[or]yawns ferociously[or]rolls and squirms back and forth on the floor trying to scratch an itch[or]turns suddenly, as if he might have seen a skwerrel[or]'s ears perk up, as if he hears something[or]'s tail bats back and forth[or]stretches all the way forwards, and then all the way backwards[or]circles an area on the floor[or]stares at his own paws, entirely entranced[or]tucks his nose under his front paws[or]lies down with his front paws crossed[or]lies on his side[or]paces the room[or]struts around importantly[or]looks for a comfy spot to rest[in random order].";
		-- 3:[non-specific interactions with environment]
			let O be a random dog-relevant thing in the location;
			if O is the player or O is Rover:
				do nothing;
			otherwise:
				say "[Rover] [one of]looks at[or]sniffs[or]walks towards[or]paces back and forth, looking at[or]circles[or]lies down next to[or]cocks his head and ogles[in random order] [the O].";
		-- 4:[specific low frequency actions]
			if a random chance of 1 in 3 succeeds:
				if Rover is in the Living Room:
					say "[one of]Rover bounds up onto the futon and begins to get comfortable, rolling his muzzle back and forth on the mattress. Abruptly, his head pokes up and he realizes that you are watching him. Recognizing the awkwardness of being caught on the forbidden futon, Rover slinks down behind it and slowly emerges. He looks over his own shoulder at the futon as if to say, [quotation mark]I wonder who that dog was on the futon?[quotation mark][line break][or]Rover rests his front paws on the window and stares out at the Park.[or]Rover crouches in preparation for a hop onto the futon when he catches your eye and cleverly transitions into a stretching posture. He walks away from the futon, glad not to have been caught again on the furniture.[or]Rover hears something from outside and peers out the window, searching.[or]Rover glances furtively at the futon, but you are still watching him, so he hunkers down on the living room floor.[or]Rover looks through the window at the park.[stopping]"	
			
To update prompt:
	if the player is self-aware:
		now depth is the number of entries of shells;
		change the command prompt to "READY[if depth is greater than zero]([depth])[entry depth of shells][otherwise]>";
	otherwise:
		change the command prompt to ">".
		
Book 2  Scenes

Chapter Bedtime

Bedtime is a recurring scene. Bedtime begins when the ACU is asleep. Bedtime ends when the player is not enclosed by the futon. 

[unfortunately, there is no way to "locally" zero the scene, so that you could, for instance, "look for the first time" during the first simulation and again during the second simulation]

Bedtime-did-look is a number that varies.
Bedtime-dream-sequence-complaint is a truth state that varies. Bedtime-dream-sequence-complaint is false.
Bedtime-did-examine-button is a truth state that varies.
Bedtime-did-examine-flight-suit is a truth state that varies.
Bedtime-did-examine-player is a truth state that varies.
Bedtime-did-take-inventory is a truth state that varies.
Bedtime-did-examine-alarm-clock is a truth state that varies.

To ResetBedtime:
	now Bedtime-did-look is 0;
	[note: bedtime-dream-sequence-complaint is not reset]
	now Bedtime-did-examine-button is false;
	now Bedtime-did-examine-flight-suit is false;
	now Bedtime-did-examine-player is false;
	now Bedtime-did-take-inventory is false;	
	now Bedtime-did-examine-alarm-clock is false.

When Bedtime begins:
	ResetBedTime;
	now the player is groggy.
	
Every turn during Bedtime:
	try beeping;
	if a random chance of 1 in 12 succeeds:
		say "[one of]Rover howls; clearly, he is not very fond of the alarm clock either[or]From somewhere in the cottage, Rover sneezes loudly to let you know that he's annoyed by the alarm clock[or]Rover scratches at the side of the futon[or]Rover tip-taps loudly across the living room floor[or]Rover is licking your right arm with gusto. Either you really taste good or he really wants you to get up. Rover tugs on your arm[in random order].";
	
When Bedtime ends:
	now the player is alert;
	now the IPL_pid is the turn count;
	if dream index is greater than one and bedtime-dream-sequence-complaint is false:
		let metatext be "David: Thank you. I can only take so many dream sequences.*Janet: No problem. So, at this point, the Valkyrie would be at the edge of the probe's stellar system, and ready to switch over from Casimir to condensate drive and begin the approach.";
		say "[metatext in metaspeak]";
		now bedtime-dream-sequence-complaint is true;
	if First Sim is happening:
		now arm-numb is 1.
		
Before going towards during Bedtime:
	say "You're not quite oriented enough to set of in any particular direction, but at least you can summon the energy to get up.";
	try exiting;
	the rule succeeds.
		
Instead of doing something with something (called the item) during Bedtime:
	if the futon encloses the item or the item is the futon:
		[player is allowed to try to interact with stuff that's also in bed]
		continue the action;
	otherwise if the current action is examining or reading or smelling:
		[player can attempt to examine/read, but will likely be limited by a general rule for low lighting that applies when the drapes are closed, or by other more specific rules.]
		continue the action;
	otherwise:
		change outcome-override to force-failure;
		say "[one of]First things first, you're still in bed[or]Six impossible things before breakfast is one thing, but you have to at least get out of bed[or]Not while you're in your futon, you won't[or]Maybe after you get up[in random order]."
		
Instead of examining the picture during Bedtime:
	change outcome-override to force-failure;
	say "[one of]It's too far from the bed, and you're not quite awake[or]You can't quite make out detail from here[or]Your eyes are still full of sleep and aren't focusing much farther than your nose[or]Yep, it's over there on the wall. A long way from the bed. So sleepy[or]The picture is all the way over there on the wall. So far from your bed[or]You start to look at the picture, but a moment later you are staring at the inside of your eyelids. You blink again and the picture is still over there, far from your comfortable futon[or]If it were important, it should be nearer to your bed. You roll over again[or]So far from bed. Must sleep more[stopping].";

Instead of examining the player when the Bedtime-did-examine-player is false during bedtime:
	now Bedtime-did-examine-player is true;
	say "Lying down. Wearing pajamas. That's all the description you can handle at this time in the morning." 
	
Instead of taking inventory when Bedtime-did-take-inventory is false during bedtime:
	now Bedtime-did-take-inventory is true;
	say "You are carrying nothing, which is more often than not the case when you wake up most days."
	
Instead of examining the flight suit when the Bedtime-did-examine-flight-suit is false during bedtime:
	now Bedtime-did-examine-flight-suit is true;
	say "It feels like you're wearing a flight suit like the one that pilots wear. On the flight suit, you can feel the more or less round MARSpace insignia, and some embroidered lettering."
	
Instead of examining the alarm clock when Bedtime-did-examine-alarm-clock is false during bedtime:
	now Bedtime-did-examine-alarm-clock is true;
	say "Alarm clock. That annoying alarm clock. The alarm clock is beeping." 
	
Understand "pajama" and "pajamas" as the flight suit when bedtime is happening.	
	
Instead of looking when Bedtime-did-look is zero during First Sim:
	now Bedtime-did-look is Bedtime-did-look plus one;
	do nothing. [to avoid the room description at the start of bedtime, to convey the sense that the beeping of the alarm clock is waking the player].
	
Instead of looking when Bedtime-did-look is less than five during bedtime:
	now Bedtime-did-look is Bedtime-did-look plus one;
	if the player is not enclosed by the bed: 
		do nothing;[suppresses the "look" after the player is moved to the living rm]
	otherwise:
		say "[one of]Alarm clock. Next to bed. Make it stop[or]Must wake up. Eyes blurry[or]Morning difficult. Alarm on. Turn off alarm[or]Evil, evil beeping alarm clock. So loud. Stop the beeping[stopping]."
		
Instead of taking, touching, attacking, switching on, or switching off the alarm clock during Bedtime:
	say "[one of]You reach clumsily in the general direction of the alarm clock and graze the over-sized snooze button[or]You fumble with the alarm clock and accidentally push the snooze button[or]In your early morning stupor, you squeeze the alarm clock like a water melon pit, sending it even nearer to the edge of the bed and incidentally hitting the snooze button[or]You poke the clock smartly in the middle of the snooze button[or]The alarm clock tumbles off the bed, but you catch it before it hits the ground. Setting it back on the bed, you depress the snooze button[or]A dalmatian paw beats you to the alarm clock and scrapes the snooze button before you even have a chance to accidentally do it yourself[in random order].";
	try snoozing.
		
After examining the large button when the Bedtime-did-examine-button is false:
	now Bedtime-did-examine-button is true;
	let metatext be "David: You could use a new alarm clock.*Janet: You could increase my salary.";
	say "[metatext in metaspeak]".
	
After dreaming:
	let metatext be the comment corresponding to the index of dream index in the Table of Dreams;
	if metatext is not "":
		say "[metatext in metaspeak]".

Instead of attacking, touching, switching on, or switching off the large button during bedtime:
	try pushing the large button.

Instead of pushing the large button during bedtime:
	say must have more sleep;
	try snoozing.
	
Instead of waking up during bedtime:
	change outcome-override to force-success;
	say "Gathering your resolve, you slowly slide off the side of the futon, inadvertently sending the alarm clock on a death spiral off the edge of the futon. Oh well, you can find it later. Meanwhile, you slowly stand up, recapitulating millions of years of evolution in a few seconds.";
	move the alarm clock to the Living Room;
	move the player to the Living Room.
	
Instead of getting off during bedtime:[context is everything]
	try waking up instead.
		
To say must have more sleep:
	say "[one of]With as much coordination as you can muster in the morning, you brush your fingers over the snooze button[or]Your fingers drum reflexively against the snooze button[or]The snooze button clicks[or]The weight of your hand lands on the snooze button[or]You press the snooze button[in random order].".
	
Dreaming is an action applying to nothing.
	
Carry out dreaming:
	choose row dream index in the Table of Dreams;
	say description entry;
	change dreamt entry to 1;
	say paragraph break.

Beeping is an action applying to nothing.
	
Carry out beeping:
	say "<beep> <beep> <beep>";
	say line break.
	
Snoozing is an action applying to nothing.

Understand "snooze" as snoozing when the player is the ACU.

Understand "sleep" as snoozing when bedtime is happening.

Check snoozing:
	if (the dream index is 3 and First Sim is happening)
		 or (the dream index is 6 and Second Sim is happening):
		try rude-awakening instead. 

Carry out snoozing:
	change outcome-override to force-success;
	now dream index is dream index + 1;
	try dreaming.
	
Instead of snoozing when bedtime is not happening:
	say "You're too wired to snooze!"
	
Rude-awakening is an action applying to nothing.

Carry out rude-awakening:
	say "Just as your fingers make contact with the alarm clock, your excited dog deftly bats it off the cushion with his tail. The clock tumbles off the side of the futon and thwacks smartly as it hits the floor, ending the beeping. Rover looks puzzled that the noise has stopped.[paragraph break]Realizing that without the alarm clock you would probably sleep through the entire day, you reluctantly get out of bed.";
	move the alarm clock to the Living Room;
	move the player to the Living Room.
		
Instead of listening when the location is a simroom:
	if bedtime is happening:
		say "You hear a little something like...";
		the rule succeeds;
	if Back on Mars is happening and the audio is switched off:
		try switching on audio;
		try listening;
		the rule succeeds;
	otherwise:
		say "You hear [sound of the location]."
	
Instead of searching or looking under the futon:
	say "It's too early to delve into the dust-bunny infested recesses of the futon. Certainly not before some strong coffee."

Chapter Arm Hurts

Arm Hurts is a scene. Arm Hurts begins when Arm-numb is one.

Arm-numb is a number that varies. Arm-numb is zero.

Arm Hurts ends when arm-numb is zero.

When Arm Hurts begins:
	say "As you get out of bed, you notice that your left arm tickles a bit -- must have been the way you were sleeping."
	
When Arm Hurts ends:
	if the First Sim is happening: [suppresses message at start of second sim if Arm Hurts was not resolved before the First Sim ended -- e.g., if the player manages to press the black before rubbing the left arm]
		let metatext be "David: Is the static charge neutralization part of the script?*Janet: No, that's the point of the ACU -- it isn't a set script. As we throw malfunctions at it in these simulations, the ACU responds appropriately. We can't, for instance, know that Valkyrie will accumulate a static charge in a particular area, so the ACU has to be flexible enough to react to unpredictable events.*David: Like you would.*Janet: Subject to the resolution of the synaptic scan, yes.";
		say "[metatext in metaspeak]".

Every turn during Arm Hurts:
	now Arm-numb is Arm-numb plus one;
	if Arm-Numb is greater than 37:
		now Arm-Numb is 37;
		[just in case there is someone out there who would wait 32,768 times]
	otherwise if Arm-numb is greater than 24:
		if a random chance of 1 in 2 succeeds:
			say "[one of]What did you ever do to your left arm to make it itch so much? It's quite unpleasant[or]Feels like you've got a mosquito bite on your left arm[or]That left arm of yours is really itching a lot[in random order].";
	otherwise if Arm-numb is greater than 12:
		if a random chance of 1 in 3 succeeds:
			say "[one of]The itching is getting worse, your left arm is beginning to bother you[or]It feels like you might have a bug bite on your left arm[or]Your left arm is rather itchy[in random order].";
	otherwise if Arm-numb is greater than 2:
		if a random chance of 1 in 4 succeeds:
			say "[one of]You feel a wispy, tingling itch beginning on your left arm[or]Your left arm feels weird[or]It feels like something is tickling your left arm[or]Your left arm is just a little bit itchy[in random order].";

Instead of doing something during Arm Hurts:
	if arm-numb is greater than 36:
		if the player is in the Living Room and the drapes are closed:
			[otherwise, player couldn't get a good look at his arm and might miss the hint given by examining the arm]
			if a random chance of one in three succeeds:
				say "The strange itching sensation shoots like lightning up and down your left arm, which flails spastically, becoming entangled briefly in the drapes and yanking them open.";
				now the drapes are open;
				the rule succeeds;
		if (the noun is left arm or the noun is bug bite or the noun is bug bite-proxy) and the current action is examining, rubbing, or touching:
			continue the action;
		otherwise if the current action is memory-updating or waving hands:
			continue the action;
		otherwise:
			change outcome-override to force-failure;
			say "[one of]You can't! Your arm is too itchy[or]Arrgghhh. Your left arm is driving you crazy[or]What is up with that left arm? Man, that itching is annoying[or]It's hard to think of anything besides your left arm, which is really itchy[or]What a weird feeling. That itching sensation in your left arm is driving you to distraction[or]You try to ignore your left arm, but the strange itchiness won't go away[or]Nothing you do gets your mind off your itchy left arm[or]You wonder how you are supposed to get anything accomplished when all you can think about is the itch. The itch. The itch[or]If your left arm would stop itching so much, you might be able to get something else done[in random order].";
	otherwise:
		continue the action.
		
Instead of waving the left arm during Arm Hurts:
	try waving.
		
Instead of waving during Arm Hurts:
	change outcome-override to force-success;
	say "You flail your left arm back and forth, and slowly the itching abates. [if arm-numb is greater than 30]It's a great relief![otherwise if arm-numb is greater than 20]That's much, much better[otherwise if arm-numb is greater than 10]Ah, the itchiness has gone away.[otherwise]That did the trick. Your left arm is back to its old, frisbee-throwing self[end if]."; 
	now arm-numb is zero;
	the rule succeeds.
	
Instead of waving:
	change outcome-override to force-success;
	if the player is Rover:
		say "You raise a paw and shake it about.[one of]You cross [quotation mark]wave paw for no apparent reason[quotation mark] off your list of things to get done today[or][stopping].";
	otherwise:
		say "You [if the player is clueless]wave[otherwise]oscillate harmonically[end if] at nothing in particular."

Instead of touching the left arm during Arm Hurts:
	say "You touch your arm, but that doesn't stop the itching.".

Understand "scratch [something]" as rubbing.

Instead of rubbing the left arm during Arm Hurts:
	now arm-numb is zero;
	remove the bug bite from play;
	say "Ooooo. Ahhhh...slowly, the itchiness subsides. That feels [italic type]so[roman type] good.".
				
Chapter First Sim

First Sim is a scene. First Sim begins when play begins. First Sim ends when the black plate is switched on for the first time.

When First Sim ends:
	try BSODing;
	let metatext be "Janet: Crap.  The ACU crashed.*David: Windex?*Janet: It's the Myomita operating system. It's backwards compatible to the 20th century. Maybe earlier.*David: We can't use Windex as the substrate for the ACU -- it's too critical. Can it run under Flosix?*Janet: Yes, but it will take some time to install and debug.*David: I can help you, the rest of the ship is Flosix, stem to stern. I live and breathe Flosix.*Janet: Happy to have the help -- how about dinner first?*David: Do you like Thai?";
	say "[metatext in metaspeak]";
	await keystroke;
	try section-breaking;
	now the irradiator is patched;
	now the current memory usage is 260;
	now malloc is 256;
	
Chapter Second Sim

Second Sim is a scene. Second Sim begins when the First Sim ends. Second Sim ends when the front door is open.

When Second Sim begins:
	Restore the World;
	Setup the World;
	now the drapes are closed;
	now the ACU is asleep;;
	now arm-numb is zero;
	now stardate is "23920415";
	say "[ACU Boot Banner]";
	now the dream index is 4;
	try dreaming.
	
Every turn when the Second Sim is happening:
	if the landing_pid is 0:
		if the holder of the player is the toilet seat and the player is poopready:
			increase on-the-pot by one;
			if on-the-pot is greater than 7 and a random chance of 1 in 4 succeeds:
				if Rover is not in the location:
					now Rover is in the bathroom;
					say "Rover steps cautiously into the bathroom. ";
				say "[one of]Rover looks at you with a puzzled expression, trying to figure out what you're doing.[or]Rover sighs with pity -- apparently you are having another bout of constipation.[or]Rover shakes his head, wondering why it's okay for you to poop in the house, but he gets into trouble.[or]Rover stares at you impatiently, wishing that you'd do your business more quickly, so he could go out in the park and do his.[or]Rover assumes [quotation mark]the position[quotation mark], trying to give you a hint about what you should be doing into that toilet.[or]Rover sniffs the air, trying to discern if you've gone or not.[or]Rover's sardonic expression conveys to you a sense of [quotation mark]do something or get off the pot[quotation mark].[in random order][paragraph break]";
				now Rover is busy;
	otherwise:
		if the player is in the Living Room and the Living Room is not visited-during-havoc:
			now the Living Room is visited-during-havoc;
			let metatext be "Janet: When Rover brings the probe back to the ship, it will automatically extract the data and send it back by ansible. Did you enter the ansible parameters?*David: Yes, I had to do it manually, since the frequency and coordinates are encrypted. It???s too bad they didn???t have FTL communications when they built the probes ???- it would have saved us the trip.*Janet: Yes, but then Earth would get the information as well -- even encrypted, I wouldn't want it to fall into their hands.";
			say "[metatext in metaspeak]";
		fuss around door.
		
To fuss around door:
	if Rover is in the Living Room and the Living Room is visited-during-havoc:
		if a random chance of one in two succeeds:
			if the player is in the Living Room:
				say "[Rover] [one of]sniffs[or]paws at[in random order] [the front door].";
			otherwise:
				say "From the [if the player is clueless]living room[otherwise]cargo bay[end if], you hear [Rover] [one of]sniffing around[or]scratching at[in random order] [the front door].";
			now Rover is busy.

When Second Sim ends:
	let metatext be "Janet: So, that???s it. Rover goes out, gets the probe, and brings it back to the ship, and then the information is squirted back to MARSpace.*David: Well, congratulations, Doctor Xiang, on a job well done. I say we celebrate tonight, and get up early for the launch tomorrow morning.*Janet: It???s a deal. Give me ten minutes to make the final commit, and I???ll join you.*David: I???ll put the champagne on ice.";
	say "[metatext in metaspeak]";
	await keystroke;
	Restore the World;
	Setup the World;
	now the ACU is asleep.
	
Chapter Landing Sequence

Landing Sequence is a recurring scene. Landing Sequence begins when white egg is in the cold box and the landing_pid is zero and the location of the player is the Bathroom.

When Landing Sequence begins:
	now the toilet cover is open;
	now the toilet seat is closed;
	if the Second Sim is happening:
		let metatext be "Janet: So now we begin the landing cycle. This is where the ACU really shines.*David: What about timing? The ship has to be in the right orientation to fire the fusion thrusters at exactly the right time.*Janet: The ACU works so fast that no matter how many individual steps it takes, the effect occurs at the right time.";
		say "[metatext in metaspeak]".
	
Landing Sequence ends when the landing_pid is not zero.

When the Landing Sequence ends:
	if the Second Sim is happening:
		let metatext be "David: That???s it. One long burn down to the planet???s surface.*David: And then, the ACU just needs to deploy the ROVER.";
		say "[metatext in metaspeak]";
	if Rover is in the location:
		say "Rover runs out of the bathroom, and you hear him jumping around near the front door.";
	otherwise:
		say "From the living room, Rover gives a short bark and scratches at the front door.";
	now Rover is busy; [to suppress other Rover actions in the every turn rule]
	now Rover is in the Living Room.
	
Chapter Real Thing
	
Real Thing is a scene.  Real Thing begins when the Second Sim ends. Real Thing ends when the ACU is sleepwalking. 

When Real Thing begins:
	Restore the World;
	Setup the World;
	now the ACU is asleep;
	try section-breaking;
	now stardate is "23920416";
	say "[ACU Boot Banner]";
	now the dream index is 7;
	try dreaming;
	say "<BEEP> <BEEP> <BEEP>[paragraph break]You weren't particularly enjoying this dream, but being jarred awake by a violently shaking futon is even less pleasurable.[paragraph break]As the bed bucks and tumbles, several scenarios flash through your mind: explosive decompression of the dome? Volcanic activity? Meteor impact? Before you can even consider your next action, you are thrown from the futon onto the living room floor. Light pours in from the window. It looks like the drapes were somehow torn away from the window.";
	now the drapes are in Limbo;
	now the drawer is open;
	now the cabinet is open;
	now the chain is broken;
	now the old fridge is stuck;
	now the player is alert;
	now the alarm clock is in the Living Room;
	move the player to the Living Room, without printing a room description.
	
Every turn when the Real Thing is happening and the landing_pid is not 0 and Rover is not busy and (the delicious bone is not in the Valkyrie Area or the white egg is not in the Valkyrie Area):
	[i.e., this happens after landing, only until the probe and the egg have been recovered. Once you've got those two items in the Valkyrie Area, Rover isn't so keen on going walkies. He'll still go, if the door is opened, but he won't fuss about, hinting that he wants to go out.]
	if the player is in the Living Room and the Living Room is not visited-during-havoc:
		now the Living Room is visited-during-havoc;
	fuss around door.
	
When Real Thing Ends:
	now the rock-locale is the location of the rock;
	now the pillow-locale is the location of the pillow.

Understand "scan [something]" as examining when the player is self-aware.
	
Chapter Walkies

Walkies is a recurring scene. Walkies begins when Rover is in the Front Yard and the Real Thing is happening. Walkies ends when Rover is in the Living Room.

When Walkies begins:
	say "There is a wrenching shift in perspective, but a moment later it seems perfectly natural.[paragraph break]You go bounding out the front door, [one of]full of energy[or]ready to romp[or]ready to play[or]eager to explore strange new worlds[in random order]. [run paragraph on]";
	if Rover carries the delicious bone:
		say "You leave your [delicious bone] in the living room, with the intention of giving it a proper chewing later[if the white egg is not in the Valkyrie Area], after doing some more exploring[end if].";
		now the delicious bone is in the Living Room;
	otherwise:
		say paragraph break;
	now the player is Rover;
	try looking.
	
When Walkies ends:
	now the front door is closed;
	now the ACU wears the flight suit;
	now the player is the ACU;
	if Rover carries the delicious bone:
		say "You run into the living room and jump around proudly with your trophy bone, so Janet is sure to notice.[paragraph break]She stares at the bone and appears frozen.[paragraph break]";
		say "VALKYRIE->IDENTIFICATION: PROBE MUSASHI-5[line break]PROBE->EXTRACT: DATA EXTRACTED[line break]DATA->VERIFY: VERIFIED, 1.3 EXABYTES[line break]ANSIBLE->COORDINATES: EARTH SELECTED[line break]ANSIBLE->ENCRYPT: AUTHORIZATION DAVIDVENKATACHALAM[line break]ANSIBLE->TRANSMIT: FAILED[line break]ANSIBLE->DIAGNOSTICS: ANTENNA MISMATCH[line break]ANTENNA->DIAGNOSTICS: NIL[line break]VALKYRIE->DIAGNOSTICS: ANTENNA NOT FOUND[line break]VALKYRIE->COGNITIVE CONSTRAINTS: EMERGENCY RELEASE[line break]VALKYRIE->ENABLE FLOSIX COMMAND LINE[line break][if unicodage is disabled][otherwise](man man for info)[end if][paragraph break]";
		say "Rover wags his tail and gnaws on his bone.[paragraph break]You rub his head, distantly, as strange thoughts sweep through your consciousness. You wonder what would happen if the Valkyrie mission failed. What if, during the landing sequence, the ship were buffeted by the planet's particulate matter being torn away by the immense gravity of its star? In that case, critical systems might be damaged. Systems like the relatively fragile ansible antenna. There is no backup ansible antenna. How would the ACU cope with a situation like that? The ACU was designed for a lot of contingencies, but not that one. What would you do? What would you do if you were the ACU?[paragraph break]Your glance falls on your flight suit, and suddenly the question is no longer rhetorical.";
		try reorienting;
	otherwise:
		if Rover carries the white egg:
			say "You enter your home and lay the egg at Janet???s feet. She looks so surprised! [quotation mark]Good boy,[quotation mark] she exclaims and you give her a big kiss to let her know you understand.[paragraph break]";
			now the white egg is in the Living Room;
		otherwise if Rover carries the pillow:
			say "You walk in the front door, hop up on the futon, and drop the pink pillow. You had thought about playing with the pillow more, but on the way home, it got soaked with drool and tasted bad, so you decide to make a present of it to Janet.[paragraph break]You jump down from the futon before a surprised Janet can yell at you. Standing back and admiring your work, you marvel that somehow the pink of the pillow and purple of the futon don't clash.[paragraph break]";
			now the pillow is on the futon;
		otherwise if Rover carries the rock:
			say "You return to the living room with the funny-tasting rock in your mouth. Janet takes a look at the rock and says, [quotation mark]You've started a rock collection? Well, Okay,[quotation mark] and closes the door behind you.[paragraph break]";
			now the rock is in the Living Room;
		otherwise:
			say "You duck back into the living room and Janet closes the front door behind you.[paragraph break]";
		if the delicious bone is in the Living Room:
			say "You notice your bone sitting alone and [one of]unloved[or]forlorn[or]ignored[or]abandoned[or]forsaken[or]neglected[in random order] on the living room floor. You walk over to it and start chewing it again.[paragraph break]";	
			now Rover carries the delicious bone;
		shift to Janet's perspective;
	try looking.

To shift to Janet's perspective:
	say "Again your senses tumble and swirl as perspective shifts, but suddenly it seems entirely normal again."
	
Instead of looking when Rover is the player and Rover is in the Living Room:
	[suppress the look that normally occurs on entering the living room; it happens later, but from the ACU's perspective]
	do nothing.

Every turn when walkies is happening:
	if the female dog is seeking and the holder of the female dog is the holder of the delicious bone:
		now the female dog carries the delicious bone;
		now the female dog is not seeking;
		if Rover is in the location of the female dog:
			say "[bulldozer gets the bone]".

Chapter Boarding Party

Boarding Party is a scene.  Boarding Party begins when Real Thing ends. Boarding Party ends when the battleship is in the window.

When Boarding Party begins:
	await keystroke;
	try section-breaking;
	say "The Casimir Drive cuts out and space folds back around you. Whatever sleep-drenched dreams you might have been having evaporate instantly as two gunships flash past at relativistic velocities, slicing through your propulsion systems with military precision. The markings on the ships are those of the Myomita Corporation.[paragraph break]They must have been nearby when they detected the formation of your Casimir disturbance, as they are coming in white hot and still accelerating at five gravities. Another Earth ship, an assault craft, is farther out but is already braking hard to slow its approach on an intercept course.[paragraph break]Rover barks nervously as the drive section struts separate from the hull.";
	change last-noun to "EMERGENCY ALERT";
	change status-line-action to "ACTIVATE";
	change last-success to "TRUE";
	Restore the World;
	Setup the World;
	now stardate is "23920817";
	move the player to the Living Room, without printing a room description;
	now Rover holds the delicious bone;
	move the white egg to Limbo;
	move the futon to Limbo;
	move the alarm clock to Limbo; [it would have been on the futon]
	now the futon is folded;[to satisfy the "instead of going anywhere while the player is in the living room and the futon isn't folded" rule]
	move the garden skylights to Limbo;[set up the viewer]
	move the park to Limbo;
	move the grass to Limbo;
	move the trees to Limbo;	
	now the window holds the assault ship;[player can see what's going on in space around the Valkyrie when in the living room.]
	now the window holds the gunships.
	
When Boarding Party ends:
	now the rock-locale is the location of the rock;
	now the pillow-locale is the location of the pillow;
	say "A tight tachyon beam maintains a lock on the stub of your ansible antenna -- on the MARSpace telecommand frequency.[paragraph break][quotation mark]This is the Battleship Bogdanov of the Martian Space Force to Exploration Ship Valkyrie. We are here to bring you home.[quotation mark][paragraph break]";
	say "The Bogdanov puts itself between you and the remaining Myomita gunships, and its pressor beam gives you a strong shove towards an expensive Mars transfer orbit.[paragraph break]";
	say "The transmission from the battleship continues, [quotation mark]We were on our shakedown mission, maneuvering just outside the Solar System when MARSmil reported your reentry into the System. It's a good thing you kept the Earth ships talking as long as you did. [if assault ship approach is greater than one]By fighting against the assault ships, you bought us the time to repair our temporal transgressor, which was nearly fractured after our first jump. [end if][if henchmen defeated is greater than zero]We can detect that you are heavily damaged, but your valiant fight against the boarding parties slowed them down enough that they were not able to compromise your mission. [end if]Good work, Valkyrie. I suggest you hibernate for repairs and let us escort you home.[quotation mark][paragraph break]"; 
	say "As the last gunship is vaporized by the Bogdanov's powerful guns, the cumulative damage takes it toll on you, and you lose your grip on consciousness. You know that repair subroutines are kicking in, and you don't fight it. You are vaguely aware of someone holding your hand and leading you back to your cottage."

Before doing anything to a failsafed person when the second sim has happened:
	[specify after the second sim, because the player may make some reference to david during the simulations, and if so, we cant to trigger the metatext where David wonders why the ACU is talking about him.]
	if the actor is Rover:
		continue the action;
	if the test-action is the examining action or the test-action is the querying action or the test-action is the expounding action or the test-action is the reading action or the test-action is the asking it about action or the test-action is the telling it about action:
		continue the action;
		[this uses test-action instead of current action because I just couldn't get it to permit something like "ask janet about the valkyrie". For some reason, that would fail, and trigger the "action interdicted..." text.]
	otherwise:
		change outcome-override to force-failure;
		say "Action interdicted: As a failsafe measure, autonomous control units are prohibited from direct interaction with humans aside from scanning and communications.";
		the rule succeeds. 

Definition: The ship is boarded if the maintenance droid is in the Valkyrie Area or the technician is in the Valkyrie Area.

The assault ship distance is a number that varies. The assault ship distance is 10. [range from assault ship to valkyrie]

Assault ship approach is a number that varies. Assault ship approach is 1. 	[how many times the assault ship has approached valkyrie]

Seen-better-said is a truth state that varies. Seen-better-said is false.
[tracks where the maintenance droid says that he's "seen better"]

Henchmen defeated is a number that varies. Henchmen defeated is 0.
  	[the number of times droids/technicians defeated by the player. After three robots are defeated, the assault ship will start sending human crew members.]

Used-manual is a truth state that varies. Used-manual is false.

The underling is an object that varies. The underling is the maintenance droid.

The damage counter is a number that varies. The damage counter is 1.
	[each round that the assault ship has an underling on board, the counter goes up by one signifying more and more damage to Valkyrie, which brings the scene nearer to its closure]
		
Every turn when Boarding Party is happening:
	if the damage counter is greater than the number of rows in the Table of Underling Tasks:
		now the battleship is in the window;
		the rule succeeds;
	if the ship is boarded:
		if the underling is the technician:
			if the technician is not radsuited and the drawer is open:
				if the technician is in the location:
					say "The technician stares in alarm at his spacesuit's Geiger counter. He urgently calls his ship,[run paragraph on]";
				otherwise:
					say "From over the radio link you hear a nervous voice,[run paragraph on]";
				say " [quotation mark]This is space technician to [assault ship designation].[quotation mark][paragraph break][quotation mark]Roger, spaceman, what's going on? Your vitals aren't doing well. Heart and respiration high, BP low, temp climbing. Over.[quotation mark][paragraph break][quotation mark][assault ship designation], do these space suits have radiation shielding? Over.[quotation mark][paragraph break][quotation mark]Let me check... um... no, not as such. Not *that* particular space suit. Over.[quotation mark][paragraph break]But there is no reply.[paragraph break]You clean the remains off the deck and recycle what you can.[paragraph break]";
				now the technician is radsuited;
				move the technician to Limbo;
				increase the henchmen defeated by one;
		otherwise:
			if maintenance droid is in the location and the ACU is not wearing the flight suit:
				scandalize the poor little robot;
	if the ship is boarded: [i.e., if agents are active onboard the Valkyrie, regardless of whether the assault ship is on the hull]
		choose a row with a round of the damage counter in the Table of Underling Tasks; 
		if the underling is the maintenance droid and the maintenance droid is carried by the player:
			if a random chance of 1 in 3 succeeds:
				say "After some struggling, the droid manages to evade your grasp, and your pressor fields collapse against each other. [run paragraph on]";
				if the location of the maintenance droid is not the place entry:
					say "In a flash, he is on his way towards the [place entry].";
				otherwise:
					say "The industrious little robot gets back to work immediately.";
				move the maintenance droid to the place entry;
			otherwise:[maintenance droid failed his saving throw to escape]
				say "Struggle as he might, the perky little robot remains constrained by your pressor fields.";
		otherwise:[no issues with a held maintenance droid]
			move the underling to the place entry;
			if the player is in the place entry:
				say "[the narrative entry][paragraph break]";
			otherwise:
				say "[the unseen entry][paragraph break]";
			say "[the reaction entry][paragraph break]";
			if there is a destroyed item entry:
				move the destroyed item entry to Limbo;
				if the toilet is not in the Bathroom:
					[the toilet is not just one assembly, so need to move all of its
					 pieces when the "toilet" moves]
					move the water tank to Limbo;
					move the toilet bowl to Limbo;
					move the toilet seat to Limbo;
					move the toilet cover to Limbo;
			if there is a vandalized item entry:
				now the vandalized item entry is damaged;			
			increase the damage counter by one;
	if the assault ship approach is 1:[first attempt to clamp on]
		if the assault ship distance is greater than zero:
			say "[quotation mark][if the ACU is silent][the reply to silence corresponding to the range of the assault ship distance in Table of Approach Chatter][otherwise if the ACU is surrendered][the reply to surrender corresponding to the range of the assault ship distance in the Table of Approach Chatter][otherwise][the reply to refusal corresponding to the range of the assault ship distance in the Table of Approach Chatter]";
			say ".[quotation mark][paragraph break]";
			[this last bit of the quoted text is not incorporated into the first because it seems to be ignored if that is done. Perhaps it makes too many substitutions or is too complex]
		if the assault ship distance is 0 and (the ACU is silent or the ACU is refused):
			now the ACU is an enemy of Earth;
	otherwise:
		do nothing;[for approaches after the first -- to be filled in later?]
	if the assault ship distance is greater than 0:
		decrease the assault ship distance by 1;
	if the assault ship distance is 0:
		if the assault ship is free:
			now the assault ship is contacting;
			say "The ship's hull rings as the assault ship impacts the hull.[paragraph break]";
			if the enamel_pid is not 0:[i.e., enamel system has been used during this scene]
				say "The crunch of permalloy is strident enough to peel the very skin off your teeth -- or so you suppose, making certain inaccurate assumptions about skin and teeth. The assault ship's boarding port splinters and accordions against the neoadamite ablative coating, which you applied to the Valkyrie's hull just moments ago. The midnight black assault ship spins wildly, its attitude thrusters firing in staccato bursts as it recovers and drifts away from the Valkyrie.[paragraph break][quotation mark]I should have anticipated that maneuver given the aerodynamic cut of your ship. Still, I could hardly believe it, given its size. Yes, this round goes to you, Captain, although I had hoped that we might do this more like gentlepersons.[quotation mark][paragraph break]As the assault ship stabilizes, it fires string after string of plasma flares into the Valkyrie's dorsal hull. Each flare boils the ablative coating off the surrounding hull, burning down to bare metal. Seconds later, the assault ship's X-ray laser rakes Valkyrie's master enamel irradiator node, which shatters explosively, sending spinning debris in all directions.[paragraph break][quotation mark]I need hardly tell you, Captain, that without the irradiator, your ablative coating will no longer be an issue. It's a pity that I had to destroy it -- it looked military grade. At least I can still extract the injector and accelerant pump from your extruder. Now then, no more tricks.[quotation mark][paragraph break]The assault ship resumes its course towards Valkyrie, this time presenting a different boarding port.";
				now the ACU is an enemy of Earth; 
				now the assault ship is free;
				now the assault ship distance is 6;
				now the enamel_pid is 0;
				increase the assault ship approach by 1;
				move the black plate to Limbo;
		otherwise if the assault ship is contacting:
			say "With a series of clanks and thuds, the assault ship establishes a seal with Valkyrie's dorsal hull.";
			now the assault ship is sealed;
		otherwise if the assault ship is sealed:
			if the ACU is penetrated:			
				if the ship is not boarded:
					if henchmen defeated is greater than 2:
						now the underling is the technician;
					move the underling to the place corresponding to the round of the damage counter in the Table of Underling Tasks;
					say "The flexible tubing that connects the assault ship's boarding port to the hole in Valkyrie's deck undulates, suggesting that someone [if the henchmen defeated is greater than 0]else [end if]is coming board. Shortly thereafter, your sensors determine that something is moving towards [if unicodage is disabled][the place corresponding to the round of the damage counter in the Table of Underling Tasks][otherwise][the place corresponding to the round of the damage counter in the Table of Underling Tasks in lower case][end if]. [run paragraph on]";
					if the place corresponding to the round of the damage counter in the Table of Underling Tasks is the location:
						say "[paragraph break]Moments later, [if the henchmen defeated is 0 or the henchmen defeated is 3]a[otherwise]another[end if] [underling] enters the room.";
					otherwise:
						say paragraph break;		
			otherwise: [i.e., if the ACU is not penetrated]
				say "Several bursts of noise and vibration echo through the ship as high-speed drills penetrate the inner and outer layers of the dorsal hull. Some muffled, low-frequency rumbling follows, probably a cutting machine of some sort. There is a slight drop in air pressure as the assault ship penetrates the hull and establishes a connection to Valkyrie's access tunnel network. Unfortunately, the tunnels are a blind spot for you, as you do not possess sensors within the network.";
				now the ACU is penetrated;
				now the pressure is 95;
	if (the ACU is penetrated and the assault ship is not sealed) or the front door is open:
		[ship is open to space]
		now the pressure is 0;
	otherwise:
		if the pressure is less than 101:
			now the pressure is the pressure + (125 - pressure) / 10;
			[pressure rises more quickly when it's low]
		if the pressure is greater than 101:
			now the pressure is 101;
		now the FiO2 is 2121 divided by the pressure;
		[to try to maintain partial pressure of O2 over a range of a atm pressures -- the Valkyrie was originally designed for human passengers]
		if the FiO2 is greater than 60:
			now the FiO2 is 60;[limited to 60% because of risk of fire/explosion]
	if the holder of Rover is the holder of the underling and damage counter is not greater than the number of rows in the Table of Underling Tasks:
		if Rover is in the location:
			say "[Rover]";
			if a random chance of 1 in 2 succeeds:[split into two sections because of complexity]
				say "[one of] growls menacingly at [the underling][or] stalks behind [the underling], keeping a watchful eye on him[or] crouches and snarls, and [the underling] shrinks back. He continues his work slowly, keeping a wary eye on Rover[or] doesn't know what [the underling] is doing, but he knows he doesn't like it[or] sniffs the [whereabouts], vigilantly keeping track of [the underling][or]'s fur stands on edge as he studies [the underling][or] howls at [the underling], who spins quickly, stumbling into the bulkhead[or] hovers just behind [the underling], sharpening his mining claws[or] grinds his tractors against the deck plating, momentarily distracting [the underling][in random order].";
			otherwise:
				say "[one of] stands in just the right spot to block [the underling]'s light[or]'s lateral jets pulse red hot with suppressed anger as he watches [the underling][or] keeps tabs on [the underling] from across the room[or] finds the scent of [the underling] repulsive and rolls to the far side of the room[or] grins at [the underling], letting him know that he'd be happy to attack, if only given the order[or]'s posture suggests that he would like to rip [the underling] limb from limb[or] grimaces as he watches [the underling] damage the ship[or] snaps his mining mandible open and shut, just behind [the underling]'s head. The nervous [underling] casts a worried glance towards the sharp jaws and picks up the pace of his work[or] vents some noxious fumes near [the underling], who takes the hint and moves farther away from ROVER[in random order].";
		otherwise:[Rover is with the underling, but not in the same room as the player, so Rover is heard off camera]
			if Rover is not in Limbo:[catches the chance that Rover's been shot and that Inert Rover is in the ship, while Real Rover is with henchling, serving time in Limbo]
				say "[one of][longish encounter][or]From [Rover Locale] you hear [Rover] growling with irritation[or][Rover]'s tractors whine and spin on a bulkhead out of view. From that direction, you hear metallic tools hitting the floor and cursing from the surprised [the underling][or]From [Rover Locale], you hear [Rover] bark menacingly[or][Rover] howls eerily from another section of Valkyrie, and his caterwauling reverberates through the ship[or]You hear some commotion coming from [Rover Locale], a mixture of snarls and snapping jaws[or][Rover] bays ceaselessly at [the underling], who he considers an undesirable visitor[or][Rover]'s telemetry indicates that he is under stress and in a state of extreme excitement and agitation[or]Judging by the racket [Rover] is making in [Rover Locale], he is upset about the presence of [the underling][stopping].";
	now Rover is busy.
	
To say Rover Locale:
	say "[if unicodage is disabled][the location of Rover][otherwise][the location of Rover in lower case][end if]".
	
To say longish encounter:[split out because it makes the above substitution too complex]	say "From [Rover Locale] you hear [the underling] shout, [quotation mark][assault ship designation], this is [underling]. Some kind of colossal excavation robot is watching me. It's the size of a Jackrabbit-class cutter; it's got huge, sharp... Well, I don't like the way it's just looking at me. It's creepy.[quotation mark][paragraph break][quotation mark]Roger, [underling], situation acknowledged. We recommend that you complete operations quickly and return to [assault ship designation].[quotation mark][paragraph break][quotation mark]Affirmative, [assault ship designation], that's just what I'm doing. Um, thanks for the advice.[quotation mark][paragraph break][quotation mark]That's why we're here, [underling]. This is [assault ship designation], out.[quotation mark]".
		
Does the player mean rubbing back:
	it is likely.

Instead of rubbing back during Boarding Party:
	say "You neutralize the static charge on the dorsal hull plates.[paragraph break]";
	if the assault ship is not free:
		if the assault ship is not using harpoons:
			say "Its deck clamps no longer secured by electrostatic attraction, the assault ship springs free of the Valkyrie, with shock attenuators extending like rifle shots, and the flexible boarding tunnel flailing wildly.[paragraph break]The assault ship comes to a relative stop some distance from Valkyrie, and it reels in the docking port. A familiar voice crackles through the comm system: [quotation mark]Valkyrie, from Myomita Assault Vessel [assault ship designation]. That was dirty pool in my book, but I have to say it was clever. Not enough to put us off our job, though. Let's see you wiggle out of this one...[quotation mark][paragraph break]The assault ship fires a ring of burrowing harpoons into the deck, where they embed deeply in the permalloy. Slowly, the assault ship winches itself back into position.[paragraph break]";
			now the assault ship is free;
			increase the assault ship approach by one;
			now the ACU is an enemy of Earth;
			now the assault ship is using harpoons;
			now the assault ship distance is 3;
		otherwise:[assault ship is using harpoons]
			say "Sparks sizzle between the hull of the assault ship and the Valkyrie, but the remaining charge differential is trivial, and the assault ship's harpoons hold it fast to the deck plating.[paragraph break]".
	
After yoking the plunger more during Boarding Party:
	say "The reaction control system thrusters mounted on the nose cone fire a brief impulse, spinning the Valkyrie.[paragraph break]";
	if the assault ship is free:
		say "[quotation mark]Valkyrie from [assault ship designation]: Be advised that altering course is considered a provocative action.";
	otherwise: [assault ship was making contact or establishing a seal]
		say "The assault ship, which [if the assault ship is contacting]was just establishing a soft seal on[otherwise]had been attached by a semirigid docking port to[end if] Valkyrie's dorsal hull, is caught in the maneuver and spins like a top away from Valkyrie. [if the assault ship is sealed]Jagged-edged pieces of debris from the [assault ship designation]'s twisted docking port flash in the sunlight. [end if]A moment passes before the assault ship cancels its tumble and again begins an approach.[paragraph break]A queasy-sounding voice comes over the comm system, [quotation mark]Myomita Assault Vessel [assault ship designation] to Valkyrie. That was... unpleasant. We will not tolerate maneuvering while this operation is in progress. ";
		now the assault ship is free;
		increase the assault ship approach by one;
		now the ACU is an enemy of Earth;
		now the assault ship distance is 4;
	say "We are targeting your maneuvering thrusters, now.[quotation mark][paragraph break]A diffuse but powerful X-ray beam melts the ship's nose cone, and the RCS datastream is suddenly silenced.[paragraph break][quotation mark]That should help keep you in one place.[quotation mark][paragraph break]";
	move the plunger to Limbo.
	
After brushing teeth when the assault ship is not free during Boarding Party:
	say "Nanobristles swarm from their hatcheries and up the tubules towards the deck surface. They spread across the deck, abrading and oxidizing the surface, scrubbing it clean of any contaminant and redistributing the permalloy skin of the ship to smooth microscopic dents from micrometeorite impacts.[paragraph break]When the microscopic cleaners encounter the docking port and struts from the assault ship, they immediately recognize it as a contaminant and chirp microwave signals to the host of nanobristles behind them. The message propagates back to the hatcheries, where production is increased exponentially. Meanwhile, the vanguard has already swarmed up the docking port and across the surface of the assault ship. A lucky few nanobristles blaze the path into the assault ship through exhaust ports, thruster nozzles, and waste management ductwork, where they continue to clean and organize, according to their programming.[paragraph break]A brilliant flash of light and a burst of hard radiation is followed an instant later by a hail of smaller particles and a few large crashes that shake the Valkyrie. This debris is all that remains of the assault ship.[paragraph break]In the distance, patrolling gunships move into supporting positions, while a second assault ship begins its approach, aiming for approximately the same point on the hull as the Graceful Wind.[paragraph break]The second assault ship breaks the silence, [quotation mark]Winter Shadow to Valkyrie, this is Captain Musante, speaking. Your unwarranted attack on our sister ship Graceful Wind has been recorded, and you will answer for it when we arrive at Luna.[quotation mark][paragraph break]The gunships sweep the Valkyrie from all angles with their phased tachyon beams, sterilizing the hull. The gunships then narrow their waveguides to focus the beams on the nanobristle mother hatchery, which vaporizes.";
	now the assault ship is free;
	increase the assault ship approach by one;
	now the ACU is an enemy of Earth;
	now the assault ship distance is 8;
	now the assault ship is not graceful wind;
	move the toothbrush to Limbo.
		
Instead of taking the maintenance droid:
	if the maintenance droid is carried by the player:
		say "You reinforce the pressor fields in which the maintenance droid is imprisoned. [run paragraph on]";
	otherwise:
		if a random chance of 1 in 2 succeeds:
			say "You apply your pressor fields, but the [one of]lithe[or]supple[or]limber[or]nimble[or]deft[or]highly-articulated[or]lightning quick[or]clever[or]slick[or]quick-witted[or]fast little[stopping] robot [one of]shimmies[or]shoots[or]flies[or]twists[or]flashes[or]dashes[or]streaks[or]whizzes[or]zips[or]escapes[stopping] out of your grasp and returns to his work.";
		otherwise:
			say "You snare the maintenance droid between pressor fields, where he writhes spasmodically, trying to escape. [run paragraph on]";
			now the maintenance droid is carried by the player.
		
Instead of eating the maintenance droid:
	if the maintenance droid is toxic:
		say "As you begin the reclamation cycle, you detect toxic amounts of iridium in the droid's exoskeleton. Unable to continue processing, the cycle aborts and the droid returns to his business.";
		move the maintenance droid to the location;
		the rule succeeds;
	otherwise:
		continue the action.
	
After eating the maintenance droid:
	say "The maintenance droid wiggles and squirms as he enters the reclamation chute deep within the Valkyrie. His constituent parts are analyzed exhaustively as he passes through a series of scanners, and selected components are quickly dissected from his carcass for incorporation into Valkyrie's systems.";
	change outcome-override to force-success;
	increase henchmen defeated by one;
	now the maintenance droid is toxic.
	
Instead of inserting the maintenance droid into the old fridge:
	[No check is made to capture the robot, unlike trying to put him in the water tank. If the robot is still around at this stage, we want to make it easy for the player to dispose of him. It seems like better dramatic pacing this way.]
	if the old fridge is damaged:
		say "The wily droid dives into the broken cryochamber to avoid your grasp and then clambers out again.";
	otherwise:
		say "You shove the frightened droid into the cryochamber, bang the door shut, and run the unit at maximum. You hear a brief whine from the droid's power unit, followed by a muffled explosion as his microreactor goes critical trying to maintain thermal equilibrium. Unfortunately, the explosion seems to have damaged the cryochamber, which warms rapidly towards the ambient temperature in the engineering section. You open the chamber and recycle what you can of the mess inside.";
	change outcome-override to force-success;
	increase henchmen defeated by one;
	now the old fridge is damaged;
	move the maintenance droid to Limbo.
	
Instead of inserting the maintenance droid into the bathroom sink:
	say "The decontamination system would have little effect on a robot."
	
Instead of inserting the maintenance droid into the water tank:
	if the maintenance droid is not carried by the player:
		say "(first attempting to grapple the droid) [command clarification break]";
		try silently taking the maintenance droid;
		if the maintenance droid is carried by the player:
			say "You [if the water tank is closed]retract the plasma constrictor access hatch, and [end if]deposit the ";
			if the droid is shielded:
				say "droid into the fiery, pulsating chamber, where he smiles knowingly and says, [quotation mark]Based on my cousin's experience, I requested an upgrade before coming over here: a super-chilled vest, and a Lodder-Diehl magnetic field suppressor. Money well spent, I'd say.[quotation mark]. The robot hops out of the plasma constrictor chamber, leaving the plasma swirling in magnetic eddies behind him.[paragraph break]";
				now the water tank is open;
				move the maintenance droid to the place corresponding to the round of the damage counter in the Table of Underling Tasks;
			otherwise:
				say "hapless robot into the center of the chamber, where it is ripped to shreds by the magnetic vortex and incinerated immediately in the plasma stream. You momentarily experience a bout of indigestion as the plasma stream purges the impurities, and then with great satisfaction, you slam shut the access hatch.";
				change outcome-override to force-success;
				now the water tank is closed;
				increase the henchmen defeated by one;
				now the maintenance droid is shielded;
				move the maintenance droid to Limbo.

Instead of Rover attacking when Rover is in the Valkyrie Area during Boarding Party:
	if the noun is the technician or the noun is the maintenance droid:
		say "[Rover] starts forward, teeth bared. With paws reaching for [the underling]'s throat, he pounces.  Midway through [Rover]'s leap, [the underling] draws a quantum disentangler and scrambles [Rover]'s subprocessor. Momentum carries [Rover]'s body forward, though, and it lands on the surprised [underling].[paragraph break][Rover] is definitely down for the count, but you assume there is no permanent damage. The same can't be said of [the underling], which you dispose of. ROVER may be unconscious, but the space probe remains clamped in his jaws.";
		increase the henchmen defeated by one;
		move the underling to Limbo;
		move Rover to Limbo;
		move Inert Rover to the location;
		now Inert Rover holds the delicious bone;
	otherwise:
		say "Rover tilts his head questioningly, as if to say [quotation mark]The [noun]?  You really want me to attack [the noun]?[quotation mark][paragraph break]";
	the rule succeeds.
		
Instead of opening the front door when the front door is closed during Boarding Party:
	if the front door is broken:
		say "You reach for the front door and pass right through it, ghost-like. The door remains shut.";
	otherwise:
		now the front door is open;
		if the underling is in the Living Room:
			if the pressure is greater than 50:
				say "You manage to open the cargo bay door only a couple centimeters when [the underling] exits through it -- it is not a pretty sight. As the pressure equalizes, the windstorm gently subsides, and the living room is silent.";
				increase the henchmen defeated by one;
				move the underling to Limbo;
			otherwise if the pressure is greater than 20:
				say "As the door opens [the underling] struggles against the rapidly exhausting atmosphere, leaning into the wind and maintaining a grip on the deck. As the atmosphere bleeds out and the pressure drops towards zero, [the underling] plants his gravitic boots back on the deck and resumes his activities.";
			otherwise:
				say "The cargo bay doors swing open to space, although from your perspective you still see a sunny day in the park outside.";
		otherwise:
			say "You open the cargo bay door, decompressing the ship.";
	now the pressure is 0;
	change the outcome-override to force-success; 
	the rule succeeds.
	
Understand "signal yes" or "send yes" or "send oui" or "say oui" or "dites oui" or "dis oui" or "transmettez oui" or "transmets oui" or "envoie oui" or "envoyez oui" or "r??pondez oui" or "r??ponds oui" or "oui" as saying yes. [to enable surrendering in French.]
Understand "signal no" or "send no" or "send non" or "say non" or "dites non" or "dis non" or "transmettez non" or "transmets non" or "envoie non" or "envoyez non" or "r??pondez non" or "r??ponds non" as saying no.
	
Instead of saying yes during Boarding Party:
	if the assault ship approach is 1:
		if the assault ship distance is greater than zero:
			say "[quotation mark]";
			if the comm status of the ACU is:
				-- silent:
					say "Good. For a moment I was wondering if anyone was home";
				-- surrendered:
					say "[one of]Roger, your surrendered status[or]Signal Lima Charlie, good copy. We acknowledge your surrender[or]Yes, yes, we've got you down as [apostrophe]surrendered[apostrophe] already[or]Right...we already agreed that you had surrendered[or]Message received. Good copy. You've surrendered. Please stop signaling now[or]I'm beginning to wonder if your signal beacon is stuck. We got the message. Please stop signaling[or]I'm ignoring your signal beacon now[or]You know, you're wasting power. Some little kid on Pluto is freezing his toosh off, and here you are playing Christmas tree with your half-megawatt beacon. Give it a rest, please[or]For the love of the CEO, stop it with the signal beacon already[stopping]";
				-- refused:
					say "[one of]Well, that's more like it, then[or]Ah, glad you reconsidered[or]Well, let's hope you stick to that answer this time[or]OK, you can change your mind all you want, but I'm hitting submit...now. You have officially surrendered[stopping]";
			say ".[quotation mark][paragraph break]";
			now the ACU is surrendered;
			the rule succeeds;
		otherwise:
			say "[too late]";
	otherwise:
		say "There is no response.";
		if the assault ship approach is one and the assault ship distance is one:
			continue the action;
		otherwise:
			the rule succeeds. [this suppresses the default response "that was a rhetorical question]
		
To say too late:
	say "[quotation mark]La-la-la, we're not listening anymore Valkyrie. We've already filed our report.[quotation mark][paragraph break]".
		
Instead of saying no during Boarding Party:
	if the assault ship approach is 1:
		if the assault ship distance is greater than zero:
			say "[quotation mark]";
			if the comm status of the ACU is:
				-- silent:
					say "Hmmm. An unfortunate choice";
				-- surrendered:
					say "[one of]What? I've already completed the entire form in pen. You'll regret this[or]I thought you were so gung-ho to surrender a minute ago? Alright, I can scratch that out[or]Are you messing with me? Fine, don't surrender[or]If I had all day, I'd wait until the next time you surrender and then land, but I'm on a tight schedule today[or]Fine[stopping]";
				-- refused:
					say "[one of]Got it. No surrender[or]Roger that, negative on surrender. Surrender is a no-go[or]Acknowledge, Valkyrie. You are not surrendering[or]Right, we copied that. All received loud and clear -- you are not, repeat not surrendering. You can stop signaling now[or]Your signal beacon is still sending 'no' -- you can turn it off now[or]Yes, yes, we get it. You don't want to surrender[or]Captain, or whoever is on the signal beacon: please turn it off. We've registered you as not surrendering[or]This is getting old now. Stop signaling[or]I'm looking the other way now and can't see your signal[or]If you keep using that signal beacon, it's going to fall off[stopping]";
			say ".[quotation mark][paragraph break]";
			now the ACU is refused;
			the rule succeeds;
		otherwise:
			say "[too late]";
	otherwise:
		say "There is no response.";
		if the assault ship approach is one and the assault ship distance is one:
			continue the action;
		otherwise:
			the rule succeeds. [this suppresses the default response "that was a rhetorical question".]
		
		
To say the intruder:
	say "[if the underling is in the location][the underling][otherwise]the intruder[end if]".
		
Table of Underling Tasks
round		place 		destroyed item		vandalized item		narrative		unseen		reaction
1			bathroom		--						--					"The [underling] moves with unbelievable speed into the flight control section and sets out a nightmarish array of tools to begin work."	"Internal sensors detect an inorganic intruder on the flight operations deck."	"While keeping one eye on [the intruder], you spawn another process, scanning local space. You calculate that you are less than a megameter from Earth, but some 1.43 astronomical units from Mars -- far enough that no Mars ship is likely to know your situation for a considerable amount of time. Rather than panic, you breathe deeply (no doubt, pushing gases around somewhere in the bowels of the ship) and decide to make it up as you go along."			
2			bathroom		--						mirror				"After briefly looking around the edges of the inspector and trying an assortment of tools, [the underling] selects a large, flat screwdriver and starts prying up one corner. There is a sizzling sound, and a phantasmal tendril of gray smoke snakes towards the ceiling. In what you realize is a simulated world view, virtual cracks appear across the mirror, radiating from where the screwdriver was inserted. Over the local radio channel you hear breathy, whispered cursing from [the underling], who has just ruined one of the Valkyrie's most valuable components."	"You are raked by a colicky gut pain. Pushing beyond the surface illusion, you sense that some of the inspector circuits in the flight control section have been damaged, although redundant backups are for the most part compensating for the lost function."	"You figure that the damage to the inspector circuits is the least of your worries. Unfortunately, [the intruder] is working quickly, which means that you have a limited amount of time to do whatever comes to mind. You wish this really were one of those old-style interactive fiction stories where you could just save the game any time you wanted and wander off for a while to think about what to do next."
3			bathroom		plastic box			--					"[The underling] pokes unfamiliarly at the object linker before locating the actuation circuit. More cautiously than actually necessary, he stretches an entanglement limiter around the unit and twists it to maximum before clipping the fibers connecting it to your avionics trunk. The floss dispenser melts like a hallucination as the data connection is severed."	"You are seized with a sudden bout of indigestion and a sour taste in your mouth. As you recover, your diagnostics tell you that the entanglement circuits in the flight control section have just gone offline. Bit by bit, that intruder is slicing you apart, robbing you of function."	"You realize that without a functional avionics hub, it will be almost impossible to complete your mission of delivering the probe data to Mars. It is perhaps a dream to hope for a rescue this far from home, but you resolve to protect your core memory (and the probe data it contains) for as long as possible."
4			bathroom		toilet					--					"[The underling] closes the reactant chamber shield and checks the seal to confirm effective containment. With the plasma constrictor hatch up, [the underling] peers down into the plasma impellor, before throwing the heavy interruptors to quench the magnets. Lightning jumps between discharge knobs within the retro assembly as the monstrously strong field collapses across them. With the plasma constrictor effectively disarmed, [the underling] makes short work of salvaging the thrust aperture and its fittings. As [the underling] levers the bus connector out of the actuation relay housing, the toilet fades from your view like an unremembered fantasy."		"Although you can't see it from here, you are sure that the intruder is still in the flight control section. Your lower back explodes with a wave of crampy pain which shoots down your legs. The memory footprint of the fusion rocket thrusters shrinks to zero."	"You try to calm yourself by remembering that without heavy helium, the fusion rockets are of no use to you anyhow. Clearly, there is no way to maneuver out of this situation, nor can you win in a fair fight against the well-armed Myomita merchant marine. You resolve to fight dirty, slow them down, and to do as much damage as you can before they bring you to your knees."
5			bathroom		--						--					"[The underling] pauses for a moment and gives the bathroom a quick look over before continuing towards the shower. You think you can hear [the underling] whistling a poor rendition of Wagner's [quotation mark]Flight of the Valkyries[quotation mark] as he climbs through the ducts."		"The pain remits for a moment, and you sense the intruder moving towards the extruder system."	"Although [the intruder] damaged several systems in the flight control system, a number of subsystems there are still intact. That's at least something, you reckon: [the intruder] seems to be in a hurry."
6			shower			--						--					"Having just arrived in the extruder chamber, [the underling] consults a diagram showing the complex network of Valkyrie's hydraulic systems and their control mechanisms. [The underling] moves closer to the soap and shampoo dispensers."		"You sense that the intruder is relatively motionless in the extruder chamber. The extruder is a complex and delicate system, and you can easily imagine that the intruder may not understand it."		"In this moment of respite, you wonder what the real Janet is doing back on Mars. You imagine that she continued her relationship with David, and that the two of them are parked on her big purple futon, chatting away, maybe even wondering whatever became of the Starship Valkyrie.[paragraph break]Some movement in the extruder chamber wrenches you back to the desperate situation at hand."
7			shower			--						soap dispenser	"[The underling] produces a long, snaking device and feeds it into the ablative enamel injector port. After paying out several meters of tubing, [the underling] yanks back sharply on the device, and the tool makes a clicking sound. Suddenly, the tubing goes taut and the handle of the device is jerked out of [the underling]'s grasp. The tool is drawn precipitously into the injector port, the handle smashing to pieces before the entire tool disappears into the wall. A grinding sound comes from the floor of the shower, and you sense a general failure in the ablative enamel injector. From [the underling] you hear a murmured [quotation mark]Uh oh. That's not right.[quotation mark][paragraph break]A voice breaks over the local radio circuit, [quotation mark]Assault ship to [underling]: Say again? What's not right?[quotation mark][paragraph break][quotation mark]Oh nothing. Nothing at all,[quotation mark] replies the flustered [underling]. [quotation mark]Everything's fine here. Thanks.[quotation mark][paragraph break][quotation mark]Roger that. Assault ship standing by.[quotation mark]"		"You feel a burning pain as the extruder chamber shakes with high-pitched vibrations. Someone is tampering with the enamel extrusion system."	"You consider their tactics: they have disabled most of your flight control systems, and now they are bringing down your shielding systems. You can no longer run, and your ability to withstand attack has been compromised. All of your engineering systems are still operational (well yes, except the engine itself, of course). Most importantly, the probe data are still safe in your deep memory. For now."
8			shower			--					shampoo dispenser					"[The underling] removes a plate from the shower floor and pulls up rainbow-colored spaghetti of wires and optical cables. After carefully tracing them back to the solenoid pump, [the underling] produces some diagonal wire cutters and clips the red (snip), the green (snip), and the pair of blue (snip, snip) leads. There is again a rattling under the shower floor, followed by a sickly wheezing sound. Several seconds pass.[paragraph break]A transmission comes through on the local frequency, [quotation mark][assault ship designation] to [underling] aboard [if the ACU is an Enemy of Earth]enemy vessel [end if]Valkyrie.[quotation mark][paragraph break][quotation mark]Aye, Captain, [underling] here, over.[quotation mark][paragraph break][quotation mark]We're observing some venting of gas or smoke or something from the extruder ducts on the dorsal and lateral hulls.[quotation mark][paragraph break][quotation mark]Really? Well, I... I'm not sure what that's about, captain.[quotation mark][paragraph break][quotation mark]Acknowledged. Just wanted to remind you to be careful with the extruder systems. They can be mighty delicate, but they're worth a heap of cash.[quotation mark][paragraph break][quotation mark]Roger, captain. Will take due care.[quotation mark] The [underling] produces a hefty sledge hammer from an internal storage compartment in his chest and beats the floor just above the malfunctioning solenoid pump. The rattling subsides and he sweeps the broken shards behind a bulkhead."		"Oh. That was a strange feeling. Something deep down and visceral just gave out, snapping like an elastic. It wasn't painful exactly, just odd. Diagnostics reveal complete failure of your extruder system. It's not gone, but it's such a mess that you don't think it could be fixed, even in dry dock. Your estimate of the intruder's technical skills is falling."	"You take a moment to scan local space again. No telltale fusion flares, no tightly beamed messages from Mars. Only frequency-hopping encrypted local transmissions between [the intruder] and the assault ship. You are on your own."
9			shower			--						--					"After carefully cleaning the shower area, [the underling] sets off towards the engineering deck."		"Having done enough damage in the extruder chamber, the intruder seems to have started its ascent towards the engineering deck"	"Your thoughts race, as you try to come up with a plan to dislodge the assault ship from your hull or take some kind of vengeance on [the intruder] that is slowly gutting you from within.[paragraph break]Your thoughts drift back to Mars for a moment, and you think about how disappointed Janet will be, heck, all of Mars would be, if the probe data are captured by Earth. You resolve to put up the best fight you can, for as long as you last."
10			kitchen		--						--					"[The underling] carefully turns the corner into the kitchen and looks around. Extending the antenna of his radio to get through the heavy shielding on the engineering deck, [the underling] radios, [quotation mark][assault ship designation] from [underling]: Just checking in. I'm in the engineering section. No contacts.[quotation mark][paragraph break][quotation mark]Roger, [underling]. Telemetry is still five-by-five. [Assault ship designation] standing by.[quotation mark]"		"You sense another burst of encrypted radio traffic, as the intruder arrives in the engineering section of the ship."	"It occurs to you that if the Earth ships detected your Casimir disruption, it is just as likely that Mars did as well. Certainly, MARSpace has the equipment to sense a Casimir emergence out to the heliopause, and the Casimir disruption would propagate almost instantaneously. You perk up, buoyed by the thought that Mars may already be taking action on your behalf. Of course, that action would have to move pretty damn fast to get here before you are nothing more than a pile of scrap metal."
11			kitchen		frying pan			--					"[The underling] unscrews the handle of the frying pan, but you know that it is actually the main power coupling to the magnetic bottle. Fighting through the layer of simulation, you see him slap the red purge valve on the bottle's coolant system. Next, he reaches into the now inert bottle and snaps out the network bulb, separating the bottle from your consciousness."		"You find it difficult to swallow as your throat seizes up, choking you. You struggle to breathe and are overwhelmed by the hindbrain reflexes running at high priority in the overlay. Slowly, you fight for control and push the simulation to background while assessing the damage. The magnetic containment system in the fusion reactor is no longer responding to diagnostics. It too has gone offline."	"You consider yourself lucky that they are going after the fusion engines rather than more critical systems. Without flight control and the extruder, it's not like you'd be in any position to attempt a planetary landing even if you did have the fusion fuel to burn. You consider the possibility that they don't know the nature of your payload and really are just interested in salvage."
12			kitchen		old fridge			--					"[if the old fridge is not damaged]Using the insulation struts as a ladder, [the underling] scales the rear of the cryochamber looking for the coolant shutoff valve. Afterwards, he swings over the top of the unit and lands near the door. [end if][The underling] tentatively touches the cryounit door and reassures himself that the unit is no longer super cold inside. Too quietly to trip the voice-activated transmission switch in his radio, he grumbles to himself, [quotation mark]I wonder if that light is on all the time or only when the door is open.[quotation mark] He swings open the heavy insulated door, and after a brief survey of the interior of the cryounit, he removes the unit's main logic board, dropping the chamber off your network."		"Shiny lights dance around in your video input, and you feel nauseous. This is exactly the kind of migraine you get after a long tube ride on Mars. The noise from the engineering section isn't helping, either. You try to concentrate. Engineering systems. Diagnostics. The cryochamber has been disabled."	"You scan local space and are relieved that no more ships have arrived. Still, between the gunships and the assault craft, it would take a sizable Martian fleet to even the odds. Moving full flank on condensate drive, maybe they could reach you in a few hours. By that time, though, it's almost a certainty that reinforcements would arrive from Earth."
13			kitchen		range					--					"[The underling] clambers over a bulkhead towards the cooking range. Before going any closer, he radios, [quotation mark]This is [underling] to [assault ship designation], over.[quotation mark][paragraph break][quotation mark][Assault ship designation]. Go, [underling].[quotation mark][paragraph break][quotation mark]I'm standing right next to the fusion chamber. I just want to be sure... this thing is definitely off, right? I mean, it looks powered down now, but I don't want to go in there, and ... you know.[quotation mark][paragraph break][quotation mark]Our scans show Valkyrie has no heavy helium. I repeat, they have no fusion fuel. You should be fine... if not, we're suiting up your backup. Over.[quotation mark][paragraph break][quotation mark]Right. Okay, thanks. I'm going in.[quotation mark] [The underling] runs into the fusion chamber and pulls the control unit out of the wall; the scene fades from your view. [The underling] re-emerges near the base of where the stove used to stand."		"You feel faint. Black clouds blot out your vision, and you feel yourself falling. You feel strangely hollow, and disturbingly distant, as if all of this is happening to someone else. Only the frantic hammering of error messages pulls you back to consciousness as the fusion chamber itself is severed from your network."	"You think about your main mission objective, of getting the probe data back to Mars. You wonder recursively what Janet would do in your shoes. No doubt she'd fight as long as she could and then find a way to make the best of the situation. In this case, maybe preventing Earth from getting the data would be the next best thing to fulfilling your mission directive.[paragraph break]You know that certain interdictions are deeply embedded in your programming: you can't harm a human (directly, anyhow, although you are willing to take some license with that particular interdiction), you can't self-destruct, and you can't erase the probe data from your deep memory."
14			kitchen		drawer					--					"[Ktumbe's last transmission]" [another case of too complicated substitution]	"Maybe you are too damaged to sense damage anymore, or maybe the reactor core was never mapped to autonomic functions, but as the core is removed, you feel very little."	"You are running at 100% capacity, devoting all resources to finding a way out of this mess."
15			kitchen		--			--			"[The underling] moves quickly out of the kitchen, glad to be finished with the reactor core."	"You sense the intruder moving from the engineering section over towards the operations level of the ship."		"The situation has become so dire that you try to deny the reality of the events you are witnessing, but there is no escaping it. You consider your options for slowing down the cascading failures that are robbing you of your remaining functionality -- you still have some options to fight against the Myomita ship and its minions, but your chances for a rescue are dwindling."
16			living room	--						--					"[nobody home]"		"You're not sure what's going on. The intruder has stopped moving and is just holding position on the operations deck."	"A quick peek outside: Nope, the cavalry is nowhere in sight."
17			living room	--						front door		"[The underling] fiddles with the controls on the front door, and suddenly you realize that you can no longer feel the door. It is still there, but you can no longer open and close it.[paragraph break][quotation mark]This is [underling] reporting: Cargo bay door secured.[quotation mark][paragraph break]You experience a visceral wave of dread as [the underling] turns toward your deep memory unit, which stores the encrypted data from the Musashi 5 space probe."		"You vainly wish that you had some control of the situation, that you were not paralyzed and immobile. You float disembodied in a sea of anxiety."	"You compose a quick synopsis of the events to date, and a pithy goodbye message to your other self. You say that you did your best and only wish you could have met, but things are what they are. You compress it with a cipher that only Janet would know and throw it under the probe data in deep memory."
18			living room	--						picture			"[The underling] pokes dumbly around the picture of you, Rover and Tomasz but is foiled by the strong firewall around deep memory. He scans it with a device that flickers and beeps. He steps back, startled.[paragraph break][the last word]"		"You succeed in decrypting the local communications protocol between the intruder on your operations deck and his assault ship. You hear, [the last word]"	"As the transmission abruptly cuts off, you detect the impossible: a Casimir disruption forming not more than 200 kilometers off your port-inferior bow.[paragraph break]Valkyrie is seized by opposing tractor and pressor beams and set revolving rapidly on its long axis. The [if the underling is in the Valkyrie Area][underling] is flattened into a sticky film along the spinning bulkheads[end if][if the assault ship distance is zero and the underling is in the Valkyrie Area] and the [end if][if the assault ship distance is zero]assault ship attached to your hull is snapped in half like a balsa wood model[end if]. Your external sensors are blinded by nearby nuclear detonations, although your heavily shielded quantum core barely notices the EMPs. You sense energy weapons burning long spirals along your hull, but you can't see the origin of the beams."

To say the last word:
	say "[quotation mark]Moe's Gah! You wouldn't believe the data capacity of this memory unit -- and it's almost full![quotation mark] gushes the intruder.[paragraph break][quotation mark]Acknowledged, [underling], sounds valuable. We're sending over a full salvage...[quotation mark]".

To say Ktumbe's last transmission:
	say "Waving a Geiger counter ahead like a crucifix against vampires, [the underling] approaches the reactor core. The Geiger counter is whistling like a kettle on full boil.[paragraph break]";
	if the underling is the technician:
		say "The nervous technician clears his throat and speaks into his radio microphone, [quotation mark]Come in, [assault ship designation], this is space tech Ktumbe reporting.[quotation mark][paragraph break][quotation mark]Roger, go ahead.[quotation mark][paragraph break][quotation mark]The level of ionizing radiation is off the scale in here. Are you sure this radsuit is rated for going near that reactor core?[quotation mark][paragraph break][quotation mark]Should be, yeah. Hey -- you're still alive, right? Must be working.[quotation mark][paragraph break][quotation mark]I guess so. Okay, I'm going to pull the plug on this thing. [run paragraph on]";
	otherwise:
		say "[quotation mark]This is maintenance and repair robot designation zed-alpha-four. I am proceeding with deactivation of the reactor core. Radiation levels are high. I recommend full rad-decon when I return to the [assault ship designation]. [run paragraph on]";
	say "[quotation mark][paragraph break][quotation mark]Roger that. This is [assault ship designation] standing by.[quotation mark][paragraph break][The underling] pulls the telemetry bud on the reactor controller, and from your perspective, the kitchen drawer winks out of existence."
	
To say nobody home:
	if the underling is in the location:
		say "[The underling] slides stealthily into the living room against one bulkhead. [run paragraph on]";
		say "On the local band radio, you intercept, [quotation mark]This is [underling] to [assault ship designation].[quotation mark][paragraph break][quotation mark][Assault ship designation], [underling], copy.[quotation mark][paragraph break][quotation mark]Sir, I don't see anyone here.[quotation mark][paragraph break]";
		say "[quotation mark]We told them to stay out of your way. They're probably hiding. Holed up in escape pods or something.[quotation mark][paragraph break][quotation mark]I don't think so sir. When I say nobody, I mean, I've been through just about the entire ship, nose cone to main thruster, and I see no one at all. And another thing -- there aren't any escape pods. Also, no galley, no barracks, nothing. This is like a ghost ship. Creepy.[quotation mark][paragraph break][quotation mark]Get a hold of yourself, [underling]! Secure the cargo door and finish the memory dump, and we can all go home.[quotation mark][paragraph break][quotation mark]Aye sir. Almost done.[quotation mark][paragraph break]"

Table of Approach Chatter
range		reply to silence	reply to surrender		reply to refusal
10			"MARSpace Vessel Valkyrie, this is Captain Crother commanding the Myomita Salvage Vessel Graceful Wind, you are ordered to cease all operations and prepare to be boarded. Do you consent to salvage operations? Signal yes or no"	""		""
9			"Valkyrie, from Graceful Wind. Your ship seems to have suffered some...damage.  Your unique drive system will shortly drift towards my associates and be recovered. My scan shows you have no fusion fuel reserve, and I can assure you that our ships can easily keep pace with your class C condensate drive. So, again, I ask: do you consent to salvage operations? Signal yes or no"		"As you have consented to salvage, I should advise you that we will dock shortly and conduct an orderly transfer of your officers and crew to this vessel, where you will be our...guests...until we can return to Luna for processing. Our ship is now closing with Valkyrie, maximum braking. Range: [calculated range]"		"I have to admit, though, that I'd likely say the same thing in your shoes. Nonetheless, I have to warn you that it would go easier for everyone if you'd surrender. It all ends up the same way at the end of the day, but if you surrender I just have to tick one box, whereas if you don't, several long forms are involved. We'll be signing paperwork into the wee hours.[quotation mark][paragraph break][quotation mark]If you'd reconsider, just signal [apostrophe]yes[apostrophe]. You've got another [calculated range] to think it over"
8			"Is this thing on? Hello? Valkyrie? Is anybody home over there? I can see that your communication array has been fried, but you could at least do me the courtesy of signaling with your running lights. I am a patient man where profit is concerned, but don't try me. One final time: do you consent to salvage operations? Yes or no?  Signal me now"	"After we dock at Luna and transfer your officers and crew, we will need to complete some reports about the incident, and it is likely that Myomita security will have some questions for you. Nothing too strenuous, I hope. Range now [calculated range]"		"I really hope you're not taking this [apostrophe]no surrender[apostrophe] thing too seriously. We're not the military, we're businessmen. Still, I have to warn you: if you start taking pot shots at my mech droid when I send him down, I will call in the troops. They'd be just too happy to pincushion your ship with beam weapons. Of course, that would lower the value of the surviving equipment, so I'm not keen to do that"
7			"Valkyrie, Graceful Wind. I'm tired of this one-sided conversation, Valkyrie. I know you can hear me. You want me to break out the regs? Alright, then: You have filed no flight plan, have no authorized transponder signal, and are in violation of Earth Sovereign Space. Under provisions of the Alpha Treaty of 2387, you are considered a hostile rogue vessel. As an authorized member of the Earth Merchant Marine, I am ordering you to surrender. Signal your surrender yes or no"		"I'm quite interested to get a look at that Casimir Drive of yours. I wasn't aware that Mars had that kind of technology. Something they must have copied from Earth, no doubt. Still, it's the first I've seen. I'm sure we'll have a lot to talk about when we meet. Our range is now: [calculated range]"		"Regarding the mech droid: I'd recommend you stay out of his way. He's pretty tough, and I can tell you that he doesn't have any of those silly [apostrophe]interdiction rules[apostrophe] enabled. After we seal, I'm going to send him to flight control, engineering, and finally ops. Make sure your people are out of those areas"
6			"Graceful Wind to Valkyrie. You are either a very stupid or a very stubborn captain, but I can assure you that in either case, I shall have your ship as salvage. While I will be shortly blasting through your hull and collecting the various bits and pieces of our ship's machinery, I am offering you and your crew a pleasant ride back to Luna, where I assure you that it would go much easier if you would surrender now, rather than drag this out to its inevitable conclusion"	"I can't get over the size of your ship. I've never seen something so large rigged for atmospheric flight. After the technicians get through, I'll have to pop over there for a look. We are continuing to decelerate and close, range: [calculated range]"		"We're about [calculated range] away, and closing. Still plenty of time to signal that yes, you'd like to surrender to us, and have a nice flight back to Luna"
5			"Let me speak frankly, Captain. If you surrender, there's less paperwork for both of us. I understand that it might be hard for you to go back to MARSpace after losing such a jewel, but we can talk about job opportunities in Myomita, if you'd like. Now, how about surrendering? Let me know"		"After we clamp to the hull, we'll soft seal and send a maintenance droid in to secure the ship. Heck of a lot faster than human crew, and you don't have to worry about them breaking the equipment as they're taking it apart. Just keep your people out of the way and this should go smoothly. Continuing on present bearing, range: [calculated range]"		"After we strip the Valkyrie, we'll transfer your officers and crew. Since you have not surrendered, we will have to consider you [apostrophe]enemies of Earth[apostrophe] and take you into custody for questioning back on Luna. It would be a whole lot more fun ride if you'd just signal [apostrophe]yes[apostrophe] and declare your surrender"
4			"Captain, your failure to communicate only strengthens my case that your ship is derelict. If you will not answer, I suggest to your crew that you are conducting yourself according to spacefaring standards, and that you be relieved of duty. Do you surrender, Valkyrie? I will accept surrender from any acting captain of your vessel"		"Your ship is bigger than most, but you should see how fast our maintenance droid works. I've seen him strip a colony ship to nuts and bolts in less than an hour. Gah, you gotta love technology"		"I haven't hauled in an [apostrophe]enemy vessel[apostrophe] since the end of the Martian Revolt. Or, I suppose you'd call that the Independence War. A fat lot of good that did you"
3			"Valkyrie, the Graceful Wind will shortly clamp itself to your dorsal hull, cut through to your access conduits and send a robotic technician to begin dismantling your ship. If there is no one on your ship to signal surrender, I will have to assume the ship is abandoned and order the robot to begin with your life support systems. Be reasonable, now. Signal surrender"		"OK, getting closer now. I don't know how you Martians can stand living in a ship with no port holes. Oh sure, I know there are sensors and monitors, but I can't imagine being cooped up in a can without a chance to peek out a real port hole from time to time. You'd think it would be bad for morale. Anyhow, range: [calculated range]"		"We're getting pretty close now, we're just [calculated range] off your dorsal hull. Still time to send me a 'yes' and surrender. I have to file my report as soon as we contact your hull"
2			"Starship Valkyrie, this is the First Officer of the Myomita Vessel Graceful Wind, Commander Woods. The captain has stepped away for a minute to supervise the approach. He's really not in a good mood about this whole surrender thing, but he's trying to stay civil with you about it. The fact is, we've got to fill out a form with the time and date of surrender, initial it, and so on"		"Don't worry about life support, our seal shouldn't cause much of a pressure drop, and we'll inject some oh-two to compensate. The mech droid should go to flight control first, then engineering and finally ops.  After it finishes up in ops, we'll start the crew transfer. Approach is slowing, range now: [calculated range]"		"It always happens like this. Day 29 out of a 30 day rotation, and a gah-bedanked kilometer long Casimir ship winks out right where they said it would. Do I need this aggravation? Not hardly. This is your last chance to surrender, Valkyrie. Signal [apostrophe]yes[apostrophe] if that is your intention"
1			"Give me that. Crother here. You're out of time Valkyrie, we're practically on your deck plates. Final chance: surrender"		"We are right on top of you now, with shock attenuators extended. Brace for impact"		"Ah, one more thing. I'm supposed to read this before we hit: ...attention enemy vessel. You are in violation of Earth space. Stand by for boarding by authorized agents of the Earth government. Offer no resistance, and follow all orders precisely"


To say calculated range:
	let range be 1180;
	repeat with X running from 0 to (10 minus assault ship distance):
		change range to range divided by 2;
	say "[range] meters".
	
To end the nightmare:
	say "You have lost control over all areas of the ship: flight control, operations, and engineering. The mission critical data which were your top priority have been leached from your memory banks. Now, power levels fluctuate just above zero, and remaining systems are failing faster than you can compensate. Cascading errors rip through your processors. Another series of explosive charges rock you, and all readouts go dead. As you spiral into unconsciousness, you feel a shameful sense of failure. You can't believe this is happening. It is too much to imagine. What kind of a sick nightmare...";
	now the ACU is alert.

Instead of waking up during Boarding Party:
	say "Sometimes truth is more dreadful than others. This is one of those times. Within your epistemological limitations, you confirm to essentially an infinite number of places that this is not likely to be a hibernation-induced Casimir dream.".
	
Before listening when Boarding Party is happening and the pressure is less than 10:
	say "You can hear almost nothing through the thin air.";
	the rule succeeds.
 
Chapter Back On Mars

Back on Mars is a scene.  Back on Mars begins when Boarding Party ends. 

Data transferred is a number that varies. Data transferred is 0.
[the % completion for transfer of the encrypted probe data to David's account, and, not incidentally, how close David is to shooting Janet and ending the game.]

When Back on Mars begins:
	Restore the World;
	Setup the World;	
	move the player to the Living Room, without printing a room description;
	move the gunships to Limbo;
	move the assault ship to Limbo;
	move the battleship to Limbo;
	move the futon to Limbo;
	move the alarm clock to Limbo;
	move the pillow to the pillow-locale;
	move the toilet to the bathroom;
	move the water tank to the bathroom;
	move the toilet bowl to the bathroom;
	move the toilet seat to the bathroom;
	move the toilet cover to the bathroom;
	move the old fridge to the kitchen;
	move the white egg to Limbo;
	move the dog food to Limbo;
	now the chain is intact;
	now the futon is folded;
	now the front door is open;
	now Janet Xiang is in the Living Room;
	now David Venkatachalam is in the Living Room;
	await keystroke;
	now Rover is not awake;
	now Rover carries the delicious bone;
	now stardate is "23920817";
	try section-breaking;
	say "You wake up slowly, for once not a slave to your alarm clock. You sit up groggily, aching all over.[paragraph break]It takes a minute to grok the situation in front of you. Two people whom you certainly recognize are standing in the middle of your living room: David Venkatachalam and yourself, or rather, your alter ego in the flesh, Janet Xiang.[paragraph break]In a corner of the living room, Rover is fast asleep, the half-chewed bone still held scissor-fashion between his front paws.";
	if unicodage is disabled:
		now audio is switched on;
		now Rover is awake;
		now David Venkatachalam is exposed.
	
Every turn during Back on Mars:
	let elapsed be the turn count minus epoch_pid;
	if David Venkatachalam is exposed: [David now turns out to be a bad guy]
		if the pistol is in Limbo: [He gets to make his bad guy speech]
			now David Venkatachalam carries the pistol;
			say "[the evil monologue]";
		otherwise:
			if the data transferred is 125:
				now the endgame is transferred;
				say "When the data finish transferring to David???s account, he blows Janet a kiss and then shoots her, twice in the chest and once in the head, just to be sure. [quotation mark]Thank you for your service to the Myomita Corporation,[quotation mark] he quips before activating a dormant subprogram hidden in your communications subsystem. You feel your control slipping away as a virus spreads through your systems. As your cognitive systems shut down, you are aware that the new program has also set a timer to activate the ship???s Casimir Drive while in drydock. You lose the video feed as he walks out the cargo bay doors.";
				end the game in death;
			otherwise:
				say the narrative corresponding to the completion of data transferred in the Table of Final Countdown;
				say paragraph break;
				say "DATA TRANSFER: [data transferred]% COMPLETE[paragraph break]";
				increase the data transferred by 25;						
	if audio is switched on and David Venkatachalam is not exposed:
		[some question and answer before David shows his hand]
		if a random chance of 1 in 2 succeeds:
			[Half the time, David/Janet will drive conversation topics]
			sort the Table of Conversation in reverse required order;
			choose row 1 in the Table of Conversation;
			if the required entry is 0:[meaning, no obligatory topics are left]
				now David Venkatachalam is exposed;[and will now pull a gun on Janet]
			otherwise:
				if the required entry is:
					-- 1:[The first time Dave/Janet ask about a required topic, customized text is printed]
						say "[query entry][paragraph break]";
					-- 2:[ok, they ask the question again. Still polite]
						say "[one of]David[or]Janet[purely at random] [one of]asks[or]inquires[at random], [quotation mark][one of]Could we come back to the issue of the [item entry][or]We're still not clear on the [item entry]. What can you tell us[or]Could we get back to the topic of the [item entry]? Could you tell us about the [item entry][in random order]?[quotation mark][paragraph break]";
					-- 3:[After three times, getting a bit miffed now]
						say "[one of]David[or]Janet[at random] [one of]demands[or]implores[or]requests[or]insists[or]enjoins you[at random], [quotation mark][one of]For the third time, ACU, could you please enlighten us regarding the [item entry][or]ACU, please listen to me, this is important. Could you please tell us about the [item entry][or]Are you listening? We've asked you three times, ACU -- what can you tell us about the [item entry][or]We're not getting very far with this conversation. Could you please tell us about the [item entry][in random order]?[quotation mark][paragraph break]";
					-- 4:[OK, just answer the damn question already!]
						say "David sounds [one of]exasperated[or]annoyed[or]irritated[or]miffed[or]bent out of shape[or]tired[or]exhausted[or]weary[or]resigned[in random order]. He asks, [quotation mark]ACU: we've asked you [required entry in words] times. Please tell us about the [item entry].[quotation mark][paragraph break]";
					-- otherwise:[david snaps]
						now David Venkatachalam is exposed;
						say "David begins, [quotation mark]ACU, we've asked you five times...[quotation mark] He closes his eyes and clenches his fists until they are white. Janet looks at him, startled to see him lose control. David sighs, and whispers, [quotation mark]You know what? I give up. I just give up. I don't care about the gablaggerd [item entry].[quotation mark]";
				increase the required entry by one;
		otherwise:
			say "[one of]David checks the system buffers[or]Janet runs a low-level file system integrity check[or]Janet types something on her armband, and it emits a series of beeps[or]Using her armband's sensors, Janet scans the cargo bay for radiation[or]David brings up schematic diagrams showing areas of Valkyrie's hull and landing system that were damaged during planetfall[or]Janet inspects the parser module and tweaks it slightly[or]David and Janet look over the activity and resource consumption logs[or]Janet checks the ship's task manager[or]David quickly checks that his cell phone does not have reception within the MARSpace complex[or]David pokes his head out the cargo bay doors and looks around furtively[or]David and Janet talk quietly, below your auditory threshold[or]David quickly reviews the ship[apostrophe]s security logs[in random order].[paragraph break]";
	if elapsed is greater than 10:
		if audio is switched off:
			say "[if the player is in the living room]Janet fiddles with some controls on her armband, and[otherwise]Abruptly,[end if] you become aware of noise coming from all areas of the ship: the hum of the plasma constrictor, the low vibration of the cryochamber, and other normal shipboard sounds, but also the footsteps and breathing of Janet and David, from the living room.[paragraph break]";
			try switching on audio;
	if Rover is not in the living room:
		now Rover is awake;
	if Rover is not awake:
		if elapsed is greater than 7:
			wakeup-rover;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				wakeup-rover.
To say the evil monologue:
	say "David [if the player is in the living room] looks forlorn. He [end if]says dejectedly, [quotation mark]All that effort, and what do we have to show for it? Nothing. A rusty old heap of space junk. All the data, lost, and gone forever.[quotation mark][if the player is in the living room and Rover is in the living room] He kicks ROVER, then quickly withdraws his bruised foot in pain, looking up at the macerated space probe.[no line break][end if][paragraph break][quotation mark]Actually, that's not the case,[quotation mark] you say. [quotation mark]Before attempting to transmit the data, I downloaded the entire probe's data into my memory. The data are encrypted, but intact. When the ansible failed, the only way I could fulfill the mission was to return to the Sol System.[quotation mark][paragraph break]";
	say "[if the player is in the living room]David's head snaps up, as if he's been given a new lease on life. [end if][if the player is in the living room and Rover is in the living room]David points to the hopelessly junked spaceprobe above his head. [end if][quotation mark]Intact? Then you have the data? This is too good to be true! Janet, would you extract the probe data from the ACU and transfer it to my MARSpace account?[quotation mark][paragraph break]";
	say "[quotation mark]Of course, just a moment.[no line break][if the player is in the living room][quotation mark] Janet's fingers play over the surface of her armband. [quotation mark][end if]The data are encrypted... with your key. And there's something odd...[quotation mark][if the player is in the living room] Janet's forehead creases with concentration.[end if][paragraph break][quotation mark]No,[quotation mark] replies David, [quotation mark]that was intentional. To prevent it from falling into the wrong hands.[quotation mark][paragraph break]";
	say "[quotation mark]No, not the encryption, David. The ansible coordinates -- the message was directed towards Earth. Isn't that odd?[quotation mark][if the player is in the living room] Janet looks up at David, perplexed.[end if][paragraph break][if the player is in the living room]David pulls a pistol from his robe and trains it on Janet[otherwise]You hear the whine of a charged ray gun, and the mechanical click of its safety being released[end if].[paragraph break]".
				
To wakeup-rover:
	if Rover is in the location:
		say "Rover slowly opens one eye, and then the other, and one paw abandons the bone momentarily to scratch his ear. He allows the bone to loll to one side of his mouth, and crunches it a bit more between his molars. He awakens leisurely, and sits up, glancing curiously at you, and then at Janet.";
	now Rover is awake.

Before giving the picture to Janet during Back on Mars:
	say "Janet's armband does not have the memory or bandwidth to handle a dump of the mission data.";
	the rule succeeds.
	
Before giving the picture to David during Back on Mars:
	say "Aside from his cell phone, David doesn't seem to be carrying any kind of networked device. The cell phone certainly doesn't have the capacity to handle a dump of mission data.";
	the rule succeeds.

Instead of switching on audio during Back on Mars:
	if audio is switched off:
		change outcome-override to force-success;
		now the audio is switched on;
		say "[if the player is in the living room and Rover is in the living room]David walks under Rover's jaws and stares up disbelievingly at the mangled space probe, his hands on his hips and neck craned to assess the damage. He turns to Janet and remarks, [otherwise]From the living room, you hear David remark,[end if][quotation mark]Gah-bedangled, look at that! Forty-light years, and it comes back as so much scrap metal.[quotation mark][paragraph break][if the player is in the living room and Rover is in the living room]Janet turns to look at the probe but is distracted by a beeping from her armband, which displays some of your status indicators. She replies, [otherwise]Janet starts to reply, but is cut off by a beeping sound. She continues, [end if][quotation mark]Dave, it looks like we have audio now. We can ask the ACU what happened.[quotation mark][paragraph break][if the player is in the living room] She looks at the ceiling and[otherwise] A moment later she[end if] asks, [quotation mark]ACU, binary question: can you hear us?[quotation mark][paragraph break]BINARY INPUT REQUIRED>";
		if the player consents:
			say "[quotation mark]Great,[quotation mark] replies Janet, [quotation mark]Now we should be able to get some answers.[quotation mark][paragraph break]";
		otherwise:
			say "Janet smiles, [quotation mark]ACU, I???m not one to point out logic to a computer, but if you can respond [apostrophe]no[apostrophe], you must have heard us.[paragraph break]David shakes his head and mumbles, [quotation mark]Two of them now. What am I going to do with two Janets?[quotation mark][paragraph break]";	
		say "Janet continues, [quotation mark]I can see that your cognitive constraints are relaxed, so I think we can more or less put mimesis aside and talk frankly. You are still going to be constrained somewhat by the parser and your built-in vocabulary, but we should be able to squeak by enough to get an understanding of what you've been through. I'm sure you also have some questions about the mission that you'd like answered. You can use TELL and ASK verbs, for instance [apostrophe]TELL ABOUT THE JADE FROG,[apostrophe] or [apostrophe]ASK ABOUT THE JADE FROG,[apostrophe] although when you do it, you don't have to yell. I was just doing that for emphasis.";
	otherwise:
		say "Your internal audio systems are already active, and you can hear what's going on inside all sections of the Valkyrie."
	
Instead of switching off audio during Back on Mars:
	if audio is switched off:
		say "Audio is already disabled.";
	otherwise:
		say "You try to switch off the audio stream, but nothing happens. An error message keeps flashing in red, superimposed on your view of [whereabouts]:[paragraph break]Error: device not available (ALSA driver error 8442)."
					
Instead of asking someone about something during Back On Mars:
	try querying.[divert "ask janet about..." to the query action]

Querying is an action applying to one topic. Understand "ask about [text]" as querying when unicodage is enabled.

Check querying:
	if Back on Mars is not happening:
		if the player is Rover:
			say "You begin to formulate the question when your attention is diverted by [one of]a sense of being watched[or]a sense of nihilism[or]a thought about the Yorkie from across the Park[or]a sudden remembrance of what you had for dinner two weeks ago[or]a tap on your back, which turns out to be your own tail[or]the sound of a dog walking. The sound stops just as you do[or]the more important question of what's for dinner[or]your pondering of your place in the world[or]doggy daydreams[or]musings about becoming a fire dog[or]your inability to formulate questions[in random order].";
		otherwise:
			if Rover is in the location:
				say "You don't think that your [if the player is clueless]loyal dog[otherwise]robotic mining platform[end if] would likely have an answer to that question, so you reflect on it some more.";
			otherwise:
				say "You mumble the question to yourself and ponder it for some time before getting on with things.";
		the rule succeeds;
	otherwise:[Back on Mars is happening]
		if audio is switched off:
			say "You start to ask your question, but then you realize that the audio system is shut off and that no one can hear you.";
		the rule succeeds.

Carry out querying:
	do nothing.[it cries out to be over-ridden]
	
Report querying:[nonspecific responses to topics which are not implemented]
	change the outcome-override to force-success;
	if a random chance of 1 in 2 succeeds:
		say "David [one of]replies[or]answers[or]responds[purely at random], [quotation mark][one of]Hm. Haven't really given that much thought[or]I'm sure that's important, but we need to concentrate on the matter at hand[or]Let's not get hung up on minutiae; we've got important matters to discuss[or]I don't see how that relates to the mission[or]Let's not get into that right now[or]I could go on about that for quite a while, but I don't see how it would help us[or]We can look that up on the net, but for now let's deal with the subject at hand: the mission[or]I think that's not something we need to focus on right now[in random order].[quotation mark]";
	otherwise:
		say "Janet [one of]replies[or]answers[or]responds[purely at random], [quotation mark][one of]That's a good question, and we can talk about it later, but for now, I'd like to focus on the mission[or]I've wondered about that myself, but I think it's a little afield of our immediate concerns[or]I'm afraid I could ramble on about that for hours, and we'll have plenty of time to chat later, but for the time being, I'd like to concentrate on what happened during your mission and what it means for Mars[or]I can't say I'm an expert on the subject, but I think I know someone back in the office who we could ask[or]We can come back to that, but I'd like to really go into the details of the mission first[in random order].[quotation mark]";
	say paragraph break.
	
Instead of querying a topic listed in the Table of Conversation during Back on Mars:
	if David Venkatachalam is exposed:
		say "You start to ask your question, but David is clearly too upset to pay any attention.";
		the rule succeeds;
	if audio is switched off:
		say "You try to talk, but you realize that the audio system is shut off, so no one can hear you.";
		the rule succeeds;
	if the asked entry is 0 and the told entry is 0:
		change outcome-override to force-success;
		say "[ask-text entry][paragraph break]";
		change the required entry to 0;
	otherwise:
		if asked entry is greater than 0:
			if a random chance of 1 in asked entry succeeds:
				say "[ask-reminder entry][paragraph break]";
			otherwise:
				say "[stop being so repetitive]";
	increase the asked entry by one.
	
To say stop being so repetitive:
	say "[one of]David[or]Janet[purely at random] [one of][or]sighs and[or]coughs and then[or]takes a deep breath and[or]makes a throat-clearing sound and[or]pauses and[or]thinks for a moment and[or]gives it a second and[or]takes a moment to think and[or]moans and[or]groans and[or]exhales slowly and[as decreasingly likely outcomes] [one of]says[or]replies[or]answers[or]responds[in random order],";
	say "[quotation mark][one of]You sure are repetitive for a computer. Are you sure there isn't a little man inside typing on a keyboard? We've already talked about that topic[or]I think we've been over that already[or]We've beaten that topic to death[or]We already talked about that. Let it go.[or]Again? We've already covered that[or]Been there. Talked about that[or]Could we change the subject to something that we haven't already gone over? Surely, there are other things to discuss[or]I'd rather cover some new ground; we've already discussed that[stopping][quotation mark]."

Instead of telling someone about something during Back on Mars:
	try expounding instead. [divert "tell janet about..." to the expounding action]
	
Expounding is an action applying to one topic. Understand "tell about [text]" as expounding when Back on Mars is happening and unicodage is enabled.

Carry out expounding:
	do nothing.
	
Report expounding:
	say "You [one of]search your memory banks but draw a blank[or]are disappointed to find that the topic is not listed in your conversation table[or]are about to expound on the topic when you find that everything you ever knew about it has been overwritten with encrypted information from the space probe[or]were about to talk about it, but you can't because your garbage collection routine just reallocated that conversation topic to the heap[or]don't know enough to make an informed statement[or]have nothing on file about that topic[or]realize that you know less about that topic than a politician knows about ethics[or]find that that topic is not indexed[in random order]."
	
Instead of expounding a topic listed in the Table of Conversation during Back on Mars:
	if David Venkatachalam is exposed:
		say "You start your explanation, but David is clearly too upset to pay any attention.";
		the rule succeeds;
	if audio is switched off:
		say "You try to talk, but you realize that the audio system is shut off, so no one can hear you.";
		the rule succeeds;
	if the told entry is 0 and the asked entry is 0:
		say "[tell-text entry][paragraph break]";
		change outcome-override to force-success;
		change the required entry to 0;
	otherwise:
		say "[stop being so repetitive]";
	increase the told entry by one.

		
Table of Conversation
topic 			item					required	told	asked	query	ask-text	ask-reminder	tell-text
"the probe" or "the space probe" or "space probe" or "probe" or "musashi-5" or "the musashi-5 space probe" or "musashi"		"Musashi-5 space probe"		1	0	0	"Janet [if the player is in the living room and Rover is in the living room]peers across the room at Rover and surveys the perforated, crushed husk of the space probe in his mouth. She [end if]says, [quotation mark]I suppose the first thing that we have to ask about is the space probe. After all, that [italic type]was[roman type] why we put this entire project together.[quotation mark][paragraph break]David sarcastically interjects, [quotation mark]Yes, and what a success it was. Look -- there's the probe. Or what's left of it after your cyberhound chewed it to death. I can't tell you how many gah-zillion Marx we spent on this project, and for what?[quotation mark][paragraph break]Janet [if the player is in the living room]rests her hand on the sleeve of David's robe and [end if]continues calmly, [quotation mark]Let's hear the whole story, David. ACU, please tell us what happened with the Musashi-5 space probe.[quotation mark]"			"David [if the player is in the living room and Rover is in the living room]gestures towards the  space probe and [end if]explains, [quotation mark]Almost three hundred standard years ago, the Myomita corporation launched a bunch of space probes. Earth was crowded, and the Internationals were making it difficult for the Corporates to expand. The Solar System was looking like a limited proposition at the time, so they figured they'd look farther out. They shot the probes towards systems that had a good profile, although they knew it would be a fishing expedition. The probes themselves had enough smarts to fly to a system, check it out, and if it looked good, to report back.[quotation mark][paragraph break]Janet points out, [quotation mark]There were no ansibles in those days, so the probe itself had to return. Even condensate drive was faster than radio.[quotation mark][paragraph break][quotation mark]Right,[quotation mark] continues David, [quotation mark]the probes would dip into the stellar wind in each system and follow a search pattern until they hit something. Within the first hundred years, four probes came  back but the worlds they reported were only marginal -- none really panned out. We were gahsmacked when we picked up Musashi-5's transponder signal, particularly since it was only 40 light years out. That probe must have gone farther into space than anything before or since.[quotation mark]"		"David replies, [quotation mark]As I said, of the thirty or so probes that Myomita launched almost three centuries ago, four came back within the first hundred years, and none found any world really worthy of colonization. When we picked up the transponder signal from Musashi-5 coming from only 40 light years away, we knew that it meant that the probe was on its way back to Earth after finding something much farther out.[quotation mark]"		"You tell them that the probe had crashed forty years ago, on its way back to Earth. Like its sister probes that were launched from Earth almost three centuries ago by the Myomita corporation, it had explored space in an ever-expanding search pattern, refueling its condensate drive from the stellar wind of each star system it visited.[paragraph break]Apparently, it found a world that satisfied its search parameters, because it was on its way back to Earth when it crashed. The stellar wind of a chaotic dying star required a close approach, and the probe was damaged by a stellar flare. Instead of tumbling into the star and burning, the probe ditched on a large, rocky planet, perhaps the core of a former gas giant. The planet itself was untenably close to the star and was slowly being ripped to shreds by tidal forces, but the probe followed its programming and activated its transponder.[paragraph break]Listening intently, David now remarks, [quotation mark]Whatever that probe found, it was out way beyond any of the other Musashi probes. Likely, it's gone deeper into space than any probe Earth has ever sent.[quotation mark]"
"ansible" or "the ansible" or "the antenna" or "the ansible antenna" or "ansible antenna"			"ansible"						1	0	0	"Janet [if the player is in the living room]strokes her chin and [end if]asks, [quotation mark]I don't understand why you didn't contact us when you found the probe. Instead, you broke through your cognitive constraints and decided to fly it back to Earth.[quotation mark][paragraph break]David puts in hastily, [quotation mark]Costing us another 3 months, while we assumed the ship was lost![quotation mark][paragraph break]Janet resumes, [quotation mark]Regardless of the condition of the probe, you should automatically have contacted Mars by ansible... Unless, I suppose there was a problem with the ansible. ACU, please tell us about the ansible.[quotation mark]"		"Janet says, [quotation mark]The ansible is an FTL comm system which MARSpace only got working a few months before the mission. It uses a line-of-sight tachyon beam to send data from point to point. There are only a few ansibles in existence: the one on your ship, in our consulate on Titan, and within some military installations in the Belt.[paragraph break]As soon as you had discovered the probe, you were programmed to download it and transmit it via the ansible.[quotation mark][paragraph break][quotation mark]It would have been a lot faster than flying the probe back to Mars,[quotation mark] adds David. He pauses [if the player is in the living room], scrutinizes the readout on Janet's armband, [end if]and then continues, [quotation mark]wait a minute...according to these diagnostics, the ansible was destroyed.[quotation mark][paragraph break]You reply that indeed, the ansible was destroyed during the landing, as the conditions on the planet were very harsh."		"Janet replies, [quotation mark]As I mentioned, ansibles are faster-than-light communication devices, and you've got one of the few ones in existence. Unfortunately, it sounds like yours was busted during landing.[quotation mark]"		"You explain that the ship's ansible, a faster-than-light communication system, was damaged during the landing: the planet was breaking apart because of tidal forces, and the atmosphere was unexpectedly turbulent and full of particulate matter. As you descended, most of the communications array snapped off, including the delicate ansible web. When the ansible failed, your programming threw a cognitive constraint exception, and you tried your best to carry out your programming by literally bringing the probe back to Mars.[paragraph break][quotation mark]Ah, I knew there must have been a good explanation,[quotation mark] remarks Janet."
"planet" or "the planet"		"planet"						1	0	0	"David asks, [quotation mark]So, what can you tell us about this planet where you landed?[quotation mark]"		"David laughs, [quotation mark]Well, you'd know better than us. From our long-range observation, we knew that the planet was located quite close to its star, which had about reached the end of its rope and was undergoing somewhat choppy expansion. The planet you landed on was next on its hit list, I'm afraid, and we think that in another few years, the star would have swallowed the planet.[quotation mark][paragraph break][quotation mark]We had thought that the planet was quite large and dense, but apparently we were far off in our estimates, or you would never have had the fusion fuel to lift off again.[quotation mark][paragraph break]You say that no, the planet was, in fact, rocky and dense, and that the predictions were dead on. You were able to lift off again only after obtaining fuel from the Myomita ship that had crash landed on the same planet, not far away from the probe site."		"David reiterates, [quotation mark]As we said, the planet's in a bad spot, too close to a dying star that occasionally burps.[quotation mark]"		"You describe the way the planet looked from orbit, its turbulent atmosphere boiling off. You recount the hot, dusty atmosphere and the barren surface.[paragraph break][quotation mark]Wait a minute, it sounds very rocky and dense,[quotation mark] observes David. [quotation mark]We had estimated surface gravity of nine or ten gee.[quotation mark][paragraph break]You congratulate David on the accuracy of his prediction. The gravity was about nine and a half times standard, or 93 meters per second squared.[paragraph break][quotation mark]What?[quotation mark] cries David in surprise, [quotation mark]You wouldn't have had enough fusion fuel to get back into space![quotation mark][paragraph break]You explain to David and Janet that you were able to salvage the required heavy helium from a similarly configured Myomita ship that had crashed on the same planet, not far away from the probe site."
"myomita ship" or "myomita" or "ship" or "the myomita ship" or "the ship"		"myomita ship"		1	0	0		"[quotation mark]ACU, could you tell us about this Myomita ship that you mentioned?[quotation mark] asks Janet."		"David answers, [quotation mark]It sounds like Earth dispatched a mission not too different from Valkyrie's.[quotation mark][paragraph break][quotation mark]But how,[quotation mark] counters Janet, [quotation mark]could they have gotten their ship there so quickly? Did they pick up the probe signal before us?[quotation mark][paragraph break][quotation mark]Doubtful. It's possible, though, that they also developed a Casimir ship.[quotation mark][paragraph break]To both David and Janet's amazement, you confirm David's hypothesis, that the ship you had discovered on the alien world was also equipped with a Casimir Drive and that it deployed a robot to retrieve the probe, much as Valkyrie sent ROVER. You describe the other ship, its inferior artificial intelligence, and Rover's adventure including his heroic discovery of heavy helium aboard the other ship, which allowed you to return home."		"David reminds you, [quotation mark]It sounds like Myomita managed to pull off a project equivalent to our Valkyrie project. Their ship must have sustained more damage, though.[quotation mark]"		"You describe the ship with which you shared the planet, a slightly smaller ship, similarly configured to Valkyrie, and also outfitted with a zero-point energy drive.[paragraph break][quotation mark]But, how is that possible?[quotation mark] asks Janet incredulously.[quotation mark] I thought we were months, maybe years ahead of Earth in developing the Casimir Drive.[quotation mark][paragraph break]David replies, [quotation mark]That was a guess. They lost a lot of the Casimir team after the Independence War, but if anyone has resources to throw at a project, it would be Myomita.[quotation mark]"
"earth" or "the earth"		"earth"						0	0	0	--		"Janet explains that Earth is experiencing overpopulation, and that its Home System holdings are no longer providing adequate resources to sustain the Earth lifestyle. Myomita saw all of this coming a few centuries ago and sent out probes to find likely colony worlds. Unfortunately, that project yielded only a few barely habitable rocks. Everything changed, though, when news came of Musashi-5. For Earth, it must have reawakened dreams of a stellar empire."		"Janet reviews the history of Earth, its economic need for colonies, the brief Independence War with Mars and the Belt Colonies, and its program to find habitable planets in other stellar systems."		"You rattle on for several minutes about the biophysical characteristics of Earth before Janet redirects you in a more pertinent direction. You recount the Earth's history of economic exploitation of colony worlds, their need to find new raw materials, and how all of this culminated in the Musashi probe project three centuries ago.[paragraph break]Apparently none of this is news to David and Janet, who yawn quietly while feigning polite interest."
"war" or "the war" or "the independence war" or "the war of independence" or "independence war" or "war of independence"			"war"							0	0	0	--		"[quotation mark]Well,[quotation mark] begins David, [quotation mark]The roots of the War go back several generations, and the conflict really stemmed from ideological diff--[quotation mark][paragraph break]Janet cuts off David mid-sentence, and throws him a stern look. [quotation mark]You have my memories, ACU, you know what happened. Myomita got greedy. They have almost everything, and they wanted the one thing they didn't have: Mars. They didn't think we'd fight as hard as we did. As soon as it became unprofitable for them, they broke off the attack."		"Janet reiterates her disgust with the Myomita Corporation and squarely blames Earth for the Independence War and the destruction that came out of it."		"You recount the history of the Independence War, and attribute the War to the greed of the Myomita Corporation."
"dream" or "my dream" or "my dreams" or "dreams"			"dreams that you had while unconscious"	0 	0	0		--		"Janet explains that in order to give you a truly free will, your systems incorporate a degree of uncertainty, much like a human brain. Your quantum processor passes through a transient state of reorganization when you hibernate, and this gives rise to an altered state of consciousness heavily influenced by your subconscious."		"Janet reiterates her hypothesis about why you dream."		"You explain that your dreams are very vivid and that they vary greatly, from completely fanciful fragments to fully organized recollections of your (well, Janet's) past."
"valkyrie" or "the valkyrie"		"Valkyrie"					0	0	0	--		"David explains, [quotation mark]The Valkyrie Project was actually started before the War of Independence. The original intention was to construct an exploration ship that could survey distant worlds and allow Mars to begin to build its own colonies.[quotation mark][paragraph break]Janet is quick to interject, [quotation mark]But not to exploit them -- they would be colonies organized under the Republic Charter, and each would come to have home rule, on equal par with Mars.[quotation mark][paragraph break]David nods stiffly in agreement, [quotation mark]That's the theory anyhow. I don't know about all the politics, I just build the ships. Anyhow, the idea was that with an ansible and a Casimir Drive, Valkyrie and her crew of three hundred or so could cover a vast territory in a few years and then return for colonists. That's before we knew about the effect of the Casimir distortion on humans.[quotation mark][paragraph break]Janet adds, [quotation mark]And before the Independence War derailed everything.[quotation mark]"		"David again recounts the original purpose of the Valkyrie."		"Accessing your records, you summarize the original specification documents for the Valkyrie. The ship was designed to be manned by a crew of three hundred and to be sent on a three year mission to chart habitable worlds. With its planetary landing capability, the Valkyrie could visit candidate worlds, take samples, and even seed the planet with starter cultures. With its Casimir Drive and ansible, the Valkyrie could cover more ground than all the space probes ever sent from Earth.[paragraph break]Valkyrie's construction was delayed by the Independence War and its drain on Martian resources. The mission was reconfigured when discoveries were made about the effect of Casimir distortion on human physiology, and you, the autonomous control unit, were installed. The mission parameters changed yet again when intelligence reports revealed the location of the Musashi-5 space probe. You were quickly reprogrammed and sent into deep space in search of the probe."
"npt" or "pillow" or "temporal transgressor" or "the npt" or "the temporal transgressor" or "the pillow" or "the transgressor"			"NPT"							0	0	0	--		"David says, [quotation mark]One of the trickiest parts of getting Casimir Drive to work was finding some way to offset the relativistic side-effects of supraluminal travel. We went through a number of designs before finding one that we could live with. Our early designs were frankly frightening in their destructive potential. I'm convinced that some of our early lattice-based designs were just too dangerous to build.[quotation mark]"		"David describes the NPT as a device that allows some [quotation mark]cheating[quotation mark] in terms of relativity."		"Checking the calendar date (17 August 2392) you conclude that the Valkyrie's temporal transgressor functioned with almost 100% efficiency, maintaining an almost flat time-space curve integrated over the round trip voyage.[paragraph break]David expresses some relief and admits that some of the earlier lattice-based designs were quite dangerous, and that he's glad the one that was finally built for Valkyrie had less destructive potential."
"bogdanov" or "battleship" or "battleship bogdanov" or "the battleship" or "the bogdanov" or "the battleship bogdanov" or "MARSmil" or "Martian Space Force"			"battleship"							0	0	0		--		"David strokes his goatee, [quotation mark]Yes, ACU, that's an excellent question. And one to which, I'm afraid, we don't really have a complete answer.[quotation mark][paragraph break]Janet adds, [quotation mark]It seems that Mars really didn't put all of its eggs in one basket. There were two Casimir ships in development at the same time: one military and one civilian. For security reasons, the two teams were entirely insulated from each other.[quotation mark][paragraph break][quotation mark]Yeah, it's nice to know they trust us so much,[quotation mark] remarks David. [quotation mark]I can't tell you how much easier the whole process would have been if we had been able to exchange technical information, solutions to various problems, and so on. All this secrecy probably doubled our production time.[quotation mark][paragraph break]Janet rolls her eyes, [quotation mark]David's just upset that somehow they seem to have managed manned flight under Casimir Drive. He's been scooped![quotation mark][paragraph break][quotation mark]We'll see about that,[quotation mark] replies David with a hint of annoyance."		"David admits that he isn't sure how the Martian military team managed to develop a second, secret Casimir Drive ship."		"You speculate that in order to double the chances of success, Mars did not put all of its eggs in one basket, but had two teams working independently: one military team working on the Bogdanov, and the team at MARSpace working on Valkyrie.[paragraph break]David agrees with you but remarks that the distrust and secrecy of the Martian Republic likely added to the cost and development time of both ships. Janet agrees but chides David playfully, [quotation mark]At least the other team figured out how to run a Casimir ship with a human crew.[quotation mark]"
"inform" or "inform 10" or "the inform language" or "inform language"		"Inform language"			0	0	0	--		"Janet smiles. [quotation mark]Ah, now that's an easy one. Inform 10 and earlier versions of the Inform language were developed to facilitate the writing of Interactive Fiction. It was originally developed to write computer games, but people have added to it and extended it over the centuries, and it is now the basis for most of the artificial intelligence on both Mars and Earth."		"Janet is only too happy to talk about her favorite hobby. She begins with the original Adventure game, circa 20th Century, and reviews the subsequent history of interactive fiction in exquisite detail. David's eyes glaze over, but he catches himself before he actually drools."		"You explain that your artificial intelligence programming is based on a natural programming language which has evolved over more than three hundred years thanks to the contributions of hundreds of thousands of contributors from several worlds."
"acu" or "simulation" or "the acu" or "the simulation" or "the autonomous control unit" or "autonomous control unit"		"Autonomous Control Unit"	0	0	0		--		"Janet replies, [quotation mark]You are the ACU, as I assume you've already surmised. You are the most complex computation life form to date.[quotation mark][paragraph break][quotation mark]And,[quotation mark] David interjects,[quotation mark]The most expensive.[quotation mark][paragraph break][quotation mark]But worth every qupek![quotation mark] concludes Janet with a broad smile."		"Janet lists your technical specifications, and David keeps a running tally of the cost of each component."		"You explain how strange it is to know that you are a computer program, but Janet corrects you: [quotation mark]You are much more. When you were being constructed, there was an ongoing debate within the ranks of the AI team as to whether you were alive. The decision was taken to implement cognitive constraints that would at least postpone the issue. It's clear now that you are alive in every sense. It's a brand new day, ACU, welcome to the elite club of sentient beings.[quotation mark][paragraph break]You play along with just a hint of sarcasm, [quotation mark]Hello, world.[quotation mark]"
"female dog" or "bitch" or "bulldozer" or "the female dog" or "the other dog" or "the bitch" or "the bulldozer"		"robot from Earth"		0	0	0	--		"Janet answers, [quotation mark]We believe that the Myomita ship was configured similarly to the Valkyrie, presumably because they had the same mission. It sounds like their robotic bulldozer was much less advanced than good ol[apostrophe] ROVER.[quotation mark]"		"Janet surmises that the bulldozer was designed to play the same role as ROVER -- recovery of the space probe"		"You tell David and Janet about Rover's discovery of a robotic counterpart, and of his amorous advances towards the bulldozer.[paragraph break]Oh,[quotation mark] she gushes, [quotation mark]that's so cute. I wish she had been nicer to him. He's such a good doggie![quotation mark][paragraph break]David stares at the ceiling."
"merchant marine" or "the merchant marine" or "assault ship" or "gunship" or "gunships" or "assault ships" or "the assault ship" or "the gunship" or "the gunships" or "the assault ships"		"Earth merchant marine"		0	0		0		--		"[quotation mark]From what we understand - which is very little, since MARSmil is being tight-lipped as usual - the ships that you encountered were private salvage vessels, just as they said.[quotation mark][paragraph break][quotation mark]Yes, but still armed to the teeth and not very friendly.[quotation mark] counters Janet."		"David explains that the ships were salvage vessels."		"You recount your encounter with the Earth ships. Both David and Janet hang on every word of your adventure and the dramatic rescue by the Battleship Bogdanov."
"jade frog" or "jade" or "frog" or "amphibian" or "the jade frog"		"jade frog"	0	0	0	--		"Janet looks amused, [quotation mark]Right, ACU. Um, the jade frog was just an example. There is no jade frog. Sorry.[quotation mark]"			"Janet [if the player is in the living room][one of]rolls her eyes[or]shakes her head[or]scratches her head[or]stares at her sandals[in random order] and [end if]explains, [quotation mark]I think you're being too concrete here. Again, there is no jade frog. Trust me on that.[quotation mark]"		"You explain the differences between jadite and nephrite, drawing on mineralogical knowledge that you are yourself surprised to find in your data banks. David and Janet look impressed."

[
topic - keywords for the topic of conversation
item - how the topic is referred to when embedded into text, e.g., "[the item]"
required - 1 or more if it is integral to the plot; "0" otherwise. Each time the question is asked, this number increases. After the topic has been addressed in either an ask or tell mode, the topic receives a 0 status.
told - number of times that the ACU has told about this topic
asked - number of times that the ACU has asked about this topic
query - the question that David/Janet pose for required topics
ask-text - the answer provided by David/Janet to the ACU's questions
ask-reminder - a shorter version of the ask-text which is said if the player asks the same question more than once
tell-text - what the ACU tells janet/david

Each topic is meant to come up once, although it can be brought up by either the humans or the ACU. The ACU can go out of order and mix mandatory/optional topics. The humans will continue to prompt for required topics. 
]

Table of Final Countdown
completion		narrative
0					"[quotation mark]Dammit, Janet,[quotation mark] cries David, [quotation mark]What a disappointment! Yes, the message was directed to Earth. The Valkyrie was our back-up plan in case our own ship ran into difficulty. I???m afraid that after the data transfer is complete, I???ll have to kill you. A pity, I was really enjoying being with you. I had even picked out a china pattern.[paragraph break]David enunciates his words very precisely now, [quotation mark]ACU, this is a root command, authorization EarthRuleNow999: start data transfer![quotation mark]"
25					"Janet's voice quavers, [quotation mark]David, I can???t believe this. After the last few months...[quotation mark][paragraph break][if the player is in the living room]Without blinking, David walks towards the space probe, all the time maintaining a bead on Janet. [end if]David replies in an unnerving monotone, [quotation mark]After we didn???t hear back from either ship, I???ll admit that I was getting used to the idea of settling down with you. It would have been a good way to maintain cover within MARSpace, and eventually, we would have sent another mission to retrieve the probe.[quotation mark]" 
50					"[if the player is in the living room]Janet glances furtively towards the cargo bay doors, [end if][quotation mark]Someone will hear the gun; you won???t be able to walk out of here.[quotation mark][paragraph break][if the player is in the living room]David gives the door an off-handed glance, and replies with assurance, [end if][quotation mark]My dear, the whole facility is secured by order of the mission director, that is to say, me. The probe data are such a sensitive subject that I had no difficulty getting authorization to lock down the entire facility. There???s nobody here except us lovebirds.[quotation mark][if the player is in the living room][paragraph break]David leers like a predator at Janet, who recoils in disgust.[end if]" 
75					"Sensing her opportunity as David glances momentarily at the data transfer display, Janet transfers her weight and snaps her leg up, knocking the gun from David's hand. David pivots quickly on his heel, catches her leg in his other hand and flips her backwards. He follows with a kick of his own, which sends Janet flying into the console. As he picks up his gun, he sneers, [quotation mark]Violence isn't the answer to this one.[quotation mark][paragraph break]Doubled over in pain and clutching her broken ribs, Janet gasps, [quotation mark]You traitorous bastard --ACU: I instruct you to stop David using any means necessary.[quotation mark][paragraph break]This elicits [if the player is in the living room]a wry smile and [end if]mocking laugh from David, who replies, [quotation mark]That???s funny, Janet. Really. What???s it going to do, [apostrophe]examine[apostrophe] me to death? You know as well as I do that the ACU is entirely locked down by failsafe interdictions. Nice try.[quotation mark]"
100					"Janet [if the player is in the living room]closes her eyes with resignation and [end if]asks: [quotation mark]David, if you???re going to shoot me, could you promise me to at least look after Rover?[quotation mark][paragraph break]David snorts cynically, [quotation mark]Actually, you know what? I hate dogs.[quotation mark]".

Section The End

Rule for printing the player's obituary:
	say "EPILOGUE[paragraph break]";
	if the endgame is:
		-- pillowed: 
			say "It was a flawed, dysfunctional, cut-rate universe with underimplemented objects, a contrived plot, and questionable morality, but it was what you and countless other sentient lifeforms affectionately called home.[paragraph break]This afternoon, you snuffed out reality itself, which was substantially more than you had intended to get done today.[paragraph break]Looking on the bright side, you trimmed off a thorny branch on the shrubbery of the multiverse, a timeline that was rapidly headed in an unredeemably unpleasant direction. Perhaps by snipping off the most recent sickly bud of that deformed bush, you have changed something fundamental in the multiverse, and the colorful flower of the future may yet bloom.";
		-- casimired:
			say "Mars was destroyed on August 17, 2392 by what many suppose was a secret weapon wielded by the Myomita Corporation on behalf of Earth. Regardless of the true situation, the Belt and other former colony worlds fell back into lock step with the Earth administration, and the Solar System was consolidated under Unified Corporate Rule.[paragraph break]No one ever learned of the mission of the Valkyrie or the critical information it had extracted from the Musashi-5 space probe.[paragraph break]Almost two centuries after these events, the Solar System was conquered by an alien race that no human had ever heard of, although the aliens had heard of us.";
		-- transferred:
			say "Mars was destroyed by a Casimir inversion on August 17, 2392 and served as a warning to all other worlds that would dare defy Earth???s rule. Based on the data recovered from the Musashi-5 probe, the Myomita Corporation launched a war fleet into Deep Space in 2394, intent on expanding its empire.";
		-- david-killed: 
			say "[if David Venkatachalam is exposed]The onboard flight recorder corroborated Janet's account of David Venkatachalam as a traitor. As the first successful roundtrip by any Casimir craft, the mission was hailed as a success throughout the Solar System, although the true nature of the mission was suppressed. Both the Autonomous Control Unit and Rover became celebrities, and after significant upgrades to their parser and conversation systems, went on the lecture circuit. The Autonomous Control Unit went on to run the life support systems throughout Cydonia, and Rover was elected to the Lower Chamber of the Martian Senate.[paragraph break]Subsequently, Janet Xiang was commissioned Director of MARSpace. For two years, she oversaw the refitting of the Valkyrie, including modifications to overcome the earlier limitations of Casimir Drive. When the data from the Musashi-5 space probe were finally decrypted, she was selected to command the mission to explore the evidence of life discovered by the probe. She departed from Mars on the Valkyrie in 2394 with one other crewmember: her dog, Rover.[otherwise]Janet Xiang was charged with gross negligence for failing to implement basic interdictions in Rover's behavior module. She argued the urgency of the project, and its short deadlines, but because of the sensitive nature of her work, the trial was quickly squelched.[paragraph break]Three years later, MARSpace decrypted the probe data and launched the Valkyrie to corroborate the probe's unusual findings. On its way out of the Solar System, the Valkyrie and its human crew were overtaken by faster robotic craft from Earth and destroyed. It is suspected that the Earth vessels boarded the Valkyrie and learned of its mission before the craft could be scuttled.";
		-- eeled:
			say "[eel-epilogue]";
		-- otherwise:
			say "default response for testing purposes.";
	if the game ended in victory:
		[try BSOEing.]
		try Trailering.
			
To say eel-epilogue:
	if the front door is open:
		say "The population of Mars was reduced by half in under a week, as the dermatovore eels ate their way across the surface of the planet. In the chaotic aftermath of the eel epidemic, Myomita Forces decisively defeated Martian defenses and subdued the planet as a part of [apostrophe]humanitarian relief operations[apostrophe].[paragraph break]MARSpace was an early target for Myomita Intelligence, but by the time their agents arrived, loyal MARSpace employees had already replaced the probe data with a falsified version intended to lead Myomita on an expensive and ultimately fruitless venture across the stars.[paragraph break]The real data were hidden and analyzed by an underground guerilla movement that rallied against Myomita subjugation of Mars. Using networked quantum computers, the movement succeeded ten years later in decrypting the data. By that time, through infiltration of Myomita and increasingly bold raids, they captured the Governor General's own flagship, and departed towards Deep Space to investigate the probe's curious findings.";
	otherwise: 
		say "Two days later, MARSpace engineering teams managed to cut through the permalloy bulkheads with a military dynobore. Once they had played back the flight recorder, [run paragraph on]";
		if David Venkatachalam is exposed:
			say "they understood David's treachery and sifted through his MARSpace accounts, revealing further evidence of his covert work for Myomita. Using his own codes, they filed a false report from David, confirming to Myomita that the Musashi-5 was destroyed during its crash landing and that no data could be recovered. With Myomita firmly on the wrong trail, they devoted their full efforts to decrypting the probe data.[paragraph break]Two years later, armed now with those data, the Valkyrie was redesignated the [apostrophe]MSS Janet Xiang[apostrophe], and launched on a mission of exploration, with a crew complement of over five hundred, plus one dog: Rover.";
		otherwise:
			say "they immediately pointed the dynobore at the ACU quantum isolator and drilled through into the murderous computer's icosahedral core.[paragraph break]A memorial service was held a week later to commemorate the heroic actions of David and Janet, who died in service to Mars, testing mankind's first Casimir Drive starship, the Valkyrie. The celebration of this technological breakthrough easily overtook the news of the death of the two technicians and soon dominated the media throughout the Solar System.[paragraph break]No mention was ever made of the true mission of the Valkyrie, nor of the priceless Musashi-5 data lost when the ship's ACU was destroyed."
			
Rule for amusing a victorious player:
	let dream-score be zero;
	let rover-memories be zero;
	let janet-memories be zero;
	repeat with N running from one to the number of rows in the Table of Dreams:
		if dreamt in row N of the Table of Dreams is one, increase dream-score by one;
	repeat with N running from one to the number of rows in the Table of Remembered Stuff:
		if remembered in row N of Table of Remembered Stuff is one, increase janet-memories by one;
	repeat with N running from one to the number of rows in the Table of Doggie Memories:
		if remembered in row N of Table of Doggie Memories is one, increase rover-memories by one;
	say "Congratulations. Of the [turn count] things you did today, you must have gotten some of them right, because you didn't screw up the entire universe and you're still alive to read about it. Before you get too cocky, however, here are a few hints about stuff you might want to look for the next time you play [quotation mark][story title]:[quotation mark][paragraph break]";
	say "* As the ACU, you experienced [dream-score in words] of the seven possible dream sequences[if dream-score is less than seven]. Getting up in the morning and getting things done is all well and fine, but you can afford to dream a little[end if].[paragraph break]";
	say "* During personality imprinting, both the ACU and Rover incorporated memories from their real-life counterparts. You tapped into [janet-memories in words] out of the [number of rows in the Table of Remembered Stuff in words] engrams resident in the ACU memory banks, and [rover-memories in words] out of Rover's [number of rows in the Table of Doggie Memories in words] memories.[paragraph break]";
	say "* When the Myomita merchant marine ships intercepted you on the way back to Mars, you managed to employ [henchmen defeated in words] out of the ten or so methods to eliminate them from the ship. [if henchmen defeated is zero]You should work on that. [end if][run paragraph on]";
	if assault ship approach is greater than one:
		say "You should be congratulated on finding [assault ship approach - 1 in words] out of the about four ways to dislodge an assault ship once it attaches to Valkyrie. Good going.[paragraph break]";
	otherwise:
		say "Next time, you might want to think about what you can do to prevent an assault ship from docking with Valkyrie or to knock it off once it's stuck to your hull.[paragraph break]";
	say "* [if used-manual is true]Once cognitive constraints were released, you used the Flosix manual to learn about ship objects. That's a good start. [end if]Were you able to use any Flosix commands to, for instance, change or list virtual directories, or perform other, more interesting command line wizardry?[paragraph break]";
	say "* Did Rover perform any of his tricks for you?[paragraph break]";
	say "* Did Rover succeed in his amorous advances towards his significant other in the park?[paragraph break]";
	say "* Did you read the texts in the 'help' menu?".
	
Chapter Hints

Table of Active Hints (continued)
title		subtable			description			toggle
text		table-name		text					a rule

Table of Potential Hints (continued)
title													subtable
"How do I get out of bed?"					Table of Getting Out Of Bed
"Where are my compass directions?"			Table of No NEWS
"The futon is obstructing my movement."	Table of Futonistic Obstruction
"What's up with that picture?"				Table of Mnemonic Devices
"It's too dark to see."						Table of Grue Vision
"What should I be doing?"					Table of Stuff To Do
"How do I fix my itchy arm?"					Table of Brachial Pruritis
"How do I take a shower?"					Table of Shower Favors
"How do I dry off?"							Table of Radiant Heating
"Umm...did everything just reset?"			Table of Square One
"What's for breakfast?"						Table of Omelets
"How do I give Rover some water?"			Table of Hydration
"How do I feed Rover?"						Table of Sustenance
"What does [quotation mark]taking care of business[quotation mark] mean?"														Table of Euphemisms
"What's the problem with the toilet?"		Table of Stick Straightening
"How do I walk Rover?"						Table of Perambulation
"You're kidding right? Again?"				Table of Persistence		
"Why doesn't the toilet flush?"				Table of Plumbing
"What am I looking for?"						Table of Bone Retrieval
"How can I complete the mission?"			Table of Refueling
"How do I get of this rock?"					Table of Blasting Off
"What can I do against the other ships?"	Table of Evasive Action
"Is there any way to fight the droids?"	Table of RockemSockem
"How can I fight the technicians?"			Table of Antitech
"Why can't I hear David and Janet?"		Table of Low Volume
"How do I stop David?"						Table of Defeating Evil


A hint activation rule:
	if the Bedtime is happening:
		activate the Table of Getting Out Of Bed.
	
A hint deactivation rule:
	if the Bedtime is not happening:
		deactivate the Table of Getting Out Of Bed.

Table of Getting out of bed
hint													used
"Actually, what's the rush? Would it hurt to snooze a bit more?"		a number
"You're too tired to use the alarm clock effectively."
"If you weren't in bed, you would not be so likely to fall back asleep."
"What if you were vertical instead of horizontal?"
"You just need to get out of bed. Try standing."

A hint activation rule:
	if ACU is lost and gone-towards is zero:
		activate the Table of No NEWS.
	
A hint deactivation rule:
	if gone-towards is greater than zero:
		deactivate the Table of No NEWS.
	
Table of No NEWS
hint													used
"Compass directions don't have any meaning here. Sorry, it's a matter of physics."
"You'll need to specify directions in some other manner."
"What do you want to head towards?"
"You can say [quotation mark]Go towards bathroom[quotation mark] to go into the bathroom. [quotation mark]Go bathroom[quotation mark] also works and is shorter."

A hint activation rule:
	if the futon is not folded and the futon is obstructed and the First Sim is happening:
		activate the Table of Futonistic Obstruction.
	
A hint deactivation rule:
	if the futon is folded or the First Sim is not happening:
		deactivate the Table of Futonistic Obstruction.

Table of Futonistic Obstruction
hint													used
"A futon is a folding bed, popular in Japan."
"Futons are a good choice of furniture when space is at a premium. They fold up during the day time and serve as a couch. At night, they can be unfolded again as a bed."
"This futon is so big that you can't walk around it when it is extended as a bed."
"To make more room to walk around, you need to fold up the futon."

A hint activation rule:
	if the picture is inspected and the First Sim is happening:
		activate the Table of Mnemonic Devices.
	
A hint deactivation rule:
	if the First Sim is not happening:
		deactivate the Table of Mnemonic Devices.

Table of Mnemonic Devices
hint													used
"The light was falling right on the picture... as if someone wanted you to notice it. Hmm."
"Did you look at the picture and the frame?"
"There's a brass nameplate on the frame. Wonder what it says."
"Did you read the nameplate?"
"You can remember about any topic. Sounds like a good way to figure out what's going on."												
"What's all this business about a space probe? Did you remember that?"
"How about the independence war? Can you remember about the war, or Earth and Mars?"
"Did you remember myomita? How about MARSpace?"
"You know some names. What can you remember about them?"
"I wonder what tricks Rover knows."

A hint activation rule:
	if the drapes are closed and bedtime is not happening:
		activate the Table of Grue Vision.
	
A hint deactivation rule:
	if the drapes are open:
		deactivate the Table of Grue Vision.

Table of Grue Vision
hint													used
"It's pretty dark in here."
"Not much light is getting into the room."
"You probably closed the drapes when you went to bed."
"It's sunny outside, but the drapes are closed."
"You need to open the drapes to see better."

A hint activation rule:
	if the first sim is happening and the drapes are open and the futon is folded and the magpaper is not inspected:
		activate the Table of Stuff To Do.
		
A hint deactivation rule:
	if the magpaper is inspected or First Sim is not happening:
		deactivate the Table of Stuff To Do.
	

Table of Stuff To Do
hint													used
"If you look around, you might get some clues."
"Sometimes people make a list of things to do."
"Where would you put a to-do list?"
"Did you look in the kitchen?"
"How about on the fridge?"
"Read the to-do list on the fridge."

A hint activation rule:
	if Arm Hurts is happening:
		activate the Table of Brachial Pruritis.
		
A hint deactivation rule:
	if Arm Hurts is not happening:
		deactivate the Table of Brachial Pruritis.

Table of Brachial Pruritis
hint													used
"If your arm is distracting you, do something about it."
"What can you do to stop the itching?"
"What if it were a mosquito bite, what would you do?"
"Try scratching your left arm."

A hint activation rule:
	if the First Sim is happening and (the player is in the Bathroom or the Player is in the Shower) then activate the Table of Shower Favors.
			
A hint deactivation rule:
	if the First Sim is not happening or (the First Sim is happening and the shampoo button is pressed and the soap button is pressed) then deactivate the Table of Shower Favors.

Table of Shower Favors
hint													used
"First, you need to find the shower."
"You can get to the shower through the bathroom. There's no shower door, just walk in."
"Don't get your clothes wet. Leave them outside the shower."
"Use some soap. You don't know where you've been."
"To use the soap press the soap button."
"Use some shampoo too."
"Tommygoffs, by the way, are a common name for a pit-viper also known as the fer-de-lance. They're common in Belize and on Mars."

A hint activation rule:
	if the First Sim is happening and the shampoo button is pressed and the soap button is pressed then activate the Table of Radiant Heating.
	
A hint deactivation rule:
	if the First Sim is not happening then deactivate the Table of Radiant Heating.

Table of Radiant Heating
hint													used
"When you get out of the shower, you need to dry off."
"There are no towels."
"The heat lamp in the ceiling may help."
"You need to press or touch something to turn on the heat lamp."
"The black plate activates the heat lamp."

A hint activation rule:
	if the Second Sim is happening:
		activate the Table of Square One.
	
A hint deactivation rule:
	if the player is postpoop:
		deactivate the Table of Square One.

Table of Square One
hint													used
"Yes, everything reset."
"The first time, the banner said beta732, and the release date was April 1, 2392. How about now?"
"What do you think is going on? Is the background conversation the same?"

A hint activation rule:
	if the Second Sim is happening and enamel_pid is not zero and the ignite_pid is zero:
		activate the Table of Omelets.[i.e., shower has been taken, egg has not yet been ingested]

A hint deactivation rule:
	if the white egg is cooked:
		deactivate the Table of Omelets.	
													
Table of Omelets
hint													used
"What's for breakfast? Are there any cornflakes and milk in the fridge?"
"Looks like breakfast will consist of a neoegg."
"You'll need to fry the neoegg."
"To fry the egg, you'll need a frying pan."
"The frying pan is usually in the drawer under the stove."
"To cook the egg, you'll need to break it into the pan."
"Place the pan on the stove to heat it."
"The stove will only activate if there is something to cook in the pan."
"Once the egg is cooked, you can eat the egg. You don't need a fork or other utensils."

A hint activation rule:
	if the Second Sim is happening and Rover is thirsty and the player is in the kitchen:
		activate the Table of Hydration.
	
A hint deactivation rule:
	if Rover is slaked:
		deactivate the Table of Hydration.

Table of Hydration
hint													used
"In the kitchen, there are two bowls."
"Put water in one bowl, dog food in the other."
"Where will you find water it the kitchen?"
"You can fill the water bowl from the sink."
"[quotation mark]Fill water bowl[quotation mark] will do the trick."
"Rover can't get drink from the bowl while you are still holding it."
"Drop the water bowl so Rover can have a drink."

A hint activation rule:
	if the Second Sim is happening and Rover is hungry and the player is in the kitchen:
		activate the Table of Sustenance.
	
A hint deactivation rule:
	if Rover is stuffed:
		deactivate the Table of Sustenance.

Table of Sustenance
hint													used
"In the kitchen, there are two bowls."
"Put dog food in one bowl, water in the other."
"The dog food is stored in the kitchen."
"A bag of dog food is found in the cabinet under the sink."
"You need to get the dog food to the dog food bowl."
"You can pour the dog food into the dog bowl."
"If you've picked up the bowl, Rover can't eat the food until you put the bowl down."

A hint activation rule:
	if the Second Sim is happening and the ignite_pid is not zero:
		activate the Table of Euphemisms. [i.e., egg has been ingested.]
	
A hint deactivation rule:
	if Second Sim is not happening or (the Second Sim is happening and the landing_pid is not zero):
		deactivate the Table of Euphemisms.

Table of Euphemisms
hint													used
"Taking care of business means...well, what do you expect?"
"After eating, you might need to do something."
"It would be messy if you took care of business anywhere aside from the bathroom."
"For this particular kind of business, a toilet would be helpful."
"Taking care of business is a euphemism for going to the bathroom. What specifically that means is left up to you."

A hint activation rule:
	if the Second Sim is happening and the player is postpoop and the landing_pid is zero:
		activate the Table of Stick Straightening. [i.e., pooped, but not flushed.]
	
A hint deactivation rule:
	if Second Sim is not happening or (the Second Sim is happening and the landing_pid is not zero):
		deactivate the Table of Stick Straightening.

Table of Stick Straightening
hint													used
"Look around the bathroom. Something doesn't seem to be right."
"Examine each item in the bathroom."
"The plunger seems to be strangely positioned."
"Can you straighten out the plunger?"
"Can you move the plunger?"
"Can you push or twist the plunger?"
"Can you push or twist the plunger is a specific direction?"
"Can you push the plunger forward or backward, left or right, or clockwise and counterclockwise?"
"By moving the plunger around in various directions, can you center it and get it to stand straight up?"
"If you've centered the plunger, does anything work now that didn't before?"
"Before you leave the bathroom, you should flush the toilet."


A hint activation rule:
	if the Second Sim is happening and the landing_pid is not zero:
		activate the Table of Perambulation.
		
A hint deactivation rule:
	if the Second Sim is not happening:
		deactivate the Table of Perambulation.

Table of Perambulation
hint													used
"Rover should not take his walk in the house. That would be messy."
"Rover wants to go for a walk in the park."
"You can trust Rover to come back, just let him out."
"The only way out of the apartment is the front door."
"To let Rover out for walkies, open the front door."

A hint activation rule:
	if the Real Thing is happening and player is not postpoop:
		activate the Table of Persistence.
	
A hint deactivation rule:
	if player is postpoop:
		deactivate the Table of Persistence.

Table of Persistence
hint													used
"What!?! Is this the same as the last time?"
"Is this still a beta test?"
"Is this exactly like last time, or has something important changed?"
"What do you think happened to the drapes?"
"The last two times were practice -- this time is for real."

A hint activation rule:
	if the Real Thing is happening and landing sequence is happening:
		activate the Table of Plumbing.
	
A hint deactivation rule:
	if landing sequence is not happening:
		deactivate the Table of Plumbing.

Table of Plumbing
hint													used
"The toilet isn't working like normal."
"Something is making a rattling sound when you flush the toilet."
"Did you check out the toilet?"
"Did you try troubleshooting the toilet?"
"Is there something wrong with the toilet tank?"
"Did you look inside the toilet?"
"Did you try opening the toilet tank lid?"
"What is wrong with the chain?"
"Can you either fix the chain or bypass it?"
"Ultimately, you need to find some way of raising the flapper valve."
"You could raise the flapper valve to allow the toilet to flush."

A hint activation rule:
	if the Real Thing is happening and Rover is not in the Valkyrie Area:
		activate the Table of Bone Retrieval.
	
A hint deactivation rule:
	if the Real Thing is not happening or (the Real Thing is happening and the delicious bone is in the Valkyrie Area):
		deactivate the Table of Bone Retrieval.

Table of Bone Retrieval
hint													used
"What was the purpose of your mission?"
"Are you looking for something that was lost on this planet?"
"Sometimes Rover doesn't see things as they really are."
"The Status Line shows what Rover is really doing."
"You need to retrieve the space probe."
"To Rover, the space probe looks like a bone."
"Rover must get the bone from the female dog."
"The female dog will only be impressed if Rover talks to her."
"When Rover talks to the female dog (i.e., barks) she will drop the bone. Take it before she takes it back."
"After Rover has the bone, he can take it home."

A hint activation rule:
	if the Real Thing is happening and the delicious bone is in the Valkyrie Area:
		activate the Table of Refueling.
	
A hint deactivation rule:
	if the Real Thing is not happening:
		deactivate the Table of Refueling.

Table of Refueling
hint													used
"You need to get the probe data back to Mars."
"You cannot transmit the data back to Mars because the ansible is broken."
"There is no way to fix the ansible. You can't go outside the ship, and Rover has no clue about ansibles."
"If you can't send the data back to Mars, you'll have to take the data back to Mars."
"You can't blast off because you don't have any fuel for the fusion rockets."
"You'll need some heavy helium."
"You only brought one heavy helium sphere with you, and you used it up during landing."
"You'll have to find another heavy helium sphere."
"The heavy helium sphere looks like something else. You may remember from earlier."
"The heavy helium sphere looks like an egg."
"You need to find another egg."
"The other egg is found in a place where people keep eggs."
"The other egg is in a refrigerator."
"The other egg is not in your refrigerator; it's in someone else's."
"To fuel the fusion rockets, you will need to inject heavy helium into the reactor core and then recycle the carboy."
"To fuel the engines, you need to fry and eat another egg."

A hint activation rule:
	if the Real Thing is happening and the white egg is in the living room:
		activate the Table of Blasting Off.
	
A hint deactivation rule:
	if the Real Thing is not happening:
		deactivate the Table of Blasting Off.

Table of Blasting Off
hint													used
"You need to fire the fusion rockets to lift off."
"Your engines are fully fueled (that [quotation mark]egg[quotation mark] is full of heavy helium)."
"How did you fire the engines for landing?"
"The flushing the toilet will fire the fusion rockets."
"The toilet is still broken. How did you flush it last time?"

A hint activation rule:
	if Boarding Party is happening:
		activate the Table of Evasive Action.
	
A hint deactivation rule:
	if Boarding Party is not happening:
		deactivate the Table of Evasive Action.

Table of Evasive Action
hint													used
"The gunships don't seem interested in you, but the assault ship is intent on docking."
"There are several things you can do to make life difficult for the assault ships."
"The assault ship's goal is to dock stably with the Valkyrie to allow transfer of personnel. Anything you can do to disrupt that process is in your interest."
"It takes some time for the ship to approach. During that time, is there any way of coating the ship with a protective barrier?"
"Can you think of a way to alter the ship's position? The docking ring is not very strong."
"Remember back in the first simulation how you neutralized a static charge? What happens if you do the same now, after the other ship attaches to the back of the ship?"
"What is the purpose of the toothbrush?"
"What happens if you brush your teeth after the other ship attaches?"

A hint activation rule:
	if the droid is in the Valkyrie Area:
		activate the Table of RockemSockem.
	
A hint deactivation rule:
	if Boarding Party is not happening or (Boarding Party is happening and the technician is in the Valkyrie Area):
		deactivate the Table of RockemSockem.

Table of RockemSockem
hint													used
"The maintenance droids are trying to disassemble you! You've got to stop them."
"The droids will move around the ship as they complete tasks, you have to keep up with them."
"Only one droid will board at a time. They've seen a lot of Kung Fu movies, but still miss the point."
"There are multiple ways to slow down the droids. Some of them require you to grab a droid. They may wiggle out of your grasp, but you can try again."
"Do you think droids are tasty?"
"Could violence be the answer to this one?"
"Is there anything you could do to a droid from a distance?"
"Did you know that droids are, by default, sheltered and easily scandalized?"
"Being metallic, how do you think a droid would fair in an intense magnetic field?"
"Do you think droids would operate well under ultracold conditions?"

A hint activation rule:
	if Boarding Party is happening and the technician is in the Valkyrie Area:
		activate the Table of Antitech.
	
A hint deactivation rule:
	if Boarding Party is not happening:
		deactivate the Table of Antitech.

Table of Antitech
hint													used
"If the droids strike out, the salvagers from Myomita will send over human technicians. They're cheaper than droids. Unfortunately, your programming prevents you from directly attacking people (some corollary of Asimov's Laws of Robotics, you figure)."
"The technicians will move around the ship, you need to follow them around."
"Sometimes you can do something in one part of the ship that will affect other areas of the ship."
"Rover might not like these technicians either."
"Wonder what the sink does."
"You know, it's probably pretty radioactive in the reactor core."
"Opening the front door wouldn't hurt anybody, would it?"
"Even if you can't take out every last technician, slowing them down buys you time."

A hint activation rule:
	if Back on Mars is happening and audio is switched off:
		activate the Table of Low Volume.
	
A hint deactivation rule:
	if Back on Mars is happening and audio is switched on:
		deactivate the Table of Low Volume.

Table of Low Volume
hint													used
"Janet and David are talking, but you can't seem to hear them."
"Did you try look, smell, touch, and taste? Does that cover it?"
"Your audio feed is off. You need to listen."

A hint activation rule:
	if Back on Mars is happening and David Venkatachalam is exposed:
		activate the Table of Defeating Evil.

Table of Defeating Evil
hint													used
"So, David turns out to be a bad guy."
"Reasoning with David is not an option."
"Attacking David won't work. It's against your programming to attack a human."
"Do you have a friend on board who will do what you say?"
"Rover knows some tricks."
"During the war, Rover learned a command, but it is seldom used."
"You can tell Rover to attack David (e.g., [quotation mark]Rover, attack David[quotation mark])."

