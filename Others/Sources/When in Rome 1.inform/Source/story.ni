"When in Rome 1: Accounting for Taste" by Emily Short

Include (- Serial "201217"; -).

The story genre is "Science Fiction". The story headline is "A Puzzle Game in Five Brief Episodes". The release number is 4. The story creation year is 2006. The story description is "Manhattan, May, 1954. 

The last few years, you've settled into a routine. You work at the bank, you go home, you occasionally have dinner with your mother. It is all acceptably ordinary.

One day a strange creature crosses your path, and disrupts the schedule entirely.

When in Rome is designed as a lunchtime game: there are five episodes, each of which may be played to a conclusion within about fifteen minutes."

Use no scoring, the serial comma and American dialect. Use full-length room descriptions.

Include Basic Screen Effects by Emily Short. Include Menus by Emily Short. Include Basic Help Menu by Emily Short. Include Locksmith by Emily Short. Include Punctuation Removal by Emily Short.

Include Singing Reloaded by Shin. Include Swearing Reloaded by Shin.

Release along with cover art, a website, a file of "Manual" called "WiR Manual.pdf", and source text.


Part 1 - World Model

Chapter 1 - Some Characteristics and Adjectives

Section 1 - Physical truths

A thing can be stinky or inoffensive. [Stinky things will offend animals with strong normal senses of smell, but attract those from sulfurous or methane-heavy atmospheres.]

A thing can be explored or unexplored. A thing is usually unexplored. [Explored means that the creature has already interacted with it once; it is no longer as interesting for creatures to play with.]

A thing can be useful or pointless. A thing is usually useful. [Pointless means that the creature has tried to lift or eat the object and found it intractable; it will not try again.]

Toughness is a kind of value. A thing has toughness. The toughnesses are sturdy, leathery, and papery. A thing is usually sturdy. [Toughness indicates the susceptibility of a thing to being eaten or destroyed by a creature.]

Weight is a kind of value. The weights are light, medium-weight, or heavy. A thing has weight. A thing is usually light. [Weight indicates whether creatures of different strengths will be able to pick something up.]

An electric light is a kind of device. Carry out switching on an electric light: now the noun is lit. Carry out switching off an electric light: now the noun is unlit. Carry out someone trying switching on an electric light: now the noun is lit. Carry out someone trying switching off an electric light: now the noun is unlit.

Understand "shine [electric light]" as switching on. Instead of burning an electric light, try switching on the noun. 

Understand "point [something] at [something]" or "shine [something] at [something]" or "turn [something] toward/towards/at [something]" as orienting it toward. Orienting it toward is an action applying to two things. Carry out orienting something toward something: say "It's hard to see what good that would do.". Instead of orienting an electric light toward the creature: try turning the noun. 


Section 2 - Hunger

A person has a number called the last feed time. The last feed time of a person is usually -20.

A person has a number called metabolism. The metabolism of the player is 180. 

A person has a number called breath count. The breath count of a person is usually 1000.

Definition: a person is scaly if its metabolism is 10 or less. 

Definition: a person is furry if its metabolism is 15 or more.

Definition: a person is cold:
	if it is not scaly, no;
	if it is wearing the jacket, no;
	if the number of things worn by it is less than 4, yes;
	no.

Definition: a person is hungry if it was last fed more than metabolism of it minutes back.

Definition: a person is starving:
	if it was last fed too long ago, yes;
	no.

Definition: a person is dying if it was last fed way too long ago.

To decide whether (critter - a person) was last fed more than (count - a number) minutes back:
	let X be the last feed time of the creature;
	let Y be the turn count - X;
	if Y > count, yes;
	no.
	
To decide whether (critter - a person) was last fed too long ago:
	let X be the last feed time of the creature;
	let count be the metabolism of the creature;
	let count be count times two;
	let Y be the turn count - X;
	if Y > count, yes;
	no.
	
To decide whether (critter - a person) was last fed way too long ago:
	let X be the last feed time of the creature;
	let multiplier be 5; 
	if the metabolism of the creature is less than ten, let the multiplier be 7;
	if the metabolism of the creature is greater than 30, let the multiplier be 3;
	let count be the metabolism of the creature; 
	let count be count times multiplier; 
	let Y be the turn count - X;
	if Y > count, yes;
	no.
	
To decide whether (critter - a person) is suffocating:
	if the breath count of the critter is 1000, no;
	yes.
	
Definition: a thing is delicious if it fits metabolic parameters.

To decide whether (item - a thing) fits metabolic parameters:
	if the item is leathery and the item is pointless, no;
	if the food of the creature is meaty and the item is fleshy, yes; 
	if the food of the creature is meaty and the item is a person, yes;
	if the food of the creature is wood-pulpy and the item is papery, yes;
	if the food of the creature is earthly and item is edible, yes;
	if the food of the creature is textile and the item is wearable, yes;
	no.
	
Food is a kind of value. The foods are textile, earthly, meaty, and wood-pulpy.

A thing can be fleshy or unfleshy. A thing is usually unfleshy.

A thing can be poisoned or safe. A thing is usually safe.
 	
Section 3 - Access and Preference of Objects

Definition: a thing is available:
	if it is in a container which is carried by the player, no;
	if it is not worn by the player and it is not a person and it is not carried by the player, yes;
	no.

Definition: the fedora is available if it is not carried by someone.

To decide whether (item - a thing) interests (character - a person):  
	if the item is a person, no; 
	if the character has the item:
		if the item is stinky and the odor sensitivity of the creature is inverse, yes;
		if the item is delicious, yes;
		no;
	if the character is acquisitive, yes;
	if [the character is hungry and] the item is delicious, yes; [For diagnostic simplicity during the first episode, we will not require the character to be hungry.]
	if the character is cold and the item is wearable, yes;
	if the character is hostile and the item is papery, yes;
	if the character is hungry, no;
	if the odor sensitivity of the character is weak, no;
	if the item is stinky, yes;
	no. 

Desire relates a person (called X) to a thing (called Y) when Y interests X. The verb to want (he wants, they want, it is wanted) implies the desire relation. 
	
Section 4 - Mood-related

Definition: a person is offended:
	if the odor sensitivity of it is weak, no;
	if the odor sensitivity of it is inverse, no;
	if it can touch a stinky thing, yes;
	no;

Definition: a person is uncomfortable:
	if it is hungry, yes; 
	if it is cold, yes;
	if it is offended, yes;
	if it is blinded, yes;
	no.

Definition: a person is comfortable if it is not uncomfortable.

Definition: a person is snappish if the mood of it is less than friendly and it is uncomfortable.

Definition: a person is light-sensitive if it lies beyond Saturn. Definition: a person is blinded if it is light-sensitive and it can see a lit device.

To decide whether (character - a person) lies beyond (place - a moon):
	if the system of the moon of the character is greater than place, yes;
	no. 

To decide whether (character - a person) lies nearer than (place - a moon):
	if the system of the moon of the character is less than place, yes;
	no. 
	
Mood is a kind of value. The moods are hostile, curious, friendly, and secretive. A person has a mood. A person is usually curious.

Section 5 - Qualities Inherited From The Home-world

Odor sensitivity is a kind of value. The odor sensitivities are strong, weak, and inverse. A person has an odor sensitivity.

Gravity is a kind of value. The gravities are negligible, fractional, Marslike, Earthlike, and vast. A person has a gravity.

Speed is a kind of value. The speeds are slow, moderate, fast, and lightning. Intelligence is a kind of value. The intelligences are smart and stupid. 

Level is a kind of value. The levels are beginner, easy, medium, hard, expert, endgame, and boring. The current level is a level that varies. The current level is beginner.

Moon is a kind of value. The moons are defined by the Table of Alien Characteristics. 

 
Table of Alien Characteristics
moon	attitude	nostrils	feed time	mass	difficulty	arms	dexterity	taste	brain	system	tattoo-mark
Mercury	hostile	weak	5	Marslike	beginner	4	slow	wood-pulpy	smart	Mercury	"*"
Venus	friendly	inverse	3	Earthlike	beginner	2	slow	textile	smart	Venus	"**"
Luna	friendly	weak	12	fractional	easy	4	moderate	earthly	stupid	Luna	"*** -"
Luna-X	hostile	weak	12	fractional	medium	4	moderate	earthly	stupid	Luna	"***' -"
Earth-X	hostile	strong	12	Earthlike	hard	2	fast	earthly	smart	Luna	"***'"
Mars	friendly	strong	15	Marslike	easy	2	fast	textile	smart	Mars	"****"
Deimos	friendly	weak	15	negligible	medium	2	fast	textile	smart	Mars	"**** -"
Phobos	hostile	weak	15	negligible	medium	2	lightning	textile	smart	Mars	"**** --"
Asteroids	hostile	weak	18	negligible	easy	4	slow	wood-pulpy	stupid	Asteroids	"- - -"
Jupiter	curious	strong	20	vast	medium	0	lightning	textile	stupid	Jupiter	"**** *"
Ganymede	curious	strong	20	fractional	easy	2	moderate	earthly	smart	Jupiter	"**** * -"
Callisto	curious	weak	20	fractional	easy	6	moderate	wood-pulpy	stupid	Jupiter	"**** * --"
Io	curious	inverse	10	negligible	hard	2	fast	wood-pulpy	smart	Jupiter	"**** * ---"
Europa	curious	strong	20	negligible	easy	1	fast	textile	stupid	Jupiter	"**** * ----"
Saturn	curious	strong	25	Earthlike	hard	0	lightning	textile	stupid	Saturn	"**** **"
Titan	curious	inverse	25	fractional	expert	2	moderate	wood-pulpy	smart	Saturn	"**** ** -"
Uranus	curious	inverse	30	Earthlike	medium	0	lightning	meaty	stupid	Uranus	"**** ***"
Oberon	curious	weak	30	negligible	boring	4	moderate	textile	smart	Uranus	"**** *** -"
Titania	curious	weak	30	negligible	boring	4	moderate	wood-pulpy	stupid	Uranus	"**** *** --"
Neptune	curious	inverse	35	Earthlike	expert	0	lightning	wood-pulpy	smart	Neptune	"**** ****"
Nereid	curious	weak	35	negligible	easy	2	slow	textile	smart	Neptune	"**** **** -"
Triton	curious	inverse	35	negligible	expert	4	fast	wood-pulpy	smart	Neptune	"**** **** --"
Pluto	curious	strong	45	negligible	hard	2	fast	textile	stupid	Pluto	"**** *****"
Charon	curious	weak	45	negligible	hard	2	fast	meaty	stupid	Pluto	"**** ***** -"


Definition: a person is tall if it is negligible or it is fractional.

Definition: a person is timid:
	if it is meaty, no;
	if it is curious and it is stupid and it is fast, yes;
	no.

Definition: a person is acquisitive if it is curious and it is stupid and it is moderate. 

Definition: a person is contrary if it is hostile and it is stupid.

Definition: a person is homebound:
	if it is friendly and it is smart, yes; 
	no.

Definition: a person is playful: 
	if it is slothful, no; 
	if it is hostile, no;
	if it is secretive, no;
	if it is smart, yes;
	no.

Definition: a person is athletic if it passes training.

To decide whether (athlete - a person) passes training:
	if the speed of the athlete is less than fast, no;
	if athlete is vast, yes;
	if athlete is Earthlike, yes;
	no.
	
Definition: a person is slothful:
	if it is negligible and it is slow, yes;
	no.
	
Section 6 - Some standardized body parts

A body part is a kind of thing.

Some hair is a kind of body part. Understand "hair" or "hairdo" or "curls" as hair. One hair is part of every woman. A nose is a kind of body part. Understand "nose" as nose. One nose is part of every woman. The description of a nose is usually "Turned up, in a way that looks a little annoyed." Some eyes are a kind of body part. Understand "eye" or "eyes" or "eyelashes"  as eyes. Eyes is part of every woman. A mouth is a kind of body part. One mouth is part of every woman. Understand "mouth" or "face" or "lips" as a mouth. [This isn't meant to be sexist about body parts, but since the player is unable to examine his own features anyway, it seems easiest to give them only to Esther.] The description of a mouth is usually "You have the faint impression that she's smirking at you."
 
Smelling a body part is impertinent behavior. Touching a body part is impertinent behavior. Tasting a body part is impertinent behavior. Smelling a woman is impertinent behavior. Touching a woman is impertinent behavior. Tasting a woman is impertinent behavior. Instead of impertinent behavior: say "You're not on terms of adequate intimacy."

Touching something which is worn by a woman is impertinent behavior. Smelling something which is worn by a woman is impertinent behavior. Tasting something which is worn by a woman is impertinent behavior.


Chapter 2 - Creature Behavior

Section 1 - Some Phrasing Helps

To say forcefully:
	choose a random row in the Table of Forces;
	if the gravity of the creature is negligible, say "[smallest entry]";
	if the gravity of the creature is fractional, say "[small entry]";
	if the gravity of the creature is Marslike, say "[medium entry]";
	if the gravity of the creature is Earthlike, say "[large entry]";
	if the gravity of the creature is vast, say "[huge entry]";
	
Table of Forces
smallest	small	medium	large	huge
"very softly"	"softly"	"with moderate force"	"strongly"	"quite forcefully"
"with considerable effort"	"with effort"	"easily"	"forcefully"	"quite forcefully"

To say quickly:
	choose a random row in the Table of Speed Adverbs;
	if the creature is not moderate, say " ";
	if the creature is fidgety, say "[quickly entry]"; 
	if the creature is slow, say "[slowly entry]";

Table of Speed Adverbs
quickly	slowly
"rapidly"	"ponderously"
"quickly"	"slowly"
"swiftly"	"laboriously"

Section 2 - Creature Actions

Rule for implicitly taking something (called target) when the person asked is the creature: 
	try the creature taking the target.

The animal feeding rule is listed instead of the can't eat unless edible rule in the check eating rules. 
	
The can't take people's possessions rule does nothing when the person asked is not the player.

Instead of asking the creature to try doing something when the creature is in a closed container:
	say "The creature watches your mouth move, fascinated, but it obviously cannot hear you." 
	
Before printing the name of the creature:
	if a random chance of 1 in 4 succeeds:
		if the creature is scaly, say "scaly ";
		if the creature is furry, say "furry "; 
		say "[color of the creature] ".
	
Rule for printing the name of the creature:
	if a random chance of 1 in 2 succeeds, say "creature";
	otherwise say "Visitor".

This is the animal feeding rule:
	if the actor is the player and the noun is not edible, say "That's plainly inedible." instead;
	if the noun is not delicious, stop the action.
	
A person can be active or passive.

[After the creature trying doing something: now the creature is passive; continue the action.]

Before someone trying taking something: now containment context is the holder of the noun.

Containment context is a thing that varies. 

Heart's desire is a thing that varies. Before someone trying taking something, now heart's desire is the noun.

Report the creature trying taking something:
	if the creature is in the containment context and the containment context is a container,
		say "[The creature] picks up [the noun], now it is in [the containment context]." instead;
	otherwise say "[The creature] [if a random chance of 1 in 3 succeeds][forcefully] [end if][if containment context is a container]extracts[otherwise]picks up[end if] [the noun] from [if containment context is the location]the floor[otherwise][the containment context][end if]." instead.
	 
Report an acquisitive creature trying taking something:
	if the creature is in the containment context and the containment context is a container,
		say "[The creature] gleefully picks up [the noun] from [the containment context]." instead;
	otherwise say "[The creature] [if a random chance of 1 in 3 succeeds][forcefully] [end if][if containment context is a container]extracts[otherwise]acquires[end if] [the noun] from [if containment context is the location]the floor[otherwise][the containment context][end if], then recounts its possessions: [number of things carried by the creature in words]." instead.
	
Report a fidgety creature trying inserting something into something:
	say "[The creature] shoves [the noun] hastily into [the second noun]." instead.
	
Report an athletic creature trying inserting something into something:
	say "[The creature] [puts] [the noun] away in [the second noun]." instead.
	
Report someone trying inserting something into something:
	say "[The person asked] [puts] [the noun] into [the second noun]." instead.
	
To say puts:
	choose a random row in the Table of Insertion Words;
	say "[word entry]".
	
Table of Insertion Words
word
"puts"
"sticks"
"tucks"

Report the creature trying dropping something when the creature is athletic:
	say "[The creature] tosses aside [the noun]." instead.
	
Report the creature trying dropping a wearable thing when the number of portable things in the location is greater than 4:
	if the creature is in the location,
		say "[The creature] drops [the noun] beside [the random fixed in place thing in the location]." instead;
	otherwise say "[The creature] sets down [the noun] inside [the holder of the creature]." instead.
	 
Report the creature trying closing something:
	say "[The creature] [if a random chance of 1 in 3 succeeds]shuts[otherwise]closes[end if] [the noun]." instead.
	
Report the creature trying closing something which contains the creature:
	if the creature is timid, say "With a shy look at you, [the creature] ";
	otherwise say "[The creature] ";
	say "[if a random chance of 1 in 3 succeeds]shuts[otherwise]closes[end if] [the noun] on itself." instead. 

Report the creature trying opening something:
	say "[The creature] opens [the noun]." instead.
	
Report the creature trying dropping something:
	say "[The creature] puts down [the noun] [if the holder of the creature is not the location]inside [the holder of the creature][otherwise]on the floor[end if][if the gravity of the creature is less than negligible and the creature is not weak], breathing quickly[end if]."  instead.
	
Instead of the creature trying taking something when the number of things carried by the creature is the carrying capacity of the creature:
	let the new target be a random thing carried by the creature;
	if the creature is hungry and the creature carries a delicious thing (called the target):
		while the new target is the target:
			let the new target be a random thing carried by the creature; 
	try the creature trying dropping the new target.

Instead of the creature trying taking something when the creature is in a container (called the playhouse):
	if the noun is in the playhouse, continue the action;
	otherwise try the creature trying exiting.

Instead of the creature trying taking something when the noun is in an enterable container (called the playhouse):
	if the creature is tall
	begin;
		if the creature is visible and the creature is not in the playhouse, say "[The person asked] reaches for [the noun] with long arms.";
		continue the action; 
	end if;
	if the creature is not in the playhouse
	begin;
		if the creature is visible, say "[The person asked] tries to reach into [the playhouse], but its arms are a bit short for its purposes. [run paragraph on]";
		if the creature carries the playhouse
		begin;
			try the creature trying dumping out the playhouse;
		otherwise;
			try the creature trying entering the playhouse;
		end if;
	otherwise;
		continue the action;
	end if.
	
Instead of the creature trying entering something closed:
	try the creature trying opening the noun.
	
Instead of the creature trying entering something when the creature is not carrying the noun and the noun is not in the location:
	try the creature trying taking the noun.

Instead of the creature trying entering something when the noun is not available:
	try the creature trying taking the noun.
	
Instead of the creature trying entering something when the creature has the noun:
	try the creature trying dropping the noun.

Instead of a negligible creature trying eating a useful leathery thing:
	now the creature is passive;
	now the noun is pointless;
	if the creature is visible, say "[The creature] bites [the noun], but is too weak to tear off portions of its leathery substance."
	
Instead of a negligible creature trying eating a pointless leathery thing:
	try the creature trying dropping the noun.

Instead of the creature trying eating something which contains something: 
	if the creature is not carrying the noun, continue the action;
	otherwise try the creature trying dumping out the noun.

Instead of the creature trying eating something portable which is not carried by the creature:
	try the creature trying taking the noun.

Carry out the creature trying eating something:
	now the last feed time of the creature is the turn count;
	if the noun is poisoned and the creature is not wood-pulpy and the creature is negligible, now the creature is poisoned.
	
Report the creature trying eating a poisoned thing:
	say "[The creature] consumes [the noun], ";
	if the creature is negligible
	begin;
		if the creature is wood-pulpy, say "but even though it is small and light-structured, its unusual metabolism seems capable of dealing with the glue." instead;
		otherwise say "and immediately its eyes fill with tears and it begins to cough. After a moment or two of this it slumps into an inactive state." instead;
	otherwise;
		say "but because of the relatively small amount of toxin relative to its body mass and sturdiness it does not suffer any visible ill effect." instead;
	end if.
	
Report the creature trying eating something:
	say "[The creature] eats [the noun] in small neat bites, turning it in its paws as it goes[if the creature is comfortable]. At last it gives a pleased sigh[end if]." instead.

Report a fast creature trying eating something edible:
	say "[The creature] gobbles up [the noun], scattering flecks everywhere." instead.

Report a fast creature trying eating something wearable:
	say "[The creature] swiftly tears [the noun] into shreds, then consumes the confetti." instead.
	
Report a lightning creature trying eating something: 
	say "[The creature] devours the whole of [the noun] in one lightning-fast bolt." instead.
	
Report a creature trying eating the socks:
	if the socks are poisoned, continue the action; 
	say "[The creature] chows down on your socks. Ew." instead.
	
Report the creature trying taking something stinky when the odor sensitivity of the creature is strong:
	now the creature is passive;
	say "[The creature] picks up [the noun]";
	let index be 0;
	repeat through Table of Stink Disgust
	begin;
		if a random chance of 1 in 3 succeeds
		begin;
			if index is 0, say ", "; otherwise say " and ";
			say "[reaction entry]";
			increase index by 1;
			if index is 2
			begin;
				say "." instead;
			end if;
		end if;
	end repeat;
	say "." instead.
	 
Table of Stink Disgust
reaction
"holding it at arm's length[if the gravity of the creature is negligible] (though this appears to tax all its feeble strength)[end if]"
"scowling with all the expression its little face can command"
"making gagging and choking noises"
"waving the other paw in front of its nose"
"giving you a look as though to say it can't believe you have such things on your uncivilized planet"
	
Report the creature trying taking something stinky when the odor sensitivity of the creature is inverse:
	now the creature is passive;
	say "[The creature] picks up [the noun] and sniffs it with obvious pleasure." instead.
	
	
Report the creature trying closing a container which contains a stinky thing when the odor sensitivity of the creature is strong:
	say "[The creature] [if the gravity of the creature is Earthlike]slams[otherwise]closes[end if] [the noun] [forcefully]." instead.

Before someone trying closing something which is not available:
	if the creature is in the noun, continue the action;
	try the person asked trying taking the noun instead.
 
The can't take people's possessions rule does nothing.

Instead of taking something which is worn by the creature when the speed of the creature is lightning:
	now the creature is passive;
	if the creature is visible, say "The creature dodges you with lightning speed and is at the far side of the room in a moment."
	
Instead of taking something worn by the creature when the creature is fast:
	now the creature is passive;
	if the creature is visible, say "You don't get close enough to the creature -- it moves away too fast."
	
Before taking something worn by the creature when the speed of the creature is moderate and the creature is friendly:
	now the creature is passive;
	say "The creature looks as though it might move away, but then decides to allow you to go ahead.";
	continue the action.
	 

Instead of taking something which is carried by the creature when the speed of the creature is lightning:
	now the creature is passive;
	say "You are no match for the creature's lightning reflexes, and never even get close to [the noun]." instead.
	
Instead of taking something carried by a slow creature:
	move the noun to the player;
	now the creature is passive;
	say "[The creature] tries to evade you, but its movements are really too slow." instead.
	
Instead of taking something carried by the creature when the speed of the creature is moderate: 
	now the creature is passive;
	if a random chance of 1 in 2 succeeds
	begin;
		move the noun to the player;		
		say "It's an even thing, with the creature's moderate reflexes, whether you're going to succeed or not, but you do manage to snatch [the noun] from it." instead;
	otherwise;
		say "You make a move towards [the noun]; [the creature] dodges. But not terribly quickly; with another try you might succeed. Moderate reflexes at best." instead;
	end if.
	
Instead of taking something carried by a fast creature:
	now the creature is passive;
	if the creature is playful, say "You reach for [the noun], but the creature tosses it to another hand, winking at you. It's a quick thing, at least.";
	otherwise say "You try to retrieve [the noun], but the creature deftly moves it out of your reach. Fast reflex, there.".
	
[Instead of the passive creature trying doing something:
	stop the action.]

Definition: a container is contaminated if the odor sensitivity of the creature is strong and it contains a stinky thing.

Before the hostile smart creature trying taking something which is not available when the creature can see a papery available thing (called the target): 
	if the creature can see the player, try the creature trying threatening the target for the noun  instead.
	
A thing can be threatened or unthreatened. A thing is usually unthreatened.

Threatening it for is an action applying to two things. Threatening something for something is useless action.

Instead of the creature trying threatening an unthreatened thing for something:
	now the noun is threatened;
	now the creature is passive;
	if a random chance of 1 in 2 succeeds,
		say "[The creature] gestures dire things it will do to [the noun] if it does not receive [the second noun].";
	otherwise
		say "[The creature] mimes tearing [the noun] to bits, then points at [the second noun].";

Carry out the creature trying threatening something for something:
	try the person asked trying attacking the noun instead.
	
[Must be a before or it will fail the basic accessibility rule]
Before the creature trying taking something which is in a closed container (called the protection):
	if the creature can touch the noun, continue the action;
	try the creature trying opening the protection instead.
	
Instead of the starving creature trying crying for the first time:
	now the creature is passive;
	if the creature is visible
	begin;
		if the creature can see a delicious thing (called target),
			say "[The creature] settles in one place, no longer strong enough to beg for [the target].";
		otherwise say "[The creature] settles in one place, no longer strong enough to beg for food.";		
	end if.

Instead of the starving creature trying crying:
	if the person asked is visible
	begin;
		if the creature can see a delicious thing (called target) and the creature is visible
		begin;
			if the target is the player,
				say "[The creature] stares hungrily in your direction.";
			otherwise
				say "[The creature] eyes [the target][if the gravity of the creature is less than Earthlike] weakly, but does not move towards it[otherwise] wistfully[end if].";
		otherwise;
			 say "[The creature] whimpers in hunger.";
		end if;
	end if;
	now the creature is passive.
	
Before a fidgety hostile smart creature trying taking something which is carried by the player :
	silently try dropping the noun;
	if the player is not carrying the noun,
		say "[The creature] distracts you, causing you to drop [the noun]."

Instead of the creature trying taking something which is not available: 
	try the creature trying begging for the noun.
	

Reading is an action applying to one thing.

Carry out the creature trying reading:
	now the noun is explored.
	
Report the creature trying reading:
	say "[The person asked] [if a random chance of 1 in 2 succeeds]peruses[otherwise]thoughtfully studies[end if] [the noun]."

Forcing drop of is an action applying to one thing.

Instead of the creature trying forcing drop of something when the number of things carried by the person asked is 0:
	let the target be a random portable available thing which can be seen by the person asked;
	if the target is a thing, try the person asked trying taking the target instead.
 
Carry out the creature trying forcing drop of something:
	let the target be a random thing carried by the person asked;
	if the target is not a thing, stop the action;
	try the person asked trying forcing drop of the noun with the target.
	
Forcing drop of it with is an action applying to two things.

Carry out the creature trying forcing drop of something with something:
	move the second noun to the player;
	move the noun to the person asked

Report the creature trying forcing drop of something with something:
	say "[The person asked] chucks [the second noun] in your direction, causing you to drop [the noun]." instead.

Begging for is an action applying to one thing.

Carry out the creature trying begging for something: do nothing.
	 
Report a meaty person trying begging for the player:
	if the holder of the person asked is the holder of the player,
		say "[The person asked] sneaks up close and [if a random chance of 1 in 2 succeeds]tries to take a bite from your calf[otherwise]licks your wrist[end if]."  instead;
	otherwise say "[The person asked] [if a random chance of 1 in 2 succeeds]makes bitey faces in your direction[otherwise]watches your movements with an unpleasant sort of hungry anticipation[end if]." instead.

Report the creature trying begging for something:
	if the noun is the person asked, say "[The person asked] squirms." instead;
	if the person asked is not in location, say "From [the holder of the person asked], [the person asked] reaches toward [the noun]." instead;
	if the person asked is timid, say "[The person asked] looks at [the noun] with large eyes but does not move, speak, or gesture." instead;
	choose a random row in the Table of Object Requests;
	if the creature is friendly or the creature is secretive, say "[template entry][paragraph break]";
	if the creature is curious, say "[curious request entry][paragraph break]";
	if the creature is hostile, say "[unfriendly request entry][paragraph break]";
	now the creature is passive.
	
Before the creature trying begging for something when the noun encloses the creature:
	now the creature is passive;
	say "[The creature] looks queasy and gestures for you to set it down." instead.

	
Instead of a smart person trying begging for something which is carried by the player:
	try the person asked trying forcing drop of the noun.
	
Instead of a fidgety person trying begging for something when the player carries more than 4 things and the player carries the noun:
	if the person asked is not visible, stop the action;
	if the person asked is timid, continue the action;
	if the number of things carried by the person asked is the carrying capacity of the person asked, try the person asked trying dropping a random thing carried by the person asked instead;
	if the noun is the first thing held by the player, continue the action;
	move the noun to the person asked;
	say "[The person asked] extracts [the noun] from among your possessions, since you are holding so much and its reflexes are so good."
	
Instead of a vast person trying begging for something:
	if the person asked is not visible, stop the action;
	now the person asked is passive;
	if the player wears the noun, say "[The person asked] tears [the noun] off of you. Gentle it isn't.";
	otherwise say "[The person asked] pulls [the noun] away from you[if the noun is papery], nearly ripping it in the process[end if].";
	move the noun to the person asked.
	
Instead of a vast person trying begging for something for the first time:
	if the person asked is not visible, stop the action;
	now the person asked is passive;
	if the player wears the noun, say "[The person asked] strips [the noun] from your body in one rapid movement. Well. Pity Esther isn't in here.";
	otherwise say "[The person asked] unceremoniously wrests [the noun] from your grasp, being quite a lot stronger than you are.";
	move the noun to the person asked.
	
Table of Object Requests
template	unfriendly request	curious request
"[The creature] looks mournfully at [the noun]."	"[The creature] fixes its glare on [the noun]."	"[The creature] looks curiously at [the noun]."
"[The creature] points to [the noun] and then presses its... paws? together wistfully."	"[The creature] fixes its glare on [the noun]."	"[The creature] [if gravity of the creature is Earthlike or the gravity of the creature is vast]makes a spring for, and nearly catches, [the noun][otherwise]springs at [the noun], but not with nearly enough force[end if]."
"[The creature] begs for [the noun]."	"[The creature] growls, biting at [the noun]."	"[The creature] makes a motion as though to beg for [the noun]."
"[The creature] circles you slowly, pointing at [the noun]."	"[The creature] circles you angrily, pointing at [the noun]."	"[The creature] circles you, trying to get a clearer view of [the noun]."
"[The creature] extends its claws towards [the noun] beseechingly."	"[The creature] snatches at [the noun]."	"[The creature] reaches eagerly towards [the noun]."

Report a slothful creature trying begging for something:
	say "[The creature] whines for [the noun]." instead.


Growling is an action applying to nothing.

Carry out the creature trying growling: do nothing.

Report the creature trying growling: say "[The creature] growls."

After the creature trying growling for the first time: 
	say "[The person asked] growls at you. Hostile, then. You back off warily.";
	now the creature is passive;
	stop the action.

Report a friendly creature trying growling:
	say "[The noun] shows teeth, but in such a way that you know it doesn't mean anything serious by it."
	 
Shivering is an action applying to nothing.

Carry out the creature trying shivering: now the person asked is passive.

Report the creature trying shivering: say "[The creature] [if a random chance of 1 in 2 succeeds]rubs its paws over its arms[otherwise]shivers[end if]."

Report the creature trying shivering when the person asked can see a lit thing (called the target):
	say "[The creature] shivers and draws closer to [the target]." instead.

Rejecting is an action applying to one thing.

Carry out the creature trying rejecting something: now the noun is explored.

Report the creature trying rejecting: say "[The person asked] turns its head away." instead.

Report a strong person trying rejecting a stinky thing: say "[The person asked] covers its nostrils and draws back." instead.

Report an inverse person trying rejecting a stinky thing: say "[The person asked] sniffs wistfully, obviously drawn by the smell, but then shakes its head." instead.

Report a weak person trying rejecting a stinky thing:  say "[The person asked] looks uninterested, but not appalled by the stench." instead.

Instead of a playful person trying rejecting an unexplored papery thing :
	try the person asked trying accepting the noun;
	try the person asked trying playing with the noun.
	
Report a playful person trying rejecting an explored papery thing:
	say "[The person asked] rolls its eyes and, with an exaggerated show of patience, looks over [the noun] again, muttering to itself. Apparently it has already committed to memory everything it finds interesting here." instead.

Report a playful person trying rejecting when the person asked carries something (called distraction): 
	say "[The person asked] giggles, and holds up [the distraction] for you to see in exchange, as though this were some kind of show-and-tell game." instead.

Report a timid person trying rejecting: say "[The person asked] scoots out of the way." instead.

Report a hostile person trying rejecting: say "[The person asked] spits on [the noun]." instead.


Showing temper is an action applying to nothing.

Carry out the creature trying showing temper: do nothing.

Report the creature trying showing temper: 
	say "[The creature] grumbles to itself." instead.


Crying is an action applying to nothing.

Carry out the creature trying crying: do nothing.

Report the creature trying crying: say "[The creature] sobs." 

Report the stupid creature trying crying:
	say "[The creature] [if a random chance of 1 in 2 succeeds]lies curled on the floor, keening softly[otherwise]rocks itself back and forth[end if]."  instead.
	
Report hostile smart creature trying crying:
	say "[The creature] is too weak to do much at this point, but it watches you angrily, and occasionally makes a gesture at you that it must have learned from taxi drivers."  instead.
	
Report a creature trying crying when the creature is in a container (called the trap):
	say "[The creature] curls up in [the trap], weeping." instead.



Hiding oneself is an action applying to nothing.

Check the creature trying hiding oneself: 
	if the person asked is not in a container, stop the action.

Carry out the creature trying hiding oneself:
	if the person asked is in a container (called the shelter)
	begin;
		if the player is in the shelter
		begin; 
			try the person asked trying exiting;
		otherwise; 
			if the shelter is closed and the player can see the person asked, say "[The person asked] [if a random chance of 1 in 2 succeeds]squinches its eyes shut, on an ostrich-like principle of mutual ignorance[otherwise]avoids looking at you[end if].";
			otherwise try the person asked trying closing the shelter instead;
		end if; 
	end if.
	
The last location is a room that varies. 
 
Before the creature trying hiding oneself when the person asked can see a door (called escape route):
	if location is not last location
	begin;
		now the person asked is passive;
		if the person asked is visible, say "[The person asked] presses itself against the wall and tries to creep past you towards [the escape route]." instead;
	otherwise;
		 try the person asked trying entering the escape route instead;
	end if.
	
Before the creature trying hiding oneself when the person asked is not in a container and the player is not in a container:
	if the person can see an enterable sheltering container
	begin;
		let the shelter be a random enterable sheltering opaque container which can be seen by the person asked; 
		if the shelter is not a container, let the shelter be a random enterable sheltering container which can be seen by the person asked;
		try the person asked trying entering the shelter instead;
	end if.
	
Definition: a container is sheltering if it is open or it is openable.


Dressing oneself is an action applying to nothing.

Before the creature trying dressing oneself when the person asked is not carrying something wearable:
	if the person asked can see an available wearable thing (called target) which is not worn by the person asked
	begin;
		try the person asked trying taking the target;
	otherwise if the person asked can see a wearable thing (called target) which is not worn by the person asked;
		try the person asked trying taking the target;
	end if.
	
Check the creature trying dressing oneself:
	if the person asked is not carrying a wearable thing, stop the action.

Carry out something trying dressing oneself:
	if the person asked is carrying a wearable thing (called target), try the person asked trying wearing the target.
	
Report the cold creature trying wearing something:
	say "[The creature] puts on [the noun] and pulls it as tight as possible to conserve warmth." instead.
	
Report the cold creature trying wearing the jacket:
	say "[The creature] pulls the jacket awkwardly over its arms and gathers the front shut." instead.


Dining is an action applying to nothing.

Before a meaty person trying dining when the person asked cannot see the player:
	if the person asked is in an adjacent room and the person asked can see a door (called the appropriate exit):
		try the person asked trying entering the appropriate exit instead.

Before the creature trying dining when the person asked is wearing a delicious thing (called lunch) and the person asked is not carrying a delicious thing:
	try the person asked trying taking off the lunch instead.

Instead of the creature trying dining when the person asked does not have a delicious thing:
	if the person asked can see an available useful delicious thing (called target):
		try the person asked trying taking the target;
	otherwise:
		if the person asked can see a delicious thing (called target):
			try the person asked trying taking the target;
		otherwise if the person asked is smart:
			try the person asked trying exploring.
	
Check the creature trying dining:
	if the person asked is not carrying a delicious thing, stop the action.

Carry out something trying dining:
	if the person asked is carrying a delicious thing (called target), try the person asked trying eating the target.

Playing with is an action applying to one thing.

Carry out the creature trying playing with something: now the noun is explored.

Report the creature trying playing with something: 
	say "[The person asked] [if the person asked is playful]toys with[otherwise]pokes at[end if] [the noun]";
	if the person asked has the noun, say "." instead;
	if the noun is in location
	begin;	
		say "." instead;
	otherwise;
		if the holder of the noun is not the holder of the person asked, say " [if the holder of the noun is a container]in[otherwise]on[end if] [the holder of the noun]." instead;
		otherwise say " in a bored manner." instead;
	end if.

Definition: a person is fidgety if it is fast or it is lightning.

Report a vast person trying playing with something when the noun is fixed in place and a random chance of 1 in 2 succeeds:
	say "[The person asked] casually lifts [the noun] a few inches, then sets it back down." instead.

Report the athletic creature trying playing with something when the noun is fixed in place and the noun is in the location:
	if the person asked is vast, continue the action;
	say "[The person asked] climbs up one side of [the noun] and down the other." instead. 
	
Report the fidgety creature trying playing with something: 
	if a random chance of 1 in 2 succeeds,
		say "[The person asked] taps [the noun] all over." instead;
	otherwise say "[The person asked] beats a rapid rhythm with its claws on [the noun]." instead.
	 
Report the fidgety creature trying playing with a container:
	say "[The person asked] taps [the noun]";
	if the noun is papery, say ", which rustles." instead;
	otherwise say ", which thunks hollowly." instead.
	
Report the fidgety creature trying playing with a papery thing:
	say "[The person asked] rustles [the noun]." instead.
	
Report a smart curious person trying playing with a papery thing:
	if the noun is the box, continue the action; 
		say "[The person asked] reads [the noun] through, following the words with one claw and subvocalizing as it goes." instead; 
	
Instead of a vast person trying playing with something:
	try the person asked trying attacking the noun.
	
Carry out a vast person trying attacking an openable container:
	now the noun is open;
	now the noun is damaged;
	now the noun is unopenable.

Report a vast person trying attacking a container:
	if the noun is papery, say "Apparently by accident, [the creature] rips a big hole in the side of [the noun].";
	otherwise say "[The creature] so mauls [the noun] that it is now in a permanent state of openness." instead.

A thing can be damaged or whole. A thing is usually whole.
	
Instead of a vast person trying attacking an unopenable papery container:
	let space be the holder of the noun;
	if the person asked is visible, say "[The creature] finishes dismantling [the noun], leaving [the list of things in the noun] behind.";
	now every thing in the noun is in the space;
	now the person asked is passive;
	now the noun is nowhere.

Instead of a vast person trying attacking an edible thing:
	now the noun is nowhere;
	if the person asked is visible, say "[The person asked] tears apart [the noun], scattering bits everywhere.";
	now the person asked is passive.
 
Carry out the creature trying attacking something papery:
	now the noun is nowhere.

Report the creature trying attacking something papery: 
	say "[The person asked] rips [the noun] to tiny shreds.";

Instead of attacking a papery thing:
	now the noun is nowhere;
	if the noun contains something
	begin;
		say "You tear up [the noun], leaving behind [the list of things in the noun][if the creature is in the noun]. [The creature] blinks in surprise[end if].";
		now every thing in the noun is in the location;
	otherwise;
		say "You rip [the noun] to bits.";
	end if.
	
Report a vast person trying attacking a damaged thing:
	if the creature has the noun,
		say "[The creature] bends [the noun] in imitation of a strong-man demonstration at a fair.";
	otherwise say "[The creature] jumps up and down on [the noun], but does not cause any more harm." instead.

Instead of a smart curious person trying playing with an unexplored switched off device:
	if the person asked is slothful, continue the action;
	now the noun is explored;
	try the person asked trying switching on the noun.
	
Instead of a slothful person trying switching on something:
	now the person asked is passive;
	if the person asked is visible, say "[The person asked] fumbles painfully at [the noun], but cannot manage to flip the switch."
	
Instead of a slothful person trying switching off something:
	now the person asked is passive;
	if the person asked is visible, say "[The person asked] fumbles painfully at [the noun], but cannot manage to flip the switch."
	
Instead of a slothful person trying switching off something for the first time:
	now the person asked is passive;
	if the person asked is visible, say "[The person asked] runs its claws over the surface of [the noun], seeking to switch it off but without success."

Report a curious creature trying playing with something when the noun is fixed in place:
	if the person asked is vast and a random chance of 1 in 2 succeeds, continue the action;
	say "[The person asked] cranes its head around, trying to see under and behind [the noun]." instead.
	
Report a smart hostile person trying playing with something when the noun is fixed in place:
	say "[The person asked] runs its claws around the edges of [the noun], as though seeking a way to take it apart." instead. 
	
Report a hostile creature trying playing with something when the noun is fixed in place:
	say "[The person asked] bangs its head against [the noun] repeatedly." instead.

Report a playful creature trying playing with something which is worn by the person asked: 
	say "[The person asked] adjusts the fit of [the noun]." instead.

Report a playful creature trying playing with the fedora when the person asked is wearing the fedora:
	say "[The person asked] tilts [the fedora] at a more rakish angle." instead.
	
Report a hostile stupid person trying playing with the fedora when the person asked is wearing the fedora:
	say "With a guttural gurgle, [the person asked] pulls [the fedora] down more tightly over its ears." instead.
	
Report the creature trying playing with the jacket when the jacket is worn by the person asked:
	if the person asked is playful, say "[The person asked] turns up the collar of the jacket, making itself like an unearthly gangster or hoodlum." instead;
	otherwise say "[The person asked] rolls up the sleeves of [the jacket]." instead. 

Report the creature trying playing with something edible: 
	say "[The person asked] prods [the noun] into interesting shapes." instead.
	
Report the playful creature trying playing with something edible:
	say "[The person asked] mimes wearing [the noun] as a hat, watching you slyly." instead.
 	
The inaction rule is listed after the check stage rule in the specific action-processing rules.

This is the inaction rule: 
	now the person asked is passive.

Report the fidgety creature trying entering something: 
	say "[The creature] [if the creature is timid]creeps[otherwise]hops[end if] into [the noun][if the player is in the noun] with you[end if][if the heart's desire is not the creature] in search of [the heart's desire][end if]." instead.
	
Report a slow negligible person trying entering something: 
	say "[The creature] hauls itself into [the noun][if the player is in the noun] with you[end if][if the heart's desire is not the creature] in search of [the heart's desire][end if]." instead.

Report the creature trying entering something:
	say "[The creature] climbs into [the noun]." instead.
	
Report the creature trying exiting:
	say "[The creature] gets out again." instead.
	
Report the creature trying going through a door (called the escape route):
	say "[The creature] slips out through [the escape route]." instead.
	
Report a timid person trying going through a door (called the escape route):
	say "Glancing at you apprehensively, [the creature] tiptoes out [the escape route]." instead.

Instead of the creature trying attacking a portable thing which is not carried by the person asked:
	try the person asked trying taking the noun.

Instead of the creature trying attacking something which is worn by the person asked:
	try the person asked trying taking off the noun. 

Disposing of is an action applying to one thing.

Before the creature trying disposing of something which is worn by the person asked:
	try the person asked trying taking off the noun instead.

Before the creature trying disposing of something which is not held by the person asked:
	if the noun is not in an openable container,
		try the person asked trying taking the noun instead;
	if the person asked is stupid, try the person asked trying taking the noun instead. 

Before the smart creature trying disposing of something when the noun is not in an openable container:
	if the person asked can see an openable container (called the tank), try the person asked trying inserting the noun into the tank instead.
	

Instead of the creature trying disposing of something which is not held by the person asked when the person asked is holding something stinky (called the other problem):
	try the person asked trying disposing of the other problem.
	
Instead of the creature trying inserting something into a closed openable container:
	try the person asked trying opening the second noun.
	
Instead of the creature trying inserting something which is not held by the person asked into something:
	try the person asked trying taking the noun. 

Carry out the creature trying disposing of something:
	if the noun is in an openable container (called the tank), try person asked trying closing the tank; 
	if the noun can be touched by the person asked, stop the action.

Carry out the creature trying opening something: now the noun is explored.

Instead of the creature trying opening something for the second turn:
	if the person asked is visible, say "[The person asked] looks exasperated.";
	now the person asked is passive. 
	
Report the creature trying opening something which contains the creature: 
	say "[The person asked] triumphantly opens [the noun] from the inside." instead.

Report the creature trying opening something which contains something:
	say "[The person asked] opens [the noun]";
	if the creature is in the noun, say " from within." instead;
	if the odor sensitivity of the person asked is strong, say "[if the noun contains a stinky thing], wrinkling its nose at the smell of [the list of stinky things which are in the noun][end if]." instead;
	otherwise say " and pokes curiously at [the list of things which are in the noun]." instead.

Report a hostile creature trying dropping something:
	say "[The person asked] flings aside [the noun]." instead.

Report a vast person trying dropping something:
	say "[The person asked] flings [the noun] at [the random fixed in place thing in the location]. No serious harm results." instead.
	
Report a fidgety hostile creature trying dropping something:
	if the noun outweighs strength, do nothing;
	otherwise say "[The person asked] throws [the noun] at you, but (fortunately) misjudges the velocity and angle." instead.
	
Report a fidgety hostile Earthlike creature trying dropping something when the creature can touch the player:
	say "[The person asked] flings [the noun] at you; it hits and bounces off." instead.

Report a fidgety hostile Earthlike creature trying dropping something heavy:
	say "[The person asked] flings [the noun] at you with unpleasant precision. That's going to leave a bruise in the morning." instead.
	
Instead of a starving creature trying exiting: try the creature trying crying instead.

Before a smart creature trying exiting when the creature is in a closed container (called the trap):
	try the creature trying opening the trap instead.

Before a creature trying opening an unopenable container which contains the creature for the first time:
	now the creature is passive;
	say "The creature tries to open [the noun] from the inside, and soon realizes it cannot be done. Its mouth opens in a screech of fury, or terror: you hear nothing." instead.

Before a creature trying opening an unopenable container which contains the creature for the first time:
	now the creature is passive;
	say "The creature pummels its fists against the interior of [the noun] in desperation." instead.
	
Tidying is an action applying to nothing.

Check the creature trying tidying:
	if the person asked can see an open openable container, continue the action;
	otherwise stop the action.

Carry out the creature trying tidying:
	if the person asked can see an open openable container (called the mess), try the person asked trying closing the mess.


Exploring is an action applying to nothing.

Carry out the creature trying exploring:
	now the person asked is passive;
	if the person asked can see a closed openable container (called target), try the person asked trying opening the target instead;
	if the person asked can see a fixed in place thing (called target), try the person asked trying looking under the target instead.
	

Sneaking it under is an action applying to two things.

Check the creature trying sneaking something under something:
	if the person asked is not carrying the noun, stop the action;
	if the second noun is not fixed in place, stop the action.
	
Carry out the creature trying sneaking something under something:
	now the noun is nowhere;
	now the second noun disguises the noun.
	
Report the creature trying sneaking something under something:
	say "[The person asked] sneakily hides [the noun] under [the second noun]."
	

Understand "hide [something] under [something]" as sneaking it under. Understand "put [something] under [something]" as sneaking it under. Understand "conceal [something] under [something]" as sneaking it under.

Check sneaking something under something:
	if the player is not carrying the noun
	begin;
		try the player trying taking the noun;
		if the player is not carrying the noun, stop the action;
	end if;
	if the second noun is a door, say "You can't hide things under [the second noun]." instead;
	if the second noun is not fixed in place, say "[The second noun] would not make much of a concealment." instead.
	
Carry out sneaking something under something:
	now the noun is nowhere;
	now the second noun disguises the noun.
	
Report sneaking something under something:
	say "You tuck [the noun] under [the second noun]."


Launching us is an action applying to nothing.

Before a hostile person trying launching us: act creepy instead.
	
To act creepy:
	if the person asked is visible, say "[The person asked] looks at you for a long time through bright eyes and then smiles very pleasantly.";
	now the person asked is passive;
	now the person asked is secretive. 
	
Before the creature trying playing with something which is carried by the player:
	say "[The creature] looks with fascination at [the noun], but cannot reach it." instead.
	
Before the creature trying playing with something which is part of something which is carried by the player:
	say "[The creature] looks at [the noun] but can't quite get at it." instead.

	 
Report a hostile creature trying taking off something:
	say "[The person asked] grumpily divests itself of [the noun]." instead.

Report a playful creature trying taking off something:
	say "[The person asked] flirtatiously strips off [the noun]." instead.

Report a fast creature trying taking off something:
	say "[The person asked] strips off [the noun] in a single fluid movement." instead.

Report the creature trying waiting:
	choose a random row in the Table of Creature Sloth;
	say "[reply entry][paragraph break]" instead.
	
Table of Creature Sloth
reply
"[The person asked] lies very still and follows you with its eyes."
"[The person asked] rolls over."
"[The person asked] rubs its eyes."
"[The person asked] slowly swivels its ears to follow your actions." 
"[if the person asked is weak][The person asked] is completely still[end if][if the person asked is not weak]The sides of [the person asked] slowly rise and fall as it breathes[end if]."
"[if the person asked is weak][The person asked] stares at you unnervingly[end if][if the person asked is not weak][The person asked] yawns[end if]."

Report the creature trying jumping:
	say "[The person asked] jumps[if the person asked is vast] implausibly high[end if][if the person asked is Earthlike] quite high[end if][if the person asked is Marslike], but looks surprised at how quickly it lands[end if][if the person asked is fractional], but not very far[end if][if the person asked is negligible], but only clears the floor by a few meager centimeters[end if]." instead.
	
Instead of the creature trying taking something when the noun outweighs strength and the noun is in a container (called receptacle):
	if the receptacle is available, try the person asked trying pushing the receptacle;
	otherwise continue the action.

Instead of the creature trying taking something when the noun outweighs strength and the noun is on a supporter (called surface):
	try the person asked trying pushing the noun.
	
Instead of the creature trying pushing something which is on a supporter (called surface):
	let the place be the holder of the surface;
	now the noun is in place;
	now the person asked is passive;
	if the person asked is visible, say "[The person asked] [forcefully] pushes off [the noun] onto [if the place is location]the floor[otherwise][the place][end if].";
	
Dumping out is an action applying to one thing.

Understand "empty [container]" or "dump out [container]" as dumping out. Understand "empty [something]" or "dump out [something]" as dumping out.

Check dumping out:
	if the noun is not a container, say "[The noun] cannot contain anything to start with." instead;
	if the number of things contained by the noun is 0, say "[The noun] does not contain anything." instead;
	if the player is not carrying the noun
	begin;
		try the player trying taking the noun;
		if the player is not carrying the noun, stop the action;
	end if.
	
Carry out dumping out:
	let place be the holder of the player;
	now every thing which is in the noun is in the place.
	
Report dumping out:
	say "You empty [the noun] out [if the player is in a room]onto the floor[otherwise]into [the holder of the player][end if]."


Check the creature trying dumping out:
	if the noun is not a container, stop the action;
	if the number of things contained by the noun is 0, stop the action;
	if the person asked does not carry the noun, stop the action.
	
Carry out the creature trying dumping out:
	let place be the holder of the person asked;
	now every thing which is in the noun is in the place.

Report the creature trying dumping out:
	say "[The person asked] empties [the noun] [if the person asked is in a room]onto the floor[otherwise]into [the holder of the person asked][end if]."

Instead of the creature trying dumping out when the player carries the creature:
	say "[The creature] empties [the noun]; [a list of things in the noun] ";
	if the number of things in the noun is 1, say "falls beside you.";
	otherwise say "rain around you.";
	now every thing which is in the noun is in the location.

Understand "push [something] over" or "knock [something] over" as pushing.

Instead of pushing a container:
	let the place be the holder of the noun;
	say "You knock over [the noun][if something is in the noun], dumping out [the list of things which are in the noun][end if]."; 
	now every thing which is in the noun is in the place.

Instead of the creature trying pushing a container:
	let the place be the holder of the noun;
	if the person asked is visible, say "[The person asked] knocks over [the noun][if something is in the noun], awkwardly spilling out [the list of things which are in the noun][end if].";
	now the person asked is passive;
	now every thing which is in the noun is in the place.
	
Instead of the creature trying taking something when the noun outweighs strength:
	if the noun is pointless, stop the action;
	now the noun is pointless;
	if the person asked is visible, say "[The person asked] tries to pick up [the noun], but without success."
	
Instead of a secretive starving Earthlike creature trying taking something which is not available:
	try the person asked trying attacking the player.

Instead of an Earthlike creature trying attacking the player when the person asked is not carrying a heavy thing:
	if the person asked can see an available heavy thing (called target), try the person asked trying taking the target.
	
Instead of an Earthlike creature trying attacking the player when the person asked carries a heavy thing (called the weapon):
	say "Starving, desperate, and tired of waiting for your cooperation, [the person asked] slugs you hard with [the weapon]. And what happens from there is all blackness...";
	end the story saying "You have died".



Section 3 - Every Turn Rules for Creature
 
	
After entering something in the presence of a contrary creature:
	if the creature cannot touch the player, continue the action;
	move the creature to the noun;
	now the creature is passive;
	say "You climb into [the noun]. [The creature], agitated, tries to get you out again, a process at which it is so unsuccessful that it winds up falling in with you."

After exiting in the presence of a contrary creature:
	now the creature is passive;
	if the creature is in location, say "You climb out. [The creature] tries to push you back, but without success.";
	otherwise say "You scramble out. [The creature] tries to pull you into [the holder of the creature] with it, but fails miserably."

[Every turn:
	if the number of things carried by the player is greater than 4
	begin;
		let target be the first thing held by the player;
		let next target be the next thing held after target;
		while next target is a thing
		begin; 
			let target be the next target;
			let next target be the next thing held after the next target;
		end while;
		silently try dropping the target;
		if the target is not carried by the player, say "Because you are carrying so many things, you lose your grip on [the target].";
	end if.]

Definition: a thing is inanimate if it is not a person.

To decide whether game has begun:
	if we are dead, no; 
	yes.
[
Every turn:
	if Test is happening, follow the Creature Behavior rules;
	change last location to location.
	]
	
The creature behavior rules is a rulebook.

The first creature behavior rule:
	abide by the creature death rule.
	
This is the creature death rule:
	if the creature is suffocating
	begin;
		increase the breath count of the creature by 1;
		if the breath count of the creature > 3
		begin;
			say "At this point [the creature] is overwhelmed by lack of whatever it breathes, and collapses.";
			end the story saying "Unfortunately, you are unable to revive the thing";
		end if;
	end if;
	if the creature is dying
	begin; 
			say "Too long without sustenance, [the creature] succumbs to a coma and death.";
			end the story saying "You have killed your Visitor.";
			rule succeeds; 
	end if.
	
A creature behavior rule (this is the poisoned creature rule):
	if the creature is poisoned
	begin;
		now the creature is passive;
		now the creature is slow;
		if the creature is visible, say "[The creature] does not move but simply looks glassy[if the creature is hungry] and hungry[end if][if the creature is starving]. Starving, even -- but too dulled to do anything about it[end if].";
		rule succeeds;
	end if.
		
A creature behavior rule (this is the drop heavy things rule):
	if the creature is active and the creature carries a tiring thing (called anvil)
	begin;
		say "[The creature] grimaces at the weight of [the anvil].[line break]";
		try the creature trying dropping the anvil;
	end if.

Definition: a thing is tiring if it outweighs strength.

A creature behavior rule (this is the placid held creature rule):
	if the player is carrying the creature
	begin;
		if the creature carries a delicious thing and the creature is hungry
		begin;
			try the creature trying dining;
		otherwise;
			if the creature is cold, say "[The creature] huddles against you for warmth.";
			otherwise say "[The creature] [if a random chance of 1 in 2 succeeds]squirms a little in your grip[otherwise]leans over to look at the floor[end if][if a random chance of 1 in 2 succeeds], but does nothing[end if].";
		end if;
		rule fails;
	end if.
	
A creature behavior rule (this is the inactivity while blinded rule):
	if the creature is blinded and the creature is active
	begin;
		if the creature is smart
		begin;
			if the creature can see a lit device (called the target)
			begin;
				if the target is fixed in place or the target is available,
					try the creature trying switching off the target;
				otherwise try the creature trying hiding oneself;
				if the creature is blinded and the creature is active
				begin;
					say "[The creature] [if a random chance of 1 in 2 succeeds]obviously does not appreciate the glare of the light[otherwise]huddles by itself, blinking[end if][if the creature is hungry]. It also looks to be getting hungry[end if].";
					now the creature is passive;
				end if;
			end if;
		otherwise;
			try the creature trying hiding oneself;
			if the player cannot see the creature, rule fails; 
			if the creature is passive, rule fails; 
			 if the creature is visible, say "[The creature] cowers [if the creature is not in the location]in [the holder of the creature][otherwise]in what shadow it can find[end if], sniveling.";
			rule fails;
		end if;
	end if.

A creature behavior rule (this is the food consumption rule):
	if the creature is active and the creature is hungry,
		try the creature trying dining. 	

A creature behavior rule (this is the inactivity while starving rule):
	if the creature is starving and creature is active
	begin;
		try the creature trying dining;
		if the creature is starving, try the creature trying crying;
	end if.	
	
A creature behavior rule (this is the slothful kids don't move rule):
	if the creature is slothful and the creature is active
	begin;
		try the creature trying waiting;
		now the creature is passive;
		rule succeeds;
	end if.

A creature behavior rule (this is the dress when cold rule):
	if the creature is active and the creature is cold,
		try the creature trying dressing oneself.
	
A creature behavior rule (this is the inactivity while cold rule):
	if the creature is active and the creature is cold,
		try the creature trying shivering.

A creature behavior rule (this is the timid creature hides rule):
	if the creature is active and the creature is timid and the creature can see the player
	begin;
		try the creature trying hiding oneself;  
	end if.
 
A creature behavior rule (this is the timid creature lurks rule):
	if the creature is active and the creature is timid and the creature is visible
	begin;
		say "[The creature] tries to put [the random fixed in place thing in the location] between itself and you.";
		now the creature is passive;
	end if.
	
A creature behavior rule (this is the contrary creature rule): 
	if the creature is active and the creature is contrary and the noun is a thing
	begin;
		if the noun is the creature
		begin;
			now the creature is passive; [because we will count glaring back at the player as its action for this turn]
		otherwise;
			if the creature is visible, say "[The creature] [if a random chance of 1 in 2 succeeds]watches your attention to[otherwise]observes your interest in[end if] [the noun][if a random chance of 1 in 2 succeeds], its eyes narrowing[otherwise], growling in the back of its throat[end if].[line break]";
			if opening, try the creature trying closing the noun;
			if closing, try the creature trying opening the noun;
			if the creature is active, try the creature trying taking the noun;
		end if;
	end if.
	
A creature behavior rule (this is the evil creature rule): 
	if the creature is secretive and the creature is active and the creature is smart, try the creature trying launching us.

A creature behavior rule (this is the acquisitive creature environment rule):
	if the creature is not visible, make no decision;
	if the creature is active and the creature is acquisitive
	begin; 
		if the creature is in a container and the location is rich
		begin; 
			say "[The creature] thoughtfully counts [the number of things in the location in words] things outside its home, as compared to [the number of things in the holder of the creature in words] where it is now, and scratches its head.";
			try the creature trying exiting;
		otherwise;
			if the creature is in the location and the creature can see a rich enterable container (called the target)
			begin;
				say "[The creature] thoughtfully counts [the number of things in the target in words] things in [the target], as compared to [the number of things in the location in words] out here, and scratches its head. ";
				try the creature trying entering the target;
			end if;
		end if;
	end if.
	
Definition: a container is rich:
	if it is closed and it is opaque, no;
	if the number of things in it is greater than the number of things in the holder of the creature, yes.

Definition:  a room is rich if the number of things in it is greater than the number of things in the holder of the creature.

A creature behavior rule (this is the creature escape rule): 
	if the player encloses the creature, make no decision;
	if the creature is active and the creature is in a container (called home):
		if the home contains something (called target) which is wanted by the creature:
			try the creature trying taking the target;
		otherwise:
			if the player carries the home:
				make no decision;
			if the creature was last fed too long ago:
				do nothing;
			otherwise:
				try the creature trying exiting;
			if the active creature is in a closed container (called the trap):
				if the creature is friendly and the creature is visible:
					say "[The creature] presses its mouth to the inner surface of [the trap] and makes fish faces at you.";
				otherwise if the creature is visible:
					say "[The creature] knocks on the inner wall of [the trap]."; 
				now the creature is passive;
	
A creature behavior rule:
	if the creature is hostile and the creature is active and the creature is smart, try the creature trying launching us.
	
A creature behavior rule (this is the hostile action rule):
	if the creature is active and the creature is hostile
	begin;
		if the creature can see an available papery thing (called the target)
		begin;
			if the creature can touch the target, try the creature trying attacking the target;
			otherwise try the creature trying showing temper;
		otherwise;
			if the creature can see a papery thing (called the target)
			begin;
				try the creature trying attacking the target;
			end if;
		end if;	
	end if.
	
A creature behavior rule (this is the smelly thing rule):
	if the creature is active and the creature is offended and the creature is stupid
	begin;
		let problem be a random stinky thing which can be seen by the creature;
		try the creature trying disposing of the problem;
	end if. 
	
A creature behavior rule (this is the good smelly thing rule):
	if the creature is active and the odor sensitivity of the creature is inverse
	begin;
		let target be a random stinky thing which can be seen by the creature;
		try the creature trying taking the target;
	end if. 
	
A creature behavior rule (this is the discard trash rule):
	if the creature is active and the creature is carrying something (called the target) which is not wanted by the creature
	begin;
		if the creature is acquisitive, make no decision;
		if the creature is vast and the target is unexplored and the target is not a container
		begin;
			try the creature trying attacking the target;
		otherwise;
			try the creature trying dropping the target;
		end if;
	end if.
	
A creature behavior rule (this is the greedy action rule):
	if the creature is active and the creature is acquisitive and the creature is not occupied
	begin;
		if the creature can see an available grabbable thing (called the target) which is not had by the creature
		begin; ;
			try the creature trying taking the target;
		end if;
	end if.
	
Definition: a thing is grabbable if it is not fixed in place and it is not scenery.

Definition: a creature is occupied if the number of things carried by the creature is the carrying capacity of the creature.

A creature behavior rule (this is the juggling stuff rule):
	if the creature is active and the creature is acquisitive and the creature is occupied
	begin;
		if the creature is visible and a random chance of 1 in 4 succeeds
		begin;
			now the creature is passive;
			say "[The creature] juggles [the list of things carried by the creature] in a colorful arc.";
		otherwise;
			if a random chance of 1 in 2 succeeds
			begin;
				now the creature is passive;
				if the creature is visible, say "[The creature] gleefully counts its [number of things carried by the creature in words] possession[s].";
			otherwise;
				try the creature trying playing with a random thing carried by the creature;
			end if;
		end if;
	end if.
	
A creature behavior rule (this is the bored creature looks around rule):
	if the creature is active and the creature is playful
	begin;
		if the creature can see an unexplored thing, make no decision;
		try the creature trying exploring;
	end if.

A creature behavior rule (this is the bored action rule):
	if the creature is not visible, make no decision;
	if the creature is not in location, make no decision;
	now every thing which is part of something is explored;
	if the creature is active
	begin;
		if the creature can see something available (called the target) which is not wanted by the creature
		begin;
			if the creature can touch an unexplored available thing (called the new target)
			begin;
				try the creature trying playing with the new target;
			otherwise;
				if the creature can touch an entertaining thing
				begin;
					try the creature trying playing with a random entertaining thing;
				end if;
			end if;
		end if;
	end if.

Definition: a thing is entertaining if creature can touch it and it is not wanted by the creature and it is available and it is not part of something.
	
The last every turn rule:
	now the heart's desire is the creature; 
	now every animal is active.
	
Section 4 - Creature Reactions to Giving and Other Actions

Before exiting when the player is in a closed container (called the trap):
	try opening the trap;
	if the player is in the trap, stop the action.

Instead of showing something to someone:
	try giving the noun to the second noun.
	
Understand the command "feed" as something new. Understand "feed [something] to [something]" as feeding it to.

Feeding it to is an action applying to two things.

Instead of feeding something to a lightning creature: say "[The second noun] very swiftly dodges your attempt to feed it." Instead of feeding something to a fast creature: say "[The second noun] quickly moves away before you can do this." Instead of feeding something to a moderate creature when the creature is hostile: say "[The second noun] watches you suspiciously and then turns its head aside."

Check feeding it to:
	if the player is not carrying the noun
	begin;
		if the player is wearing the noun, try taking off the noun;
		otherwise try taking the noun;
		if the player is not carrying the noun, stop the action;
	end if;
	if the player cannot touch the second noun, say "You cannot reach [the second noun]."

Carry out feeding it to:
	if the noun is delicious
	begin;
		move the noun to the second noun;
		try the second noun trying eating the noun;
	otherwise;
		say "[The second noun] spits out [the noun]." instead;
	end if.
	
Accepting is an action applying to one thing.

Before someone trying accepting something when the person asked is occupied:
	let N be the carrying capacity of the person asked;
	let N be N minus 1;
	if the number of things carried by the person asked is greater than N
	begin;
		try the person asked trying dropping a random thing carried by the person asked;
	end if. 

Carry out someone trying accepting something:
	move the noun to the person asked.
	
The block giving rule does nothing.

Check giving something to the creature (this is the polite refusal of unwanted objects rule): 
	if the second noun does not want the noun
	begin;
		try the second noun trying rejecting the noun instead;
		now the second noun is passive;
	end if.
	
Check giving something to the creature (this is the no touching rule):
	if the player cannot touch the second noun, say "[The second noun] cannot reach anything you might choose to give it at the moment." instead.

Carry out giving: 
	try the second noun trying accepting the noun.

Report giving something to the creature: 
	say "[The second noun] accepts [the noun][if creature is friendly] gratefully[end if][if creature is curious], poking it and turning it around and around for a moment[end if][if the creature is hostile], all but snatching it from you[end if]." instead.

Report giving something to the creature when the moon of the creature is Europa:
	say "You offer [the noun] in just such a way that [the creature] is able to get it with its flipper."
	
Report giving something stinky to the creature when the odor sensitivity of the second noun is strong:
	now the second noun is passive;
	say "[The second noun] takes [the noun], at arm's length and wrinkling its nose." instead.
	
Report giving something stinky to the creature when the odor sensitivity of the second noun is weak:
	now the second noun is passive;
	say "[The second noun] takes [the noun], apparently unresponsive to its pungency." instead.
	
Report giving something stinky to the creature when the odor sensitivity of the second noun is inverse:
	now the second noun is passive;
	say "[The second noun] takes [the noun], smelling deeply and with obvious pleasure at the stinkiness." instead.
	
Report giving the fedora to a smart creature:
	say "You hand over [the fedora] to [the creature], who takes by the brim and twirls it twice on the end of its claw." instead.
	 

Before giving something worn by the player to the creature:
	try taking off the noun;
	if the player wears the noun, say "You are still wearing [the noun]." instead.

Before the creature trying taking off something when the speed of the creature is slow:
	if a random chance of 1 in 3 succeeds
	begin;
		now the creature is passive;
		if the creature is visible, say "[The creature] fumbles helplessly at [the noun], trying to remove it." instead;
	end if. 

Report the creature trying taking off something:
	say "[The person asked] removes [the noun] it was wearing." instead.

Before doing something other than examining or looking or taking inventory or waiting when the creature is starving:
	if the creature is carrying something delicious, continue the action;
	if the noun is a thing and the player carries the noun, continue the action;
	if the noun is a thing and the player wears the noun, continue the action;
	if the creature is stupid, continue the action;
	if the creature can see the player and the player is carrying something delicious (called the treat),
		say "In its eagerness for [the treat], [the creature] [if the creature is hostile]circles you, growling, so that you can't get much done[otherwise]clings so desperately to your trouser leg that you can't do much of anything[end if]." instead.
		 	
Every turn: if the player is poisoned, end the story saying "You black out."


Instead of putting a wearable thing on the creature: try dressing the creature in the noun.


Understand "collar [something]" as a mistake ("You haven't got a collar.").

Dressing it in is an action applying to two things.

Check dressing it in: 
	if the second noun is not wearable, say "[The noun] cannot possibly wear [the second noun]." instead;
	if the player is not carrying the second noun
	begin;
		try taking the second noun;
		if the player is not carrying the second noun, stop the action;
	end if;

Carry out dressing it in:
	now the noun wears the second noun.
	
Report dressing it in:
	if the noun is hostile, say "Your victim watches you warily and with not a little distrust, but its limbs are slow and it is unable to put up much fight. ";
	say "You put [the second noun] on [the noun]. Very fetching."
	
After dressing a hungry meaty creature in something: 
	say "[The noun] suffers you to get close enough with [the second noun]; then, for your pains, bites you deeply in the forearm.";
	end the story saying "You spend most of the rest of the evening with a doctor".
	
Instead of dressing a hungry meaty creature in something for the first time:
	say "You get near [the noun] with [the second noun], but it grins very largely and shows you all its teeth, a sight of such menace that you draw back."
	
Understand "dress [something] in [something]" as dressing it in. Understand the commands "clothe" and "attire" as "dress".

Instead of dressing a lightning creature in something: 
	if the creature is blinded
	begin;
		say "At your approach, [the creature] squinches up its eyes.";
		continue the action;
	end if;
	say "[The creature] dodges with lightning speed."

Instead of dressing a fast creature in something: 
	if the creature is meaty, continue the action;
	if the creature is blinded
	begin;
		say "At your approach, [the creature] squinches up its eyes.";
		continue the action;
	end if;
	say "[The creature] moves away too fast for you to succeed."

	
Chapter 3 - The Player's Clothing and Inventory

The salami is edible and stinky and fleshy. Understand "bow" or "ribbon" or "sausage" or "meat" as the salami. The description of the salami is "Rich in garlic and meatiness." The salami is in the Set-like Hallway. "A salami, decorated with a bright red bow, is propped against the wall."

The player wears a fedora, a jacket, a shirt, an undershirt, a pair of slacks, a pair of undershorts, a pair of socks, and a pair of shoes. The socks are stinky. Understand "shorts" as the undershorts. Understand "pants" or "trousers" as the slacks. Understand "hat" as the fedora. The fedora, the jacket,  and the shoes are leathery. The description of the fedora is "It is your favorite hat." The description of the jacket is "The same one you wore to work, looking more and more creased." The description of the shirt is "There's probably a streak or two on the back -- the laundry isn't very competent. But it doesn't show when hidden under your jacket." The description of the slacks is "Matching to the jacket, but you are beginning to think the whole set will have to be discarded later." The description of the shoes is "A good pair, though there are the beginnings of a hole in the left sole."

Instead of examining something which underlies something (called the covering): say "It is hard to see [the noun] under [the covering]." 
Report taking off undershorts for the first time:
	say "You strip off your shorts, feeling distinctly self-conscious." instead.

Instead of taking inventory:
	say "You're carrying [list of things carried by the player][if the player wears something]. You are wearing [list of uppermost things worn by the player][end if]."

Instead of examining the player:
	if the player wears the jacket and the player wears the slacks and the player wears the fedora, say "You look sharp in your suit and fedora." instead;
	if the number of things worn by the player is 0, say "You are down to your birthday suit." instead;
	if the number of things worn by the player is 1
	begin;
		if the player wears the fedora, say "Aside from your stylish hat, you are nude." instead;
		if the player wears the undershorts, say "At least you still have your undershorts." instead;
		if the player wears the undershirt, say "You're down to only your undershirt, and it is not as long as it could be." instead;
	end if;
	if the player is indecent, say "You're not quite decently clad, put it that way." instead; 
	say "You are feeling a little wilted in the heat."; 
	
Definition: a person is nude if the number of things worn by it is 0. Definition: a person is indecent if it is not wearing the slacks.

Definition: a thing is uppermost if it is not under something.

Underlying relates one thing to various things. The verb to underlie (it underlies, they underlie, it is underlying, it is underlaid) implies the underlying relation. The verb to be under implies the underlying relation.

The shirt underlies the jacket. The pair of socks underlies the pair of shoes. The undershorts underlie the slacks. The undershirt underlies the shirt.

Check taking off:
	if the noun underlies something (called the impediment) which is worn by the player, say "[The impediment] is in the way." instead.

Carry out taking off:
	now the noun is not underlaid by anything.
	
Report taking off something:
	say "You take off [the noun], and are now wearing [list of uppermost things worn by the player]." instead.

Overlying relates one thing to various things. The verb to overlie (it overlies, they overlie, it is overlying) implies the overlying relation. 

The jacket overlies the shirt. The shoes overlie the socks. The slacks overlie the undershorts. The shirt overlies the undershirt.

Before wearing something when something (called the impediment) which overlies the noun is worn by the player: 
	try taking off the impediment;
	if the player is wearing the impediment, stop the action.
	
Before taking off something which underlies something (called the impediment) which is worn by the player: 
	try taking off the impediment;
	if the impediment is worn by the player, stop the action.
	
Carry out wearing:
	if the noun overlies something (called the hidden item) worn by the player, now the hidden item underlies the noun.

Instead of looking under something which is worn by the player:
	if something (called the underwear) underlies the noun, say "You peek at [the underwear]. Yup, still there.";
	otherwise say "Just you in there.".
	 	
Color is a kind of value. The colors are red, orange, yellow,  green, cyan, blue, indigo, purple,  tan, black, white, and grey. The creature has a color.

The creature is an animal. The description is "It is not the same species as whatever accosted you in the park (but then, there seem to be many of these critters). It looks somewhat like a chimpanzee [if the carrying capacity of the creature is not 2] -- with [carrying capacity of the creature in words] arm[s]. You frown, and count again: yes, [carrying capacity of the creature in words]. And [otherwise]. Only with [end if]a [if the odor sensitivity of the creature is strong or the odor sensitivity of the creature is inverse]larger, more sensitive[otherwise]smaller[end if] nose, and ears that come to points, and [tongue of creature]... [paragraph break][if the creature has something]It carries [list of things carried by the creature]. It wears [list of things worn by the creature].[otherwise]Odd, really.[end if]" 

Instead of examining a slothful creature: 
	say "Not the same species as whatever accosted you in the park. It looks a bit like pictures you've seen of sloths: [carrying capacity of the creature in words] long, low-slung arm[s], broad shoulders. But it looks considerably weaker than an Earth sloth, barely muscled at all. Its nose is [if the odor sensitivity of the creature is strong or the odor sensitivity of the creature is inverse]large and sensitive[otherwise]nearly non-existent[end if], and it has no ears.

[if the creature has something]It carries [list of things carried by the creature]. It wears [list of things worn by the creature].[otherwise]Odd, really.[end if]"

Instead of examining a fast creature:
	if the moon of the creature is Europa,
		say "This one has certain affinities with a penguin: it looks as though it would move better on ice than on ordinary land, and instead of ordinary arms it has a single flipper-like appendage. 

[if the creature has something]It carries [list of things carried by the creature] awkwardly clasped to its body. It wears [list of things worn by the creature].[otherwise]Odd, really.[end if]";
	otherwise
		say "If you'd seen this one in the park, you might have confused it with a cat rather than a dog, though it is capable of moving only on its legs. It is lithe and feline, with a [if the odor sensitivity of the creature is strong or the odor sensitivity of the creature is inverse]large whiskered[otherwise]nearly non-existent[end if] nose. It also has [carrying capacity of the creature in words] arm[s].
	
[if the creature has something]It carries [list of things carried by the creature]. It wears [list of things worn by the creature].[otherwise]Odd, really.[end if]"

The handbag is a leathery openable open container. The handbag is wearable.  Understand "purse" or "bag" or "leather" or "tote" as the handbag. The description of the handbag is "A shiny leather tote bag, the kind that can accommodate anything; from the looks of it, it's either not the girl's best bag, or she is not in the best circumstances, because it has gotten sadly worn."

In the handbag are a wallet, a lipstick, a hairbrush, a key, and a letter. The letter is papery. The description of the letter is "A folded note from the employment office." The description of the lipstick is "You do not recognize the brand. But then, you probably wouldn't." The description of the key is "An ordinary latchkey." The description of the hairbrush is "A few strands of honey-brown hair are still caught in the bristles." The description of the wallet is "It looks slender, as girls' wallets usually do, in your experience."

Understand the color property as describing the creature. 

The creature has a moon. A person has a speed. A person has an intelligence.  A person has a food. The metabolism of the creature is 50.

Understand "Visitor" or "animal" or "alien" or "arms" or "arm" or "paw" or "paws" or "nose" or "tongue" or "teeth" or "flipper" or "fin" or "monkey" or "dog" or "penguin" or "critter" as the creature.  The creature has some text called tongue. The tongue of the creature is "raspy tongue". The creature has some text called claw. The claw of the creature is "claw".

A woman is usually fast. A woman is usually smart. A woman is usually earthly. A woman is usually Earthlike.

Chapter 4 - In the Park
[This sequence explores some of the possibilities of a character whom you can command.]

Section 1 - Creature behavior in the park

[Here we use a quite simplified set of behavior for the park proper]

Understand "roll over" or "roll" or "roll around" as a mistake ("If you even look like you are going to lean down, the animal panics and grips more firmly.") when the player is in the Underpass.

Rule for printing the name of the creature while getting handbag is happening:
	say "creature". [Because it's more specific than the other rule for printing..., this will override the usual rule that randomizes the creature's name sometimes as 'visitor'.]

Every turn during Getting Handbag:
	if the creature encloses something delicious (called the snack)
	begin;
		try the creature trying eating the snack;
	otherwise;
		if the creature carries something (called the refuse) which is not delicious
		begin;
			now the refuse is rejected;
			try the creature trying dropping the refuse; 
		end if;
	end if.
	
Rule for writing a paragraph about the fedora when Getting Handbag is happening:
	say "Your [fedora] lies on the ground[if the newspaper is unmentioned and the newspaper is in the Underpass] next to [a newspaper][end if], where it was knocked off in the scuffle."

Report the creature trying dropping something when Getting Handbag is happening: if the girl is visible, say "[The creature] chucks [the noun] back at [the girl][if at least two things are rejected], who mutters something unladylike[otherwise], who blinks in irritation when struck[end if]." instead.
	
Report the creature trying eating something when Getting Handbag is happening: if the girl is visible, say "'[The creature] has just eaten [the noun],' the girl reports to you. 'Maybe it will be happier now.'" instead.

Report the creature trying eating the handbag when Getting Handbag is happening:
	if the girl is visible, say "There is an ominous ripping sound next to your ear, followed by chewing. 'What's going on?' you demand.
	
The girl looks disgusted. 'There goes my handbag,' she says. 'My mother never liked it anyway. I just hope it doesn't want the matching shoes, because I don't have them.'" instead.

Report the creature trying eating the fedora when Getting Handbag is happening:
	if the girl is visible, say "'I'm afraid it's eaten your hat,' she says. 'It stuffed the whole thing in at once.'

'You think this is funny.'

She giggles a little hysterically, then claps a hand over her mouth. 'Sorry! I don't know what's gotten into me.'" instead.

Report the creature trying eating the letter when getting handbag is happening:
	if the girl is visible, say "'Lovely,' says the girl. 'It's eating my letter from the employment office.'
	
'Did it say anything important?'

'Only if I ever want to escape my current boss.'" instead.

Report the creature trying eating the heels when Getting Handbag is happening:
	if the girl is visible, say "The girl watches, frowning more and more deeply, while the creature makes disgusting eating noises behind your head.
	
'It's eating your shoes, I presume?' you gasp.

'My best ones,' she replies, in a martyred voice." instead.

A thing can be loved or rejected. A thing is usually loved.

Check the girl trying giving a rejected thing to the creature (this is the no repeat refuse rule): stop the action.

Central Park Underpass is a room. "The path you were on takes a dip and passes under the road above. At this time of the evening, it's dark down here, even though the rest of the park is still in the pale, lucid stage of twilight[if the Underpass is unvisited]. 

As you step under the bridge, the girl shrieks. 

Before you have time to work out what this is about, something warm and strong drops on your head and shoulders. The animal. Its legs grip you firmly, pinning you so that you cannot move easily; its arms are around your throat[end if]."

Rule for writing a paragraph about the girl:
	say "[The girl] hovers nervously near [a random fixed in place thing in the location][if the Underpass is unvisited]. 'Shoo!' she says. 'Scat! Be gone!'
	
The grip around your throat does not slacken[end if]."

Before going nowhere from Central Park Underpass:
	say "You try walking, but the creature squeezes your throat convulsively, so that you think you will strangle. Spots appear in your eyes. You stop, and the pressure eases.
	
'Okay,' you whisper hoarsely. 'Not going anywhere, then.'" instead.

The girl is a woman in Central Park Underpass. The description of the girl is "You glance at the girl again: still pretty, still faintly irritating[if the girl carries something]. She is carrying [a list of things carried by the girl][end if]." The girl is active.

[* Here we introduce a different object from the one which will represent Esther most of the rest of the time, because she behaves quite differently from Esther in the rest of the game. It would be possible to use the same object, but the code would become more cumbersome.] 

Instead of examining the creature when Getting Handbag is happening:
	say "You cannot see it at all, of course, since it's on your back and shoulders. Nor are there any handy surfaces in which to observe yourself. You will just have to rely on the girl to tell you what is going on."

 The girl wears a dress. Understand "frock" or "skirt" or "gown" or "attire" as the dress. She carries a pair of heels. The heels are wearable. The description of the heels is "Sharp-heeled and sharp-toed, either an instrument of torture or a clever weapon." Understand "shoes" as the heels. The heels are ambiguously plural. The description of the dress is "Without a good eye for women's clothes, you can mostly tell that it is a good cut and material but somewhat past its prime, as though she used to have much more money than she does just at the moment."  The description of the girl's hair is "Ruffled and tossed, with a strand or two that insist on curling above her eyes." The description of the girl's eyes is "It's hard to be sure of their color when it's so dim here. They might be blue, or possibly grey, or maybe light green." The description of the girl's nose is "It is if possible even more pert than when she first addressed you."

Strangulation is a scene. Strangulation begins when Getting handbag is happening and the creature is starving. [* This scene, unlike most others in the game, can repeat as necessary.] 

Strangulation ends when everything is safe.

To decide whether everything is safe:
	if the creature is not starving, yes;
	if Getting handbag is not happening, yes;
	no.

When strangulation ends: say "The desperate grip on your throat slackens somewhat."; now strangulation counter is 0.

Every turn during Strangulation:
	if the creature is not starving, rule succeeds;
	increase strangulation counter by 1;
	if strangulation counter is greater than 2
	begin;
		say "You pass out from lack of air.";
		end the story saying "You have died";
	otherwise;
		choose row strangulation counter in the Table of Strangling;
		say "[stage entry][paragraph break]";
	end if.
	
Strangulation counter is a number that varies.

Table of Strangling
stage
"The squeeze on your throat is beginning to make you feel dizzy."
"Spots are dancing thickly in front of your eyes. You're not going to be able to take this much longer."

Instead of dropping the creature during Getting Handbag:
	say "You're not exactly holding it."

Section 2 - Persuasion and obedience

Check the girl trying taking off the dress (this is the can't take off dress rule): if the person asked wears the noun, stop the action.

Check the girl trying taking something worn by the player (this is the can't take your clothes rule): stop the action.

A persuasion rule for asking Esther to try doing something: say "She gives you a mildly exasperated look, as though to say that she does not take instructions merely because they are issued by men."; rule fails.

A persuasion rule for asking the girl to try doing something: persuasion succeeds.

Instead of asking someone to try kissing the player: try kissing the person asked.

Unsuccessful attempt by girl trying doing something:
	repeat through table of Esther Retorts
	begin;
		if the reason the action failed is the cause entry
		begin;
			say "[response entry][paragraph break]";
			rule succeeds;
		end if;
	end repeat;
	say "'[if a random chance of 1 in 2 succeeds]Nope[otherwise]No[end if], [if a random chance of 1 in 2 succeeds]I don't think that's going to work[otherwise]that's not possible[end if],' the girl says."

Report the girl trying taking inventory:
	if the number of things carried by the girl is 0
	begin;
		say "She spreads her hands: not carrying a thing." instead;
	otherwise;
		if the number of things carried by the girl is 1, say "'Just this,' she says, indicating [the list of things carried by the girl]." instead;
		otherwise say "She holds up [the list of things carried by the girl] so you can see." instead;
	end if.

Contact relates a thing (called X) to a thing (called Y) when X is part of Y or Y is part of X. The verb to be joined to implies the contact relation.

Table of Esther Retorts
cause	response
can't take yourself rule	"'I think I'd need the power of levitation in order to do that,' the girl says."
can't take other people rule	"'I don't know what manners they teach where you come from, but back in Ohio it was thought impolite to pick people up without their permission,' the girl remarks."
can't take component parts rule	"'[The noun] [are] pretty well attached to [a random thing which is joined to the noun],' the girl remarks."
can't take people's possessions rule	"'Just snatching it from [a random person who holds the noun]? That doesn't seem polite.'"
can't take what you're inside rule	"'From inside?' the girl demands."
can't take what's already taken rule	"[already done]"
can't take scenery rule	"'I don't think I have quite the lifting power,' the girl says. 'Though I'd enjoy watching you try.'"
can't take what's fixed in place rule	"'I don't think I have quite the lifting power,' the girl says. 'Though I'd enjoy watching you try.'"
can't exceed carrying capacity rule	"She holds up her hands. 'I'm already full up, here.'"
can't insert into closed containers rule	"[physical impossibility]"
can't go that way rule	"[physical impossibility]"
can't go through closed doors rule	"[physical impossibility]"
can't enter closed containers rule	"[physical impossibility]"
can't exit closed containers rule	"[physical impossibility]"
can't drop yourself rule	"[physical impossibility]"
can't drop what's already dropped rule	"[already done]"
can't drop what's not held rule	"'[The noun] [are] already not in my possession,' replies the girl."
can't drop clothes being worn rule	"[salacious retort]"
can't take your clothes rule	"[salacious retort]"
can't take off dress rule	"[salacious retort]"
can't put something on itself rule	"[physical impossibility]"
[can't put onto something being carried rule	"'I don't quite see how,' she says."]
can't put onto what's not a supporter rule	"'That's more of a balancing act than I'm up for, I'm afraid,' she says."
can't put clothes being worn rule	"[salacious retort]"
can't insert clothes being worn rule	"[salacious retort]"
can't wear what's not clothing rule	"'They say men are oblivious to fashions, but you exceed the normal, don't you?'"
can't wear what's already worn rule	"[already done]"
can't eat unless edible rule	"'Unlike some critters I could mention, I do not have a cast iron stomach,' she says."
can't eat clothing without removing it first rule	"[salacious retort]"
can't take off what's not worn rule	"[already done]"
can't close what's already closed rule	"[already done]"
can't open what's already open rule	"[already done]"
can't switch off what's already off rule	"[already done]"
can't switch on what's already on rule	"[already done]"
can't unlock what's already unlocked rule	"[already done]"
can't lock what's already locked rule	"[already done]"
no people lifting rule	"'A human pyramid doesn't seem like the solution to our problems,' she observes."
no repeat refuse rule		"'Oh, I think not,' she says. 'I don't feel like having it throw [the noun] at my head again.'"

Before asking the girl to try going nowhere:
	say "'I'm not leaving you here by yourself,' she says. 'It could kill you.'" instead.
	
Rule for supplying a missing noun while going: 
	now noun is outside.
	
The block vaguely going rule does nothing.

To say already done:
	repeat through Table of Esther's Bored Remarks
	begin;
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	end repeat;
	say "'Already done.'"

Table of Esther's Bored Remarks
response
"'That's already taken care of,' she says."
"'I don't think that's necessary, under the circumstances.'"
"'We don't need to do that.'"
"It's done.'"

To say salacious retort:
	repeat through Table of Esther's Flirtatious Remarks
	begin;
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	end repeat;
	say "She pretends not to hear."

Table of Esther's Flirtatious Remarks
response
"She looks at you sharply. 'If that was supposed to be cute, I warn you, I don't have much patience.'"
"She sniffs."


To say physical impossibility:
	repeat through Table of Esther's Frustrated Denials
	begin;
		say "[response entry]";
		blank out the whole row;
		rule succeeds;
	end repeat;
	say "The girl rolls her eyes."

Table of Esther's Frustrated Denials
response
"'Is the lack of oxygen going to your head?' she asks, bewildered by this impossible instruction."
 "'I know, you're into Eastern philosophy. Cut an Ohio girl a break, huh?'"
"The girl taps her foot."
"She purses her lips. 'I'm glad to help if I can, but we're going to have to stick to the realm of the remotely logical.'"

The block giving rule does nothing. The block showing rule does nothing. The report smelling rule does nothing. The report listening rule does nothing.

Carry out listening to something:
	do nothing.

Report listening to something: say "Your attention bears no interesting result."

Report listening to a room: say "There's no one thing that sounds notable here." instead.

Carry out smelling something:
	do nothing.

Report smelling something:  say "Your attention bears no interesting result."

Report smelling a room: if a stinky thing is in the location, say "You catch a whiff of [the list of stinky things in the location]." instead; otherwise say "Nothing stands out."

Report someone trying listening to something: say "[The person asked] concentrates, listening."

Report someone trying smelling something: say "[The person asked] sniffs at [the noun]."

Instead of asking someone for something: try asking the noun to try giving the second noun to the player.

Carry out showing something to someone: say "You reveal [the noun] to [the second noun]."

Carry out the girl trying showing something to someone:
	if the second noun is the player
	begin;
		if the noun is fixed in place
		begin;
			say "The girl poses, model-like, next to [the noun], but this naturally doesn't tell you much more than you knew before.";
		otherwise;
			say "The girl shows you [the noun]. [run paragraph on]";
			try examining the noun;
		end if;
	otherwise;
		say "The girl reveals [the noun] to [the second noun].";
	end if.

Instead of asking someone to try saying yes: try saying yes. Instead of asking someone to try saying no: try saying no. Instead of asking someone to try saying sorry, try saying sorry. Instead of asking someone to try swearing obscenely, try swearing obscenely. Instead of asking someone to try swearing mildly, try swearing mildly.
 
Singing is useless action. Burning something is useless action.  Waking up is useless action. Thinking is useless action.  Cutting is useless action. Jumping is useless action. Tying something to something is useless action. Drinking something is useless action.  Swinging is useless action. Rubbing is useless action. Setting something to something is useless action. Waving hands is useless action. Buying is useless action. Climbing is useless action. Sleeping is useless action. Kissing is useless action. [Throwing something at something is useless action.] Asking something about something is useless action. Telling something about something is useless action. Answering something that something is useless action. Waking something is useless action. Orienting something toward something is useless action. 

Instead of asking girl to try useless action:
	say "The girl frowns. 'I don't see how that would help in the current situation.'".
	
Section 3 - Reports for the girl

Report the girl trying giving something to the creature:
	if maximum action stack depth is greater than 0, say " reaches up";
	otherwise say "Gingerly, the girl reaches up";
	say " to hand ";
	if the maximum action stack depth is greater than 0, say "it";
	otherwise say "[the noun]";
	say " to the visitor. You watch the transaction as well as you can, but since you can barely turn your head, you don't get much of a view." instead.


Report someone trying taking something when the action stack depth is greater than 0:
	say "[The person asked]";
	decrease the action stack depth by 1;
	say " picks up [the noun][continue]"; 
	stop the action.

Report the girl trying wearing the heels:
	say "She slips the heels back on, adding a couple of inches to her already-considerable height." instead.

Report the girl trying searching something:
	if the maximum action stack depth is greater than 0
	begin;
		say "[The person asked] looks inside. ";
	end if;
	if the noun contains something, say "'I see [a list of things in the noun] here,' she says. 'If that's any help.'" instead;
	otherwise say "'Empty,' she reports tersely." instead.
	
Report the girl trying touching the creature:
	if the creature is hostile, say "The girl reaches up to touch the creature, then jumps back when it growls. 'I don't think it's housebroken.'" instead;
	otherwise say "The girl tries petting the creature, but this does not seem to calm it." instead.
	
Report the girl trying indicating something:
	say "'It doesn't seem to be paying attention when I point at things.'"
	
Report the girl trying waving at something:
	if the noun is the creature, say "'Hi!' she says, waving gamely at the creature. 'I don't think it speaks our language,' she concludes after a moment. 'It doesn't wave back.'";
	otherwise say "'That isn't going to make things any better.'"

Report the girl trying examining the player:
	say "'You do look a bit worse for wear,' she admits." instead.
	
Report the girl trying examining the girl:
	say "'You should see yourself,' she replies dryly." instead.
	
Report the girl trying examining the handbag:
	if maximum action stack depth is greater than 0, say "[The person asked] squints at [the noun]. ";
	say "'It's your garden-variety tote,' she says. 'I don't think anything has happened to it since it left my possession.'" instead.

Report the girl trying examining the creature:
	say "'It's... [the color of the creature],' she says. 'And it doesn't look like anything I've seen. I have the sense it's hungry. It keeps making biting faces at me.'" instead.
	
Report the girl trying taking the hot dog: [* The 'action stack depth' allows for actions that can happen implicitly to be stacked together into a single sentence.]
	if the maximum action stack depth is greater than 0, say "[The person asked] takes";
	otherwise say "The girl picks up";
	if the action stack depth is greater than 0
	begin;
		say "[The person asked]";
		decrease the action stack depth by 1;
		say " picks up the hot dog unenthusiastically[continue]"; 
		stop the action;
	otherwise;
		say " [the hot dog] unenthusiastically. 'I hope you have a point here of some sort.'" instead;
	end if.
	
Instead of girl trying taking the creature for the first time:
	say "[The person asked] tries to prise off the grip of the thing, but the more she pulls on one arm, the more tightly it grips your throat with another, so that eventually she is forced to stop so that you don't get strangled."
	
Instead of the girl trying taking the creature more than once:
	do nothing.
	
Instead of the girl trying attacking the creature:
	now the girl is passive;
	say "The girl pummels [the creature][if the girl carries the heels] with her shoes[end if] in the attempt to dislodge it.
	
It becomes more agitated[if the creature carries something], and tries hitting you with [a random thing carried by the creature][otherwise], squeezing your windpipe to the point of pain[end if]. 'Maybe that isn't a good idea,' you squeak."
	
Instead of asking the girl to try attacking the player:
	now the girl is passive;
	say "'I've heard of guys that are into that,' she says. 'Never met one before, though.'

Right. Well, it probably wouldn't have helped anyway."

Carry out the girl trying attacking something:
	do nothing.
	
Report the girl trying attacking something:
	say "The girl strikes [the noun], but to no effect."
	
Check the girl trying taking something (this is the no people lifting rule):
	if the noun is the player, stop the action.
	 
The trash can is in the Underpass. The trash can contains a half-eaten hot dog and a crumpled pamphlet. Understand "trashcan" as the trash can. The hot dog is edible. The pamphlet is papery. The trash can is fixed in place. Understand "food" as the hot dog. The trash can is openable and closed and transparent. The description of the pamphlet is "A Civil Defense pamphlet entitled [italic type]Atomic Blast Creates Fire[roman type]." Understand "civil defense" or "defense" or "atomic blast creates fire" as the pamphlet.

The trampled newspaper is a papery thing. It is in the Underpass. The description of the newspaper is "The 'Weather throughout the Nation' page, with a map of cold fronts across America. Unlikely that anyone will be needing this soon." Understand "weather section" or "paper" or "page" as the newspaper.

Report the girl trying examining the pamphlet for the first time:
	say "'It's a Civil Defense pamphlet called [italic type]Atomic Blast Creates Fire[roman type],' she says, flipping through it. 'Good, Clean, Housekeeping Is Civil Defense Housekeeping,' she reads, in a radio-announcer voice. 'My mother sent me one of these.'" instead.
	
Report the girl trying examining the pamphlet for the first time:
	say "'It's just an ordinary Civil Defense pamphlet. What to do when the bomb hits, that sort of thing.'"
	
A thing can be consumed or unconsumed. A thing is usually unconsumed. Carry out the creature trying eating something: now the noun is consumed.

Satiety is a scene. Satiety begins when Getting handbag is happening and at least three things are consumed. When Satiety begins: now the creature is nowhere; say "At last the creature's grip on you slackens, and it relaxes and slides to the ground, almost immediately asleep.

'How bizarre,' says the girl, approaching it and reaching out as though she wants to touch it.

'Don't wake it,' you say, standing over it. 'Go call for animal control or the police. I'll make sure it doesn't go anywhere. Or try to, anyway.'";
	make scene break.
	
Satiety ends when the time since Satiety began is 1 minute.

Instead of doing something when the location is the Underpass:
	if looking or examining, continue the action;
	if dropping, continue the action;
	if asking someone to try doing something, continue the action;
	if asking someone about something or telling someone about something, continue the action;
	if asking someone about specified object something, continue the action;
	if asking someone for help, continue the action;
	if asking someone for something, continue the action;
	if asking someone for vague help, continue the action;
	if answering a person that something, continue the action;
	if waiting, continue the action;
	say "[if a random chance of 1 in 2 succeeds]You try, but the more you struggle, the tighter the creature holds[otherwise]Your arms are pinned by the creature on your back and shoulders, which prevents you from being much use[end if]."
	
Understand "talk to [someone]" as a mistake ("You can ASK someone ABOUT something, ASK someone FOR something, or ASK someone TO DO something.").

Understand "breathe" or "inhale" or "exhale" as a mistake ("You are still able to get some breath, yes.").

Instead of asking someone for something, try asking the noun to try giving the second noun to the player.

Instead of waiting in the presence of the creature when Getting handbag is happening:
 	say "You try holding very still, the way snake victims are supposed to. Perhaps your tormentor will think you have died and lose interest in twisting your head off, which seems to be its current obsession."	
	
Before taking inventory when Getting handbag is happening:
	say "You can hardly go through your pockets while pinned like this, though in fact you doubt you have anything useful anyway." instead.

A person has a table-name called conversation. The conversation of the girl is the Table of Girl Conversation.

Instead of asking someone about something:
	let the source be the conversation of the noun;
	if topic understood is a topic listed in source
	begin;
		if there is a turn stamp entry
		begin;
			say "[The noun] has already told you [summary entry].";
		otherwise;
			now turn stamp entry is the turn count;
			say "[reply entry][paragraph break]";
		end if;
	otherwise;
		say "[The noun] stares at you blankly.";
	end if. 

Definition: a person is other if it is not the player.

Understand "ask [someone] about [something]" as asking it about specified object. Understand "tell [someone] about [something]" as asking it about specified object. Asking it about specified object is an action applying to two visible things. Carry out asking it about specified object: say "[The noun] just shrug[s]." Asking something about specified object something is useless action. 

Instead of asking the girl about specified object something: try the girl trying examining the second noun.

Understand "recap" or "recall" or "review" as recalling conversations. 

Recalling conversations is an action applying to nothing. Recalling conversations is useless action. [* When we define any new action that we don't want to allow the character to do, we need to set it accordingly (because our persuasion rules are so open-ended).]
 
Carry out recalling conversations:
	repeat with speaker running through other people
	begin;
		let source be the conversation of the speaker;
		sort source in turn stamp order;
		say "[The speaker] has so far told you: [line break]";
		let index be 0;
		repeat through source
		begin;
			if there is a turn stamp entry
			begin;
				let index be 1;
				say "  [summary entry][line break]";
			end if;
		end repeat;
		if index is 0, say "  absolutely nothing[line break]";
		say line break;
	end repeat.

Table of Girl Conversation
topic	reply	summary	turn stamp
"animal/creature/dog/critter/beast"	"'Any second thoughts on what this is?' you ask.

'I thought it was a dog, but that was earlier when it was biting my dress,' she says. 'It could be anything. Or rather, it couldn't be anything: I don't think I've ever heard of an animal like it. Maybe it's from Mars.'

You chuckle, but with less conviction than you'd like."	"that she really has no notion what the animal is"	a number
"Mars/aliens/planets/planet/alien/extraterrestrial/venus/mercury/jupiter/moon/luna/saturn/uranus/neptune/pluto"	"'Do you believe in life on other planets?'

'If I'm meeting it now, yes.'"	"that she might be convinced there is life on other planets"	-- 
"weather"	"'How's the weather?'

'It's fine, and is this getting us anywhere?'"	"that the weather continues fine, and that this has nothing to do with anything"	--
"girl/herself"	"'Tell me about yourself,' you say.

'This is hardly the time for introductions!' she replies.

'I don't seem to be going anywhere,' you point out."	"that this isn't the time for introductions"	--
"me/myself"	"'Let me introduce myself,' you say.

'No, don't,' she says. 'If the thing kills you, I want you to remain just some stranger.'

'Oh, that's very thoughtful! So if we were introduced, you'd be making more of an effort to free me?'

'I'm thinking!' she replies.

You are both stubbornly silent for a moment."	"that she doesn't want to be introduced just yet"	-- 
"job/employment/work" or "her job/employment/work"	"'What do you do during the day?'

'Clipping service,' she says curtly. 'But I'm looking for a new place.'

'Don't like it?'

'The boss is a bit clingy,' she says.

'I know how that feels,' you say, trying to reposition the critter's grip on you so that you can breathe a little more freely."	"that she works for a clipping service but is planning to leave"	--
"clipping service"	"'What do you do at a clipping service, anyway?'

'Clip articles out of the paper,' she says, looking surprised. 'Any news about any of our clients.'

'Ah.' You refrain from saying how dull this sounds. She probably wouldn't find your work at the bank very exciting either."	"that a clipping service sends clippings to people"	--
"boss/employer" or "office romance"	"'I take it that you don't have any dime-store novel ideas about marrying your boss?'

'He's already married,' she says curtly. 'He just likes to wander.'

'Ah.'"	"that her boss is a philanderer"	--
"Korea/italy/war/soldiers/soldier/fighting/army/sergeant"	"You start to make an observation about your life in the Army, but this meets with a stopping glare from the cool eyes, so that -- though you can think of no particular reason why -- you feel you have made a blunder, and fall silent."	"that she doesn't want to discuss the war"	--

Understand "ask [someone] for [police]" as asking it for help. Asking it for help is an action applying to one thing. Carry out asking it for help: try asking the noun to try getting help.

Instead of answering someone that "[help]", try asking the noun for vague help.

Understand "ask [someone] for [help]" or "ask [someone] to [help]" as asking it for vague help. Asking it for vague help is an action applying to one thing. Carry out asking it for vague help: say "[The noun] looks confused." Instead of asking the girl for vague help: say "'I'm trying! But I don't want to leave you here, and I also don't quite see how to get it off you...'"

Instead of asking the girl about "[police]": try asking the girl to try getting help.

Understand "siren/sirens/police/policemen/policeman/fireman/firemen/emergency" or "fire/police department/help" as "[police]". Understand "help" or "assist" or "aid" or "help me" or "assist me" or "aid me" as "[help]".

Understand "fetch [police]" or "summon [police]" or "get [police]" or "call [police]"  as getting help. Getting help is an action applying to nothing. 

Carry out the girl trying getting help: do nothing.

Report the girl trying getting help: say "'Okay,' you say. 'I have an idea. I will stay here with our rabid lunatic friend, since I have no choice, while you will go and fetch some kind of animal control personnel, or possibly a policeman or fireman. As quickly as possible, please.' 

She brightens at this suggestion. 'Yes, of course, I'm sorry. Stupid of me.' [if the girl wears the heels]She takes off the heels again and[otherwise]Still stocking-footed, she[end if] heads back up the pathway briskly.

Even so, it's an unpleasantly long wait until some animal-catchers arrive, suited up in protective suits, and shoot the creature with a tranquillizing dart. But you are free of it at last."; now the creature is nowhere.

Carry out getting help: say "Not likely to be much use just at the moment."

Section 2 - A set of rules for having the girl act intelligently

[The purpose of this section is to equip the girl to pick things up intelligently before she needs to use them, open and close containers, and so on. It also has a mechanism for stringing together several non-player-character actions into single sentences. This is a fairly low-tech approach and there would be more sophisticated ways to do the same thing, but this will work for the time being.]

Before the girl trying inserting something into a closed openable container (called the receptacle):
	increment depth;
	try the person asked trying opening the receptacle.

Before the girl trying going through a closed door (called impediment):
	increment depth;
	try the person asked trying opening the impediment.

Before the girl trying entering a closed thing (called the receptacle):
	increment depth;
	try the person asked trying opening the receptacle.

Before the girl trying exiting when the person asked is in a closed thing (called the receptacle):
	increment depth;
	try the person asked trying opening the receptacle.

Before the girl trying searching a closed container (called the receptacle):
	increment depth;
	try the person asked trying opening the receptacle.

Before the girl trying wearing something which is not carried by the person asked:
	increment depth;
	try the person asked trying taking the noun.

Before the girl trying eating something which is not carried by the person asked:
	increment depth;
	try the person asked trying taking the noun.

Before the girl trying giving something to someone when the noun is not carried by the person asked:
	increment depth;
	try the person asked trying taking the noun.
	
Before the girl trying throwing something at something when the noun is not carried by the person asked:
	increment depth;
	try the person asked trying taking the noun.

A rule for reaching inside a closed openable container (called target):
	if the person reaching is not the person asked, make no decision;
	if the person reaching is not the player
	begin;
		increment depth;
		try the person reaching trying opening the target;
	end if.

To increment depth:
	increase the action stack depth by 1;
	increase the maximum action stack depth by 1.

The action stack depth is a number that varies. The action stack depth is 0. [This is how deeply we've currently committed the character to go. In this extension, this won't be deeper than 2.]

The maximum action stack depth is a number that varies. The maximum action stack depth is 0. [This is the total number of actions we've stacked this turn, regardless of which one we're currently on.]

First every turn rule: 
	if Getting handbag is happening
	begin;
		now the action stack depth is 0; now the maximum action stack depth is 0; now every person is ignored; remove properties;
	end if.

Report the girl trying opening something when the action stack depth is greater than 0:
	say "[The person asked]";
	decrease the action stack depth by 1;
	say " opens [the noun][continue]";
	stop the action.

Report the girl trying taking something when the action stack depth is greater than 0:
	say "[The person asked]";
	decrease the action stack depth by 1;
	say " picks up [the noun][continue]"; 
	stop the action.

Report the girl trying exiting when the maximum action stack depth is greater than 0:
	say "[The person asked] gets out." instead.

Report the girl trying entering something when the maximum action stack depth is greater than 0:
	say "[The person asked] gets in." instead.

Report the girl trying wearing something when the maximum action stack depth is greater than 0: 
	say "[The person asked] puts it on." instead.
	
Carry out the girl trying throwing something at something:
	move the noun to the location of the person asked.

The block throwing at rule does nothing if the person asked is not the player.
The futile to throw things at inanimate objects rule does nothing if the person asked is not the player.

Report the girl trying throwing something at something: 
	if the maximum action stack depth is greater than 0, say "[The person asked] throws it at [the second noun]. She misses by a mile." instead;
	otherwise say "[The girl] flings [the noun] at [the second noun], but misses profoundly." instead.

Report the girl trying throwing something at something for the first time: 
	if the maximum action stack depth is greater than 0, say "[The person asked] throws it at [the second noun], but doesn't even come close to hitting. ";
	otherwise say "[The girl] flings [the noun] at [the second noun], but misses profoundly. ";
	say "'Sorry,' she says. 'Baseball isn't my game.'" instead.


Report the girl trying eating something when the maximum action stack depth is greater than 0:
	say "[The person asked] eats it." instead.

Report the girl trying inserting something into something when the maximum action stack depth is greater than 0:
	say "[The person asked] puts [the noun] inside." instead.

After printing the name of the girl: 
	if the girl is the person asked
	begin;
		now the girl is proper-named;
		now the girl is previously implicated;
	end if.

To say continue:
	if the action stack depth is greater than 0, say ",[run paragraph on]";
	otherwise say "[if maximum action stack depth is greater than 1][optional comma][end if] and[run paragraph on]";
	
A thing can be previously implicated or ignored.

Rule for printing the name of a previously implicated person when the action stack depth is not the maximum action stack depth:  
	do nothing. 

Unsuccessful attempt by someone trying doing something when maximum action stack depth is greater than action stack depth: do nothing.

To say optional comma:
	if the serial comma option is active:
		say ",";
	otherwise:
		do nothing.

[Here it becomes useful to change Inform's idea of whether the girl has a proper name, in order to suppress articles under some circumstances.]

A person can be formerly-improper.

To make (target human - a person) proper:
	now the target human is proper-named;
	now the target human is formerly-improper.

To remove properties:
	now every formerly-improper person is proper-named.
 
When Drinks ends: 
	remove properties.

Section 5 - Scripted behavior
[Elsewhere we will experiment with more goal-seeking characters, but in this scene we have the girl follow a scripted set of behavior except when the player's actions disrupt the flow. To do this, we make a table of rules for her to follow and blank out lines one at a time as these are completed.]

Table of Scripted Actions
task
apology for trouble rule
attempt to get handbag rule
noticing frantic creature rule
looking around pointlessly rule
comes in peace rule
initial siren rule
violence sometimes helps rule

This is the apology for trouble rule:
	now the girl is passive;
	say "'I'm so sorry,' says the girl. 'I see now that it wasn't your dog at all. And it was nice of you to try to rescue me.'
	
'Suicidal might be more accurate.'"

This is the attempt to get handbag rule:
	if the girl can see the handbag and the girl does not carry the handbag, try the girl trying taking the handbag.
	
Instead of the girl trying taking the handbag when the handbag is delicious and the creature has the handbag:
	say "[The girl] reaches for [the handbag], but [the creature] shrieks horribly and pounds on your head and blocks off your air supply.
	
'May I suggest,' you whisper hoarsely, 'that getting this thing free of me might be a more immediate concern?'"

Report the girl trying taking the handbag:
	say "[The girl] reacquires the handbag, looking satisfied. 'Well, at least that's taken care of.' You stare at her indignantly as small but strong fingers grip your throat." instead.

This is the noticing frantic creature rule:
	say "'It's waving at me,' she says, glancing past you at the thing on your back. 'It keeps gnashing its teeth and pointing to its belly.'
	
'Must be ulcers,' you remark.

'You think?'

'Could you find something more to feed it, please?' you say. 'Maybe it could be lured away with snacks.'";
	now the girl is passive.

This is the looking around pointlessly rule:
	now the girl is passive;
	say "[The girl] circles you, considering the situation. 'It's very strong,' she comments unhelpfully."
	
This is the comes in peace rule:
	now the girl is passive;
	say "'Maybe it's not hostile,' says the girl. 'Maybe it comes in peace, and its message is just misunderstood.'

'It seems to be trying to kill me,' you point out, in a hoarse voice.

'Oh, it's not trying very hard,' she says. Which is not a great consolation.

'My sergeant was of the opinion,' you say, breathing with difficulty. 'That once someone had. A gun pointed at you. It was past the time. To ask his intentions.'

She goes still. 'You were in Korea?'

'Italy,' you say. 'I'm not that young.'

She nods. 'Yes, of course. I should have guessed.'"
	
This is the violence sometimes helps rule:
	try the girl trying attacking the creature.
	
This is the initial siren rule:
	now the girl is passive;
	say "Somewhere several hundred yards down the path there is a siren and flashing lights: the police and fire department do still exist, even if they are falling down on the job of containing mysterious [color of the creature] animals just at the moment."

Every turn during Getting handbag:
	if the girl is active
	begin;
		repeat through the Table of Scripted Actions
		begin;
			follow task entry; 
			if the girl is passive [which will happen if she succeeds in acting]
			begin;
				blank out the whole row;
				make no decision;
			end if;
		end repeat;
	end if.

Every turn during Getting handbag:
	if the girl is active and a portable thing (called target) is in the location
	begin;
		if Strangulation is happening, say "[The girl] [if a random chance of 1 in 2 succeeds]tries to pull the animal off you again, but it is causing more harm than help[otherwise]goes to the edge of the path and shouts for help, but no one hears[end if].";
		otherwise try the girl trying taking the target;
	end if;
	now the girl is active.
	
Report the girl trying taking the key:
	say "[The person asked] picks up the key. 'Really, I'm more afraid of a person getting this...'" instead.
	
 
	
Chapter 4 - The Cafe

The Cafe at 72nd Street is a room. 
[Now it remains only to provide them both with something to say:]

The conversation of Esther is the table of Esther's Chatter.

Table of Esther's Chatter
topic	reply	summary	turn stamp
"animal/creature/dog/critter/beast"	"'I wish I knew what that was back there,' you remark.

'I thought we were working on forgetting all about that,' Esther reproves you."	"that you should forget about the animal"	a number
"Mars/aliens/planets/planet/alien/extraterrestrial/venus/mercury/jupiter/moon/luna/saturn/uranus/neptune/pluto"	"'Do you believe in life on other planets?'

'Not at all,' she says firmly. 'I also do not believe in Bigfoot, the yeti, or the Jersey Devil. I think we have already agreed on this, a martini and a half ago.'

'Yes, quite.'"	"(a little too bravely) that she doesn't believe in any unusual types of life form at all"	--
"jersey devil"	"'What's a Jersey Devil?'

'I'm not sure,' she says. 'My roommate a few months back was from New Jersey and she had stories, but I didn't pay attention. She was kind of weird and superstitious.'"	"that her former roommate told her about the Jersey Devil"
"bigfoot/yeti" or "loch ness monster" or "loch ness"	"'The Loch Ness monster is real,' you say. 'But that's the only one. All those other legendary creatures are made up.'

'I see,' she replies gravely."	"that she understands the Loch Ness monster is real"	--
"marriage/love/husband/spouse/wife"	"'What's your opinion on marriage?' you ask.

She is silent for a long time, and you realize that it is a pretty odd thing to ask of a woman you've just met, even in the abstract. 'It sounds like a good institution, in small doses,' she answers.

'Good answer,' you say, making a mock toast sort of gesture. 'That was my mother's opinion as well. I'm not quite sure she didn't--' You stop yourself before the rest of the sentence comes out. There's no proof, of course, and your mother is a very good sort of woman in general, and it's unlikely, completely unlikely, that she would have killed your father. As you have told yourself many many times."	"that marriage sounds like a good institution in small doses"	--
"job/employment/work/clipping" or "clipping service"	"'So this job in clipping services,' you say, returning to an earlier topic. 'Does it have any drawbacks aside from the boss with the wandering eyes?'

'It's the wandering hands that bother me,' she says. 'And yes, I have to work Saturdays sometimes, as well. Tomorrow morning, for instance.'

'That doesn't seem right.'

'I agree with you entirely. Nonetheless, the papers come out on Saturdays and so, therefore, must we work.'"	"that she has to work Saturdays, sometimes"	--
"my mother" or "her mother" or "mother/mothers/parents/childhood"	"You consider bringing conversation back around to some of your mothers' odder traits, but realize that you've covered that ground adequately already."	"that her mother has an assortment of quirks"	--
"phone/telephone number" or "telephone/address/contact/date" or "another date/evening/meeting"	"You find yourself actually forming the beginning of a question, and stop yourself in horror."	"nothing, because you know better than to ask someone out"	--
"war/soldier/soldiers/nurse"	"'You remind me a little of a nurse I knew in Italy,' you say. 'Same nose.'

She raises an eyebrow.

'You weren't over there, were you?'

'I was too young,' she says.

'Of course.' You are feeling more and more woozy and disoriented, as though you've lost the thread."	"that she was too young to be a nurse during the war"	--	

Rule for writing a paragraph about the round table: 
	say "You and [Esther] are seated at a [small round table][if something is on the round table], which supports [a list of things on the small round table]";
	if the Cafe is unvisited, say ". You have covered a range of harmless topics -- the quirks of your respective mothers (who could, it seems, have been separated at birth); the prospects of the Yanks; her job at a clipping service, which has given her a wide knowledge of useless trivia. 
	
Gradually the alcohol and the company have done their job. With a few more hours you may convince yourself that that animal back there was something perfectly ordinary and unthreatening.

And so you have now arrived at that difficult moment when it is necessary to extract yourself without hurting her feelings or, on the other hand, suggesting that you are ever going to see one another again. When she is not being exasperated, she is not so bad really, and she does have a pretty laugh. However. You have long-established rules. Time to say goodbye.";
	otherwise say ". It is becoming increasingly necessary that you leave."
	
Instead of taking inventory when Drinks is happening:
	say "You pat down your pockets, then realize half-way through that you've no idea what you're looking for. The drinks are paid for, the evening is over; all that remains is to thank Esther and depart."	
	
Instead of asking Esther to try drinking a martini glass when Drinks is happening:
	if a martini glass is on the table, say "She holds up one of her glasses as though to show that she has done her duty by it.";
	otherwise say "'Oh, no, I really couldn't drink another.'"	
	
Understand "kiss [something]" as kissing. [* Otherwise we will get the default 'you can only do that to something animate' response.]

Before kissing a body part which is part of someone (called the recipient):
	try kissing the recipient instead. [* In general this should work; however...]

Instead of kissing Esther when Drinks is happening:
	say "On impulse, you lean across and kiss Esther on the cheek. She does not pull away, but there is one of those moments of nervous expectation that reminds you why you do not toy with women.

She clears her throat. 'Thank you for the drinks. I had the best evening that's ever followed on being attacked by a freakish dog-creature.'";
	now Esther is dismissed.
	
Before kissing Esther's mouth when Drinks is happening:
	say "You sway toward her; she sways, just as delicately, away from you, putting a steadying hand on your shoulder. 'I think you may be a little tipsy,' she says, with unexpected gentleness.
	
'Sorry,' you say, feeling like an ass.

She tips her head. 'A girl doesn't like to take undue advantage, that's all.'";
	now Esther is dismissed instead.
	
Instead of singing when Drinks is happening:
	say "You start a song without really thinking about it, but Esther stops you with a gesture."
	
Understand "goodbye" or "bye" or "farewell" or "ciao" or "adios" as "[goodbye]".

Instead of asking Esther about "[goodbye]" when Drinks is happening:
	say "Yes, no point in dawdling. 'I should go,' you say abruptly, extending a hand.";
	now Esther is dismissed.

After exiting:
	say "You get to your feet. 'I'd better call it a night,' you say, smiling a practiced smile.

'Yes, indeed,' she says, standing also.";
	move Esther to the location.

The small round table is in the Cafe. A martini glass is a kind of thing. The small round table supports four martini glasses. Instead of examining a martini glass, say "Empty, like the others." Instead of examining a martini glass for the first time: say "Empty, even of its olive."

Instead of tasting or drinking a martini glass:
	say "You tip the most recent martini glass up hopefully, but there really is nothing more to be gotten. Esther smirks at you."
	
Instead of buying a martini glass:
	say "Just in time, you remember that you planned to go home now."

Instead of smelling a martini glass: 
	say "It smells a little more vermouthy than you mix them yourself. Everyone always uses too much vermouth."

Instead of waiting during Drinks:
	say "You're silent for a moment, regarding your empty martini glass. Esther is silent too, which is oddly comforting. Then she gathers herself together. 'I really should go.'";
	now Esther is dismissed.

The Sidewalk is south of the Cafe. "Cool, anonymous night, now; you could almost be anywhere in New York." Instead of going nowhere from the Cafe: say "You spin uncertainly but then manage to fix on south as the direction of the door. (Usually two drinks don't have this effect. Bizarre.)";
	try going south.
	
Instead of exiting in the Cafe, try going south.
	
After going to the Sidewalk:
	move Esther to the location;
	say "'Well. I'd best be off, then,' you say.
	
She walks out beside you, and you have a flash of dÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â©jÃƒÆ’Ã†â€™  vu; or perhaps a sense that this is supposed to occur again in the future. You find yourself a little vexed by this sensation.";
	now Esther is dismissed.

A person can be dismissed or engaged. A person is usually engaged.

Understand "lie to [someone]" or "deceive [someone]" as a mistake ("You do try to avoid the outright falsehoods as much as possible.")	 
	

Chapter 5 - The Limo
	
Some thugs are a man. Understand "[thugs]" as the thugs. The description of the thugs is "The men in suits seem almost as nervous as you are, but there are more of them and they are obviously prepared to do violence, which puts them at an advantage all the same." Understand "thug" or "blond" or "heavy blond thug" or "men" or "man" or "suits" or "man in suit" or "men in suits" or "agent" or "agents" or "kidnappers" or "mobsters" or "mobster" or "gangster" or "gangsters" as "[thugs]".
	
The Cadillac Fleetwood Limousine is a room. Some tinted windows are scenery in the Limousine. Understand "window" as the windows. The tinted windows can be openable. The tinted windows are openable. The windows can be open. The tinted windows are closed. Instead of examining the tinted windows, try searching the tinted windows. Instead of searching the tinted windows: say "You can make out little more than the occasional bright lights moving past, but nothing that would give you a clear sense of where you are or in what direction you are traveling." Instead of opening the tinted windows: say "You reach toward the window handle, but are pre-empted by one of the large men." 

The seats are scenery in the Limousine. Understand "car" or "seat" or "bucket seat" as the seats. The description of the seats is "Two facing bucket seats upholstered in leather: they've spared no expense here. Whoever these people are."

Instead of singing in the Limousine:
	say "You hum a little ditty. One of the men glares at you.
	
'Just trying to liven things up,' you say.";

Instead of opening the tinted windows for the first time: say "You try leaning across the heavy blond thug to get at the window handle, but he blocks you.

'Sorry,' you say. 'It's just that automobile rides always make me a bit car-sick. Fresh air prevents illness, you know.'

'You won't be ill,' says the man in the black suit coldly."

Instead of exiting when the location is the Limousine for the first time: say "You spring for the door handle, but the blond thug on your side catches you, and the one on Esther's side puts his hand protectively over the lock.

'Sit quietly,' says the man in the black suit. He does not sound as though he has any experience with people disobeying him."

Instead of exiting when the location is the Limousine: say "That is no more likely to work the second time."

Rule for writing a paragraph about a person in the Limousine: say "This is supposed to be a comfortable luxury vehicle, but you do not find it so: you are wedged between two large [thugs], and [Esther] sits across from you in similar comfort. The windows are so heavily tinted that you can't really see out."

Instead of waiting in the Limousine for the first time:
	move the paper chart to the player;
	say "'Here,' says the man in the black suit, handing you a paper chart. 'You may wish to study this; there will be a test of sorts when we arrive where we are going. No need to memorize it, but familiarity wouldn't hurt.'"

Instead of taking inventory when Limo Ride is happening:
	if the player carries the chart, say "You've only got this lunatic chart they gave to you.";
	otherwise say "You take stock of your possessions, but they are of course not turning up anything useful in this situation: nothing that could be an improvised weapon, no paper on which to scribble a covert message, not even a convenient matchbook."

Instead of listening when Limo Ride is happening:
	say "The growl of the engine is all you hear, most of the time. Rarely, honking from outside -- though that less as the ride goes on."

Instead of attacking the thugs: say "You're too well-trained to think you could win at that. It's fine for the movies, but it won't work here."

Instead of kissing the thugs: say "Though this would doubtless surprise everyone, you can see no advantage in it to outweigh the unpleasantness."

Instead of attacking Esther during Limo Ride:
	say "Esther is more or less your only ally at the moment."

Instead of kissing Esther during Limo Ride:
	say "Though the idea is not inherently repellent, you have a hard time imagining a less suitable set of circumstances."
	
Instead of asking Esther about something when Limo Ride is happening:
	say "It is not as though you have any privacy here."
	
Instead of asking Esther to try doing something when Limo Ride is happening:
	say "Conspiracies and plans are nearly impossible with both of you flanked by large men (who are, incidentally, not deaf)."
	
Instead of asking the thugs to try doing something:
	say "Unsurprisingly, they do not respond at all."
	
Instead of asking the thugs about something:
	say "You try to start a conversation, but none of them is interested in replying."
	
Instead of answering someone that something: try asking the noun about it. Instead of telling someone about something: try asking the noun about it.
	
The rapid advance time rule substitutes for the advance time rule when Limo Ride is happening. [* During this period of the game, we want a number of minutes to elapse between moments, like a montage of brief scenes in a movie. In addition to indicating this in the description, we have the clock advance at a different rate.]

This is the rapid advance time rule:
	increase the time of day by 15 minutes.

The paper chart is a thing. The chart is papery. The description of the chart is
	"[fixed letter spacing]Known creatures: Luna, Mars, Asteroids, Ganymede, Callisto, Europa, Nereid.
	
	Strong odor sensitivity: Mars, Ganymede, Europa.
	
	Very slow reflexes: Asteroids, Nereid ('throw' test).
	
	More than two arms: Luna, Asteroids, Callisto.
	
	Friendly disposition: Luna, Mars. Hostile: Asteroids.
	
	Eat cloth: Europa, Nereid, Mars.[variable letter spacing][if Test is happening]

At the bottom it says, in untyped letters, 'shout your answer when you've chosen, and we'll hear'.[end if]"
	
Instead of giving the chart to Esther:
	say "You reach across to hand Esther the mysterious chart, but the man in the black suit puts a hand on your wrist. 'That's for you. We have a different test for her.'
	
Esther makes a face at you.

The road hums by silently a while."


Chapter 4 - Factory

The Factory Floor is a room. "A vast room in which cars were once assembled. It has obviously been derelict for some time, since most of the machinery has been stripped out. There remain only a couple of presses and lathes, which look too dangerous for someone so mechanically disinclined as yourself.

Since its automotive days, it has become a command center, or perhaps a library. Stacked on every available surface are printed materials: magazines, newspapers, movie pamphlets. A large bulletin board fills one wall.

To the north is a smaller room which you would guess to be the foreman's base of operation." North from the Factory Floor is the Foreman's Area. 

The machinery is scenery in the Factory Floor. Understand "presses" and "press" and "lathe" and "lathes" as the machinery. The description is "Large; heavy. This concludes your expertise in mechanics."

The printed materials are scenery in the Factory Floor. Understand "magazine" or "magazines" or "newspaper" or "papers" or "newspapers" or "paper" or "pamphlet" or "pamphlets" or "movie" as the printed materials. The description of the printed materials is "You flip through the nearest pile: LIFE magazine from 1952 ('Are Flying Saucers Real?'); a number of issues of 'Astounding Stories'; pamphlet for 'The Day the Earth Stood Still'; some recent newspaper articles in French."

The large bulletin board is scenery in the Factory Floor. Understand "map" and "maps" and "picture" and "pictures" and "pin" and "pins" as the bulletin board. The description of the board is "On the board is a map of Manhattan with pins in it, and lines drawn, like a subway map, but not corresponding to any subway lines that actually exist. 

The whole thing reminds you obliquely of field planning centers during the war."
	
Rule for listing nondescript items of the Factory Floor:
	say "You've been left with ";
	list the contents of the Factory Floor, as a sentence, tersely, listing marked items only, including contents and giving brief inventory information;
	say "." 

The metal bar is in the Factory Floor. "A heavy bar of scrap metal sits on one of the newspaper piles, doing duty as a paperweight." The weight is heavy. Understand "paperweight" or "scrap" or "heavy" as the metal bar. The description is "You've heard of these vertical-integration plants that can turn a lump of iron ore into an engine block in less than 24 hours. The metal bar appears to come from an early-ish phase of that process, refined into heavy steel but not shaped like an auto part yet."

The Foreman's Area is a room. "Elevated a few steps above the factory floor itself, this room must once have contained some office equipment or furniture: there are marks on the floor that suggest chairs and a desk, at the very least. But it has been cleared of all this."
 

Instead of going down in the Foreman's Area: try going south.

The cardboard box is in the Foreman's Area. It is a papery enterable container. It is openable and open. The description of the cardboard box is "It is about waist-high and roughly cubical. No clear sign of what used to be inside, though." 

The built-in counter is a supporter in the Foreman's Area. The description of the counter is "From the many ring-shaped stains and the odor of failed coffee experiments, you guess that this area has been serving as break-room and impromptu kitchen since the factory shut down. [if something is on the counter]It currently contains [a list of things which are on the counter][otherwise]It is bare at the moment[end if]." The counter is scenery.

The paint lid is a thing on the counter. It is stinky. The description of the paint lid is "The top announces it to be from a tin of Saddle Brown paint, and it must have been used relatively recently, because it still carries a pungent chemical odor." Before opening the paint: say "This is just the lid, anyway." instead.

The rubber ball is a thing. The description is "A red rubber ball, slightly chewed, much like the one favored by your dog Lloyd when you were a kid." Understand "red" as the rubber ball. Instead of squeezing the ball, say "Pleasantly resilient."

The hood ornament is a medium-weight thing on the counter. The description of the hood ornament is "Oddly lonely without the rest of a car to go with it. It does have a moderate heft to it, though." 

The Chevrolet Passenger Car Shop Manual is a papery thing on the counter. The description of the manual is "The front cover reads: Chevrolet Passenger Car Shop Manual -- 1949-53 Models -- 1954 supplement -- RW-34-SM. Which will come in handy should you feel a sudden need to construct your very own automobile, but from its dusty and derelict air you get the sense that the suits are not expecting you to do any such thing." 

Rule for printing room description details of the cardboard box when the number of things contained by the box is 0: stop. [This turns off the (empty) message afterward.]

Report the creature trying playing with the rubber ball:
	say "[The creature] throws [the ball] [forcefully] against the far wall." instead.
	
Report the creature trying dropping the rubber ball:
	now the rubber ball is unexplored;
	say "[The creature] drops [the ball], which, of course, bounces back. It scoots back in surprise." instead.
	
Report the creature trying dropping the rubber ball more than once:
	say "[The creature] holds [the ball] out in front of it carefully and then lets go; nods intently as it bounces." instead.
	
Report an Earthlike creature trying playing with a heavy thing:
	say "[The creature] does a couple of quick lifts of [the noun]; why do you get the sense that it's showing off?" instead.

The creature can be known or unknown. The creature is unknown.

Understand "shout [moon]" as guessing a moon. Understand "say [moon]" as guessing a moon. Understand "shout [text]" as guessing randomly. Understand "shout [moon] to [any person]" or "say [moon] to [any person]" as directed guessing. Understand the commands "yell" and "holler" as "shout".

Directed guessing is an action applying to one moon and one visible thing. [* We must define 'one visible thing' here because we want to be able to accept commands like SHOUT MARS TO THUGS when the thugs are not in the same room and not touchable.] 

Check directed guessing: [if the Test is not happening, say "That seems pointless." instead;] if the second noun is not the thugs, say "It is unlikely that anyone but the thugs can hear you." instead. Carry out directed guessing: try guessing a moon the moon understood.  Directed guessing is useless action.

Guessing a moon is an action applying to one moon. Guessing randomly is an action applying to one topic. Guessing a moon is useless action. Guessing randomly is useless action.
[
Before guessing a moon when Test is not happening: say "No reason to do any such thing." instead.
]

Carry out guessing randomly: say "No one answers."

Instead of guessing a moon for the first time:
	if the moon understood is not the moon of the creature,
		say "A microphone crackles. 'We recommend against guessing randomly,' says a stern voice. 'The repercussions for yourself and Miss Milligan could be quite serious.' Again you remember why you were glad not to be in intelligence, back in the war.";
	otherwise continue the action.
	
Instead of guessing a moon:
	if the moon understood is not the moon of the creature
	begin;
		say "A microphone crackles in another room. 'That is not correct,' says a voice, through the loudspeaker. 'We are going to have to--' 
	
Someone interrupts, and they have what sounds like an argument, though you catch only snippets of it: something about the situation not being your fault, and so on. Then the microphone cuts off.

There's a very long silence, one that goes on for five or ten minutes, maybe more.

Finally the door opens and you are invited to emerge. Strong men grasp you firmly by the arms, and there is a sharp prick in the neck: drugs, presumably. You feel your legs going weak, then a somewhat confused and dizzy journey down a passageway. This ends in a steel-lined room that reminds you of the undertaker's, when your father died: the same cold slabs, some with people on them. 

The last thing you see clearly is Esther on an adjacent table, fetal, with a bright metal hat fitted over her head.";
		end the story saying "This can't be good";
	otherwise;
		now the creature is known;
		say "'I believe this one is from [the moon understood],' you announce loudly, for the benefit of the unseen men spying on you.
		
'Excellent,' says a voice from the loudspeaker above you. It sounds genuinely relieved. 'Stay there a moment, please.'

The door opens again and the black-suited man comes back in. 'Call me Max,' he says, shaking your hand firmly. 'Welcome to the Office of Alien Protocol.'

'Wonderful,' you say, furious now that your life is no longer in danger. 'Is this for real? Who do you think you are, anyway? Have you been toying with us?'

He looks at you for a moment. From his expression it is obvious he has never even heard of such a thing as a practical joke.

'Do you mind me asking the nature of my employment?' you try, instead.

Max smiles.";
	end if.


Chapter 6 - The Office	

Understand "girl" or "woman" as a woman.

Esther is a woman. Understand "milligan" or "miss milligan" as Esther. The description of Esther is "She's a tall, shapely girl; taken on figure and clothes alone she'd be too perfected to seem real, but there is also an edge of exasperation: life has not been quite to her taste. 

She reminds you a little of a nurse you knew back in the war." The description of Esther's hair is "Despite her attempts to arrange them, there are always at least two curls escaping from their assigned places, sometimes getting into her eyes." The description of Esther's eyes is "Pale blue and unreadable."

[Understand "ask Esther [text]" as a mistake ("Not really an option just now."). Understand "tell Esther [text]" as a mistake ("Not really an option just now."). Understand "talk to esther [text]" as a mistake ("Not really an option just now.").]

Understand "miss milligan" or "milligan" or "girl" or "woman" or "esther milligan" or "miss esther milligan" or "esther" as "[esther]".

Before reading a command:
	remove properties.

After reading a command: 
	while the player's command includes "the":
		cut the matched text; [* Largely an expedient so that more topics will match in conversation, even if the player has used articles.]
	while the player's command includes "a":
		cut the matched text;
	if the player's command includes "[thugs]", replace the matched text with "thug";
	if the player's command includes "[esther]", replace the matched text with "girl";
	if the player's command includes "ask girl to", replace the matched text with "girl,";
	if the player's command includes "tell girl to", replace the matched text with "girl,"; 
	if the player's command includes "ask thug to", replace the matched text with "thug,";
	if the player's command includes "tell thug to", replace the matched text with "thug,". [There may eventually be a classier way to do this, but for now we can divert ask (person) to (do something) to the correct command form by changing the command before it reaches the parser.]
 
Understand the command "grab" as "take".

Understand "call [any thing]" or "summon [any thing]" or "shout to/for/at [any thing]" or "call to/for [any thing]" or "yell to/for/at [any thing]" as summoning. 

Summoning is an action applying to one thing. Summoning is useless action.

Carry out summoning: say "There is no answer."

Instead of summoning a timid creature: if the creature is visible, say "[The creature] flinches, covering its ears."; otherwise continue the action.

Set-like Hallway is a room. "[if the Hallway is unvisited]Your new company, which claims to belong to a private investigation firm, in case anyone wonders who you are and why officers of the law need to visit from time to time. The Alien Protocol men -- you've come to call them AP in your head -- arranged the whole thing with such efficiency that you wonder whether you've underestimated military intelligence all these years.

This area has been decorated[otherwise]Decorated[end if], over the last few days, by Esther, whose idea of investigators comes largely from 'Charlie Wild, Private Detective.' Every time you walk through here you half expect to come nose-to-nose with an advertisement for Wildroot Hair Cream Oil, Charlie Wild's corporate sponsor.

Just inside is your office."  

Instead of going nowhere from the Hallway, say "In seems to be the operative direction here."

After taking the salami for the first time:
	say "You acquire the salami. 'Esther, you shouldn't have,' you shout, divesting it of its bow. It has about the size, if not the heft, of a policeman's cosh.
	
'It wasn't me, sir,' she yells. 'It's from the head of the Alien Protocol office, because of your new assignment as an independent agent.'

Oh. 'Did they get you anything?'

'No, they did not.' The typewriter resumes, more loudly than ever."

Instead of eating the salami:
	say "It's a bit early in the morning for this kind of meal."

Instead of waiting in the Set-like Hallway: say "You try postponing the inevitable, but the critter does await you inside."

Office on Floor Fifty-One is inside from Set-like Hallway. "Your office[if the number of scenery things in the office is less than three]. Recent remodeling efforts have left it positively spacious, with only [the list of scenery things in the office] as permanent features[otherwise]. It's cramped, what with [the list of scenery things in the office], but it's got a great view down Fifth Avenue[end if]."

After going to the Office:
	say "'Try not to get killed!' Esther shouts cheerily, as you go inside.";
	try looking;
	say "From the strand dangling out of its mouth, you surmise the Thing has just eaten the hooked rug your mother gave you.
	
'Glorp?' it inquires."; 
	end the story saying "To be continued";

The window is scenery in the office. Understand "view" as the window. The description is "It is raining periodically and colder than it should be for this time of year; which had better clear up by this afternoon, because the Yankees are playing the Red Sox." Instead of searching the window, try examining the window. Before opening the window: say "In the normal course of things, windows on the fifty-first floor do not open.

Your particular window does, of course, since the pods have to get out somehow, but the whole thing is rigged with machinery you can't control. You've heard rumors that your predecessor sent a pod out straight through the plate glass, hospitalizing ten people from the sidewalk below. Best not to meddle." instead.

The desk is scenery in the Office. It is a supporter. The description is "Grim, gun-metal grey, but quite sturdy, impervious to blows, and washable. All of these features have come in useful in your work."

The chair is scenery in the Office. It is an enterable supporter. The description of the chair is "Made of slightly less sturdy matter than the desk, and therefore the fourth you have owned in the course of this job. You also used to have a potted cactus, but it got eaten, in an incident that did not end happily for anyone."

The file drawer is scenery in the Office. It is a container. Understand "drawers" or "cabinets" or "cabinet" as the drawer. A lot of paperwork is a thing. The file drawer is closed and openable. The autographed picture of Joe DiMaggio is on the desk. The description of the picture is "He's mid-swing, and the autograph is made out to you personally." Before printing the name of the file drawer: if the file drawer is damaged, say "severely dented".

After opening the file drawer when the file drawer contains more than five things:
	say "You open the file drawer with a bit of struggle -- something in there is catching when you pull. But it finally comes open, and half-disgorges [a list of things in the file drawer]."

The paperwork is fixed in place. Understand "files" as paperwork. The paperwork is papery.

The description of the paperwork is "Copies of previously filed forms (mostly done by your predecessor), indexed by home-world." Understand "papers" or "forms" or "form" as the paperwork. Instead of consulting the drawer about something: try consulting the paperwork about it.


Burying relates various things to various things. The verb to disguise (it disguises, they disguise, he is disguising) implies the burying relation.  
 
Understand "conceal [something] in [something]" or "hide [something] in [something]" or "bury [something] in [something]" as hiding it in. Hiding it in is an action applying to two things. Check hiding it in: if the second noun is not a container, say "[The second noun] will not conceal much." instead; if the second noun is not openable, say "[The second noun] cannot be closed." instead; if the player does not carry the noun, try taking the noun; if the player does not carry the noun, stop the action. Carry out hiding it in: try inserting the noun into the second noun; if the noun is in the second noun and the second noun is openable, try closing the second noun. Hiding something in something is useless action.

Understand "dig in [something]" as digging. Digging is an action applying to one thing. Carry out digging: say "Pointless."
 
Understand "look up [moon] in [something]" as researching in it about (with nouns reversed). Understand "consult [something] on/about [moon]" as researching in it about. Understand "read about [moon] in [something]" as researching in it about (with nouns reversed). Understand "read [moon] in [something]" as researching in it about (with nouns reversed). Understand "look up [moon]" as researching vaguely.

Researching vaguely is an action applying to one moon. Check researching vaguely: say "You've no reference works handy that will apply to the present situation."  
 
Researching in it about is an action applying to one thing and one moon. 

Carry out researching in it about: say "You find nothing of interest in [the noun]."


The setup rules is a rulebook.   

A setup rule (this is the tongue rule):
	if food of creature is meaty, now tongue of creature is "sharp carnivore teeth";
	if food of creature is wood-pulpy, now tongue of creature is "a long raspy tongue";
	if food of creature is earthly, now tongue of creature is "a round pink tongue";
	if food of creature is textile, now tongue of creature is "a forked tongue".

A setup rule (this is the claws rule):
	if the moon of the creature is Europa, now the claw of the creature is "flipper-tip".
	
A setup rule (this is the color-assignment rule):
	if the creature lies nearer than Luna, now the color of the creature is a random color between red and yellow;
	if the creature lies beyond Venus and creature lies nearer than Mars, now the color of the creature is a random color between yellow and cyan;
	if the creature lies beyond Luna and creature lies nearer than Saturn, now the color of the creature is a random color between green and purple;
	if the creature lies beyond  Jupiter, now the color of the creature is a random color between tan and grey;
	if the moon of the creature is Triton, now the color of the creature is grey. 


To say creature clothing:
	if the creature wears something
	begin;
		say "It is wearing [the list of things worn by the creature]";
	end if.
	
Rule for writing a paragraph about the creature when the location is the Office:
	say "There's a collared [creature] waiting."

Rule for writing a paragraph about the creature: 
	say "Lurking in the opposite corner from you is a creature, about the size of a large dog, with [color of the creature] ";
	if the creature is scaly, say "scales. ";
	if the creature is furry, say "fur. ";
	if the creature is not furry and the creature is not scaly, say "skin. ";
	if the creature wears something
	begin;
		say "It is wearing [list of things worn by the creature]. ";
	end if;
	if the creature carries something, say "It is carrying [a list of things carried by the creature]. ";
	say paragraph break.
	
Before listing nondescript items:
	if the creature is marked for listing, now the creature is not marked for listing.
	
Showing confusion at is an action applying to one thing.

Carry out the creature trying showing confusion at: do nothing.

Report the creature trying showing confusion at: 
	say "[The creature] blinks at [the noun] uncertainly." 
		
Before a stupid creature trying playing with something when a random chance of 1 in 3 succeeds:
	now the creature is passive;
	if the creature is hostile,
		 say "[The creature] watches you belligerently[if the carrying capacity of the creature > 2] with two of its [carrying capacity of the creature in words] hands[end if] on its hips." instead;
	otherwise say "[The creature] scratches its head[if the carrying capacity of the creature > 2] with one of its [carrying capacity of the creature in words] hands[end if]." instead.

Report a stupid creature trying wearing the socks:
	say "[The creature][quickly] puts on your socks -- one over each ear." instead.
	
Report a creature trying wearing the fedora:
	say "[The creature] dons the fedora[if the creature is smart] and flicks the brim at you[end if]." instead.

Report a fast creature trying playing with something delicious:
	if the noun is undershorts, 
		say "[The creature] darts its tongue out to [the noun], sampling the flavor. Then it looks appalled and begins spluttering and spitting." instead;
	otherwise
		say "[The creature] darts its tongue out to [the noun], sampling the flavor[if the creature is friendly]. It gives you a shy look afterward, as though caught at some embarrassing practice[end if]." instead.
		
To decide whether (item - a thing) outweighs strength:
	if the item is light, no;
	if the gravity of the creature is greater than fractional and the item is medium-weight, no;
	if the gravity of the creature is greater than Marslike, no;
	yes.
	

Chapter 6 - General verb readjustment

Section 1 - Some words from later episodes

Instead of tying something to something, say "Your days as an Eagle Scout are behind you." 
	
Understand "use [a wearable thing]" as wearing. Understand "use [an edible thing]" as eating. Understand "use [an enterable container]" as entering.

Understand "label [something]" as labeling.

Labeling is an action applying to one thing. Labeling something is useless action.

Carry out labeling:
	say "No need."

Understand "attach [text]" as a mistake ("You have no adhesive."). Understand "stick [text]" as a mistake ("You have no adhesive.").

[This is to compensate for the fact that these verbs will be important in later episodes, so the player might in theory come back and try them here.]

Definition: a thing is alternate if it is not the noun.

Section 3 - General adjustments to parsing
 
Report taking something:
	say "You pick up [the noun][if the noun is heavy], though with a bit of effort[end if]." instead.
	
Report dropping something:
	say "You set down [the noun]." instead.
	
Understand the command "wear" as something new. Understand "wear [something]" as wearing. Understand "wear [something wearable]" as wearing. Before wearing something which is not carried by the player: try taking the noun; if the noun is not carried by the player, stop the action.

Understand the command "give" as something new. Understand "give [something] to [something]" as giving it to. Understand "give [something] [something]" as giving it to (with nouns reversed). 

Before giving something which is not held by the player to someone: 
	if the player wears the noun, try taking off the noun;
	otherwise try taking the noun. 
	
Before giving a person to an inanimate thing: try giving the second noun to the noun instead. 

Understand the command "show" as something new. Understand "show [something] to [something]" as showing it to. Understand "show [something] [something]" as showing it to (with nouns reversed). Before showing something which is not held by the player to someone: try taking the noun. Before showing a person to an inanimate thing: try showing the second noun to the noun instead.

Understand the command "eat" as something new. Understand "eat [something]" as eating. Understand "eat [something edible]" as eating.  

Before entering a closed container: try opening the noun; if the noun is closed, stop the action.
	

Section 4 - The Label

Understand "write [text]" as a mistake ("No need to write."). Understand "fill out/in [text]" as a mistake ("No need to write."). 


Chapter 3 - Other Ways of Interacting with the Creature

Understand "point at/to [something]" as indicating. Indicating is an action applying to one thing. Instead of indicating something in the presence of a stupid creature: say "[The person asked] looks intently at your forefinger."   

Instead of indicating a container in the presence of a smart friendly creature: say "You gesture imperiously. "; try the person asked trying entering the noun. Instead of indicating a delicious thing in the presence of a smart friendly creature: say "You gesture imperiously. "; try the person asked trying eating the noun. Instead of indicating a wearable thing in the presence of a smart friendly creature: say "You gesture imperiously. "; try the person asked trying wearing the noun. Instead of indicating a closed openable thing in the presence of a smart friendly creature: say "You gesture imperiously. "; try the person asked trying opening the noun. 

Instead of indicating something in the presence of a smart creature: say "[The person asked] looks intently at [the noun]."

Carry out indicating something: say "You point your finger at [the noun]."

Understand "hi" or "hello" or "hey" as "[hi]".

Understand "hi" or "hello" or "hey" as waving hands. Understand "greet [someone]" or "wave at [someone]" or "wave to [someone]" as waving at. 

Waving at is an action applying to one thing. Carry out waving at: try waving hands. Waving at something is useless action.

Before asking the creature to try waving hands: try waving hands instead. Instead of answering the creature that "[hi]": try waving hands.

Instead of waving hands in the presence of a playful creature: say "You wave to the creature, and it waves back delightedly."

Instead of waving hands in the presence of a secretive creature: say "You wave to the creature. It looks at you for a moment with much the same expression you see when you try to ask out Esther's girlfriends. 

Then it waves back."

Instead of waving hands in the presence of a hostile creature: say "You wave. The creature ignores you pointedly."

Instead of waving hands in the presence of a slow creature:
	say "You wave. The creature blinks mildly."
	
Instead of waving hands in the presence of a smart creature:
	say "You wave. The creature waves back at you."
	
Instead of waving hands in the presence of a creature when the carrying capacity of the creature is 6:
	say "The creature waves back with all six hands. The different arms have different personalities: the upper left hand gives you a stately monarchical salute, while the middle right hand flaps as frantically as a child's."
	
Instead of singing in the presence of the creature when the creature is hostile:
	if the creature cannot touch the player, continue the action;
	otherwise say "[The creature] puts its fingers in its ears and glares at you."
	
Instead of singing in the presence of the creature when the creature is playful:
	if the creature cannot touch the player, continue the action;
	otherwise say "[The creature] croons along, though not very well."

Instead of listening in the presence of a slow creature:
	say "[if creature is weak]It is still and sluggish[otherwise]Its breath is slow and deep[end if]."
	
Instead of listening in the presence of a lightning creature:
	say "[if creature is weak]Its claws are constantly clicking and clacking[otherwise]Its breath is rapid, its movements impatient[end if]."
	
Instead of listening in the presence of a fast creature:
	say "[if creature is weak]It is constantly moving[otherwise]It seems to breathe at roughly the same pace as you[end if]."
	
Instead of listening in the presence of a moderate creature:
	say "[if creature is weak]It is pretty quiet[otherwise]It breathes a little more slowly than you do; moves a little sluggishly[end if]."
	
Instead of listening in the presence of a creature when the moon of the creature is Titan:
	say "[The creature] draws deep, gasping breaths, as though struggling to get enough out of this feeble atmosphere."


Instead of smelling the location in the presence of an inverse creature:
	try smelling the creature.
	
Instead of jumping in the presence of a fidgety creature:
	say "You jump[if the creature is in the location], and the creature leaps away swiftly, dodging into a far corner of the room[otherwise], making the creature flinch[end if]."

Instead of jumping in the presence of a moderate creature:
	say "The creature watches you with interest."
	
Instead of jumping in the presence of a slow creature:
	say "The creature draws its head back like a tortoise trying to retreat into a shell. Otherwise it does not move."

Instead of pushing, turning, or pulling the creature: try touching the creature.


Report eating something in the presence of the hungry creature:
	say "You eat [the noun], while [the creature] watches you with grieved reproach." instead.

Report dropping the creature:
	say "You gently set the creature down. It looks up at you soulfully." instead.

Instead of telling the creature about something: try asking the creature about it.

Instead of asking the creature about something:
	say "The creature watches your mouth intently, tilting its head this way and that."
	
Instead of asking a hostile smart creature about something:
	say "As soon as you begin to speak, the creature plugs its ears and howls rudely."
	
Instead of asking a friendly smart creature about something:
	say "The creature listens with frowning concentration, then says, 'Glorp?'

As responses go, it makes as much sense as the ones you usually get from the boys at Alien Protocol..."

Instead of asking a friendly smart creature about something:
	say "The creature listens with frowning concentration, then says, 'Glurble,' quite firmly."
	
Instead of asking a creature to try doing something: say "The creature either fails to understand your instruction or feels no need to obey."

The can't take other people rule does nothing.

Instead of taking a hostile creature:
	if the creature is poisoned, continue the action;
	if the creature is starving, continue the action;
	if the creature is slothful
	begin;
		say "The creature registers displeasure at having you get near it[if a random chance of 1 in 2 succeeds], and you jump back to avoid being bitten. But another approach might work[otherwise], but is not strong enough to prevent you[end if].";
		stop the action;
	end if;
	try the creature trying growling instead.
	
Instead of taking the creature when the speed of the creature is greater than moderate:
	if the creature is starving, continue the action;
	if the creature is poisoned, continue the action;
	say "With [speed of the creature] reflexes, [the creature] scampers out of your grasp."
	
Instead of taking a curious moderate creature:
	if the creature is starving, continue the action;
	if the creature is poisoned, continue the action;
	say "[The creature] momentarily allows you to pick it up but then scrambles out of your arms again."
	
Report taking a starving creature:
	say "[The creature] is too weak to resist, and lies limply in your arms." instead.

Report taking the creature:
	say "[The creature] wraps its arms around your neck and nuzzles against your shoulder." instead. 

Understand "pet [something]" or "tickle [something]" or "cuddle [something]" as touching. Understand "rub [someone]" as touching. Understand "stroke [something]" as touching.

Instead of touching the creature when the creature is poisoned:
	say "[The creature] feels unnaturally warm to the touch."

Instead of touching a hostile animal:
	try the creature trying growling;
	now the creature is passive.
	
Instead of touching a secretive animal:
	now the creature is passive;
	say "It holds very still and allows itself to be petted, watching you carefully."

Instead of touching a friendly animal:
	if the noun is scaly, say "[The noun] rubs itself against your hand. Despite the scales, it is surprisingly pleasant to touch, not at all slimy or rough.";
	otherwise say "[The noun] rubs itself against your hand.";
	now the creature is passive.
	
Instead of touching a curious animal:
	now the creature is passive;
	if the noun is timid, say "[The noun] dodges, terrified." instead;
	if the noun is playful, say "[The noun] watches you with a little wariness, then giggles when you touch it. Perhaps it is ticklish." instead;
	say "[The noun] moves away [if the creature is slow](though slowly)[otherwise]skittishly at first[end if], then lets you touch it."

Instead of kissing the creature: 
	say "Fortunately your task does not require you to investigate its mating rituals."
	
Understand "rip [something]" or "tear [something]" as attacking.

Understand "kick [something]" as attacking.
[
Before attacking the creature when Test is happening:
	say "You attack [the noun], which begins to squeal pathetically. This brings in the men in suits, much faster than you would have believed possible.
		
'What do you think you're doing? They're very easily hurt!' exclaims one of them.

Another: 'Maybe he was trying to protect himself; we didn't say not to attack them.'

'Yes, give him another chance.'

A third one: 'I don't think we should risk anyone with violent tendencies.' And this person glares at you ferociously, so that you feel wormlike.

'It's the war, you know,' says the first man. 'He was trained as a soldier; it does things to their attitudes.'

'Now, that's not fair--' '--happy to shoot members of their own species, why not aliens?' 'There's a difference between being happy and being willing--' '--defending their own people--' '--biological imperative to protect those most like themselves--'

It's obvious that these men have had this argument many times. Before it goes too much further, the dark-suited one turns back to you and says, 'We're going to have to fail you. I'm truly sorry.'

'Biological imperative,' says the blond man, with a humorless smile.";
		end the game saying "This can't be good" instead.
		]

Instead of smelling something stinky:
	say "Phew!"

Instead of smelling the creature:
	if the creature is inverse, 
		say "There is a faint stink to its exhalations and its exterior, probably the sign of an atmosphere high in methane or sulfur. If you had a real lab at your disposal...";
	otherwise say "The smell is nothing you can identify."
	
Instead of tasting or eating the creature:
	say "You aren't allowed to do anything that might kill the creature." 
	
Instead of waking the creature:
	say "Demonstrably it is already awake." 

Instead of waiting in the presence of the creature:
	say "You wait to see what the creature will do next."
	
After examining a poisoned creature: say "It looks distinctly ill."
	
After examining a hostile creature:
	say "It glares back at you[if the creature is smart] with calculated malice[end if]."
	
After examining a starving creature:
	say "It meets your eyes briefly, then closes its own in pain[if the creature is friendly]. Must be starving, poor thing[end if]."
	
After examining a blinded creature:
	say "Its eyes are tightly closed."

	
Instead of throwing something at a fidgety creature when the creature wants the noun:
	silently try giving the noun to the creature;
	if the creature is carrying the noun, 
		say "You toss [the noun] to [the creature], which makes a deft catch."
		
Instead of throwing something at a creature when the creature wants the noun:
	silently try giving the noun to the creature;
	if the creature is carrying the noun,
		say "You toss [the noun] to the creature, which watches the fall -- unable to make the catch -- but manages a retrieval afterward."

Instead of throwing something at a fidgety creature:
	silently try dropping the noun;
	if the player is not carrying the noun,
		say "You throw [the noun], but [the creature] dodges quickly. [if creature is lightning]Lightning-fast[otherwise]Fast[end if] reflexes there."
	
Instead of throwing something heavy at a slow creature:
	silently try dropping the noun;
	say "You fling [the noun] at [the creature], and connect successfully with its head, to disastrous effect.
	
[if creature is red]Funny, it bleeds red[otherwise]Now you know what [color of creature] blood looks like[end if].";
	end the story saying "You aren't supposed to harm them"

Instead of throwing something heavy at a moderate creature:
	silently try dropping the noun;
	if the player is not carrying the noun, say "[The creature] just manages to dodge [the noun]."

Instead of throwing something at a slow creature:
	silently try dropping the noun;
	if the player is not carrying the noun, say "[The noun] bounces harmlessly off [the creature]. It does not even flinch. Right. Very slow reflexes, then."

Instead of throwing something at a moderate creature:
	silently try dropping the noun;
	if the player is not carrying the noun, say "[The noun] bounces harmlessly off [the creature], which flinches. Medium reflexes, then."

Chapter 4 - The Plot

Section 1 - Accounting for Time

To decide whether we are dead: 
	(- (deadflag > 0) -);

Waiting more is an action applying to one number. Waiting more is useless action. 

Understand "wait [number] minutes/turns" or "wait for [number] minutes/turns" or "wait [number]" as waiting more.

Carry out waiting more:
	let duration be the number understood - 1;
	repeat with X running from 1 to duration
	begin;
		if the creature is dying or we are dead, do nothing;
		otherwise follow the turn sequence rules;
	end repeat. 
	
Report waiting more:
	if we are dead, do nothing;
	otherwise say "It is now [time of day + 1 minute]." 

Check waiting more:
	if the number understood > 59, say "You really haven't got that kind of patience." instead.

Hanging around until is an action applying to one time. Hanging around until is useless action.

Check hanging around until:
	if the time of day is the time understood, say "It is [time understood] now!" instead;
	if the time of day is after the time understood, say "It is too late for that now." instead.

Carry out hanging around until:
	while the time of day is before time understood 
	begin;
		if the creature is dying or we are dead, do nothing;
		otherwise follow the turn sequence rules;
	end while.

Report hanging around until:
	if we are dead, do nothing;
	otherwise say "You yawn until [time understood]."

Understand "wait until [time]" as hanging around until.
 

Section 2 - Major Plot Events 
	
To leave space:
	say paragraph break; say paragraph break;
	say paragraph break; say paragraph break.

To simplify the game: 
	if the current level is beginner:
		let N be a random number between 1 and 2;
		choose row N in the Table of Alien Characteristics;
	otherwise:
		choose a random row in the Table of Alien Characteristics; 
		while the difficulty entry is not the current level:
			choose a random row in the Table of Alien Characteristics; 
	now moon of the creature is moon entry;
	now mood of the creature is attitude entry;
	now the odor sensitivity of the creature is nostrils entry;
	now metabolism of the creature is feed time entry;
	now gravity of the creature is the mass entry;
	now speed of the creature is the dexterity entry;
	now carrying capacity of the creature is the arms entry;
	if carrying capacity of the creature is 0, now carrying capacity of the creature is 2;
	now food of the creature is taste entry;
	now intelligence of the creature is brain entry; 
	follow the setup rules;
	
When play begins:
	now the right hand status line is "[time of day]"; 
	now the time of day is 7:13 PM; 
	now the left hand status line is "Friday, May 21, 1954";
	simplify the game.
	 
When play begins:
	say "'Excuse me. You in the fedora,' says a female voice, behind you. 'Excuse me, is it really too difficult to keep your dog leashed?'
	
'Yes,' you say, turning. 'I haven't got a dog.' 

The source of the aggravation is ten feet back on the path: hair between brown and honey, a Marilyn figure, and one of those tipped-up noses that makes a girl look always just a little annoyed.

There is also a short [color of the creature] animal worrying at her skirt.

'Whatever you call it, it [italic type]obviously[roman type] shouldn't be out unleashed.'

'It isn't mine, and I don't know what it is.' You and the girl look at the creature again. In the fading twilight of Central Park, it's hard to see clearly, but you're more than ever certain that it does not belong to the genus [italic type]canis[roman type].";
	leave space;
	pause the game; 
	leave space;
	center "[story title]";
	center "[story headline]";
	center "by [story author]";
	leave space;
	pause the game; 
	say "'Do you think it might be an escaped monkey?' you ask. There is a rip of stitches coming free: as a matter of theoretical interest, you wonder what the girl will do if the beast manages to tear off her skirt.

'I don't know!' she exclaims, swatting it with her handbag. 'But it's--'

There's a flash of [color of the creature] arms. 'It took my bag!' she exclaims, blinking, as the thing runs off for the shelter of the nearest bridge. 'Your dog took my handbag!'

You open your mouth to deny involvement, but she doesn't wait to hear it; instead she strips off her shoes and goes running after the thing. You watch her disappear into the darkness of the underpass; consider going home; then realize that you don't want to figure in this girl's mind as the man who set a rabid animal on her and then left her to her fate.";
	move the creature to the player; 
	move the fedora to the Underpass;
	move the handbag to the creature;
	pause the game.
	
Getting handbag is a scene. Getting handbag begins when play begins. Getting handbag ends when the player does not carry the creature.

When getting handbag ends:
	now the creature is nowhere.  
	
Drinks is a scene. Drinks begins when Getting handbag ends. Drinks ends when Esther is dismissed.

Understand "thank [someone]" as thanking. Thanking is an action applying to one thing. Carry out thanking: say "Pointless." Thanking someone is useless action.

Instead of thanking the girl: say "'You're not freed yet,' she points out."

Instead of thanking Esther:
	say "'Thank you for joining me,' you manage, after a minute. 'I wasn't quite ready to go straight home after our little adventure.' 
	
She smiles.";
	now esther is dismissed.

When Drinks begins: 
	move the handbag to Esther;
	say "When the fuss is over, the girl is still with you; now you look, she's older than you first thought, closer to your own age. She does look a bit rattled, though.

'Can I buy you a drink?' you ask. 'Being throttled by a rabid animal always leaves me thirsty.'

'I don't drink with strange men.' She is adjusting her hair with the aid of a tiny compact mirror, though it is obvious that some of those curls have never been orderly and never will.

You hand her your business card. 'There, now we're introduced.'

Perhaps the staid logo of Chase Manhattan soothes her, because she replies, 'I'm Esther. Milligan.' There's a stop between the first name and the last; if you were a more suspicious man you might think she made up that moniker. But then, why choose a name like Milligan?

'Do you drink martinis, Miss Milligan?'";
	if the heels are consumed, say "[line break]'Only if I can buy new shoes on the way,' she says.

'Macy's it is. And then drinks.'";
	make scene break;
	increase the time of day by 47 minutes; 
	now Esther wears the heels; [because she ought to be dressed just as the girl version of herself]
	now Esther wears the dress;
	move Esther to the Cafe;  
	move the player to the Cafe.
	
Martini comment is a scene. Martini comment begins when Drinks is happening and the time since Drinks began is 3 minutes.

When martini comment begins:
	say "'I don't even like martinis,' Esther remarks.

'You could have mentioned it earlier.'

'I didn't want to be rude,' she says.

'But now you do?'
	
She shrugs. 'I realized that if I posed as someone who likes martinis, I might have to go on carrying out the ruse indefinitely, and that would be its own punishment.'

In the back of your fogged brain, alarms go off. 'Indefinitely'? Yes, you must, must leave.

Seeing but misinterpreting your appalled expression, she says, 'Really, it's all right. Sometimes a martini is the only thing when your nerves are frayed. Like medicine.'"
	
When martini comment ends:
	repeat with item running through martini glasses
	begin;
		now item is nowhere;
	end repeat;
	say "A woman comes and takes away the martini glasses. 'I think that's my cue,' says Esther.";
	now Esther is dismissed.

Martini comment ends when the time since martini comment began is 2 minutes.

When drinks ends:
	say "When you shake hands, her hand lingers in yours. Now is the point when you are allowed to ask to see her again -- for a moment you seriously consider it, but habit wins. 'It was a pleasure to know you, Miss Milligan,' you say firmly.
	
A tiny hurt look comes into her eyes, then turns into something more like shock. Then you realize that she's looking over your shoulder -- at four extremely bulky and belligerent men.";
	make scene break.
	
To make scene break:
	center "*****";
	say line break;
	pause the game;
	say paragraph break;
	say paragraph break;
	say paragraph break.

Limo Ride is a scene. Limo Ride begins when drinks ends. Limo Ride ends when the number of filled rows in the Table of Limo Banter is 0. 

When Limo Ride begins: 
	say "'We're here from animal control,' says the largest one unconvincingly. 'We have a question about the animal you saw earlier. The escaped circus animal.'

'That wasn't a circus animal,' says Esther. 'That was like something from another planet.'

This is evidently the wrong statement. There's a more complete silence than you've ever before heard in the city of New York. 

The men look at one another. 'In the car,' says the large one, suddenly, and someone gives you a shove at the middle of the back. 

So much for going home and forgetting this entire incident.";
	now the description of Esther is "She sits back, fingers laced, ankles crossed in ladylike fashion. She looks less frightened than you feel. Perhaps she hasn't encountered some of the things Army intelligence does when it feels threatened; it seems more and more likely that that is what you're up against.";
	move Esther to the Limousine;
	move thugs to the Limousine;
	move the player to the Limousine.
	
When Limo Ride ends:
	make scene break.

Every turn during Limo Ride:
	repeat through the Table of Limo Banter
	begin;
		say "[reply entry][paragraph break]";
		blank out the whole row;
		rule succeeds;
	end repeat.
	
Table of Limo Banter
reply
"The car turns on and lurches into traffic. 'Must be a taxi driver,' Esther says.

From outside comes an indignant honk.

'Where are we going?' Esther asks.

No one answers."
"'All right, so you're not lawmen,' says Esther, somewhat later. 'And you're obviously not with animal control. Gangsters, then? The Mafia raises illegal animals?'

'We're not gangsters,' says a blond one, goaded.

'Temper,' murmurs the one in the black suit. 'Don't let the lady bother you.'"
"Esther looks out the window for a while, until a new idea occurs. 'Are you spies, then?'

'Look, lady, you've stumbled on a classified defense project. We gotta determine if you're trustworthy and can work with us on it, and if not, we gotta deal with the leak.'

Her eyes seek out yours, as though to ask whether you think they will really kill you. You find yourself nodding ever so slightly. 

She is quiet then and doesn't add anything further for the whole of the trip."

When Limo Ride ends: 
	now the current level is easy;
	simplify the game;
	let N be the metabolism of the creature;
	let new time be the turn count - N;
	now last feed time of the creature is new time;
	move the rubber ball to the creature; 
	increase the time of day by 12 minutes;
	move the creature to the Foreman's Area;
	move the player to the Foreman's Area, without printing a room description;
	say "You're brought into what appears to be a derelict factory of some kind, into a small room. The man in the black suit lingers after the others have taken Esther away. 'We'd like you to be useful to us,' he says. 'If you are, we can employ you, and no one gets hurt. I say this now to make sure you understand the stakes. 

'You have a small test. If you are able to discern where our friend here comes from, say your answer, and we'll come spring you out. We'll be watching in the other room with the loudspeaker.' You follow his glance to [the creature] waiting for you.

'And Miss Milligan?' you ask.

'Oh, the girl? Her test is simpler. I'm sure she'll pass. Not to worry.' He smiles. 'Unless of course you fail, in which case we won't be able to use her either. Well, good luck!'";
	if the player is not carrying the paper chart
	begin;
		move the paper chart to the player;
		say "[line break]He starts out, then comes back and puts a paper chart into your hands. Then he's gone.[line break]";
	otherwise;
		say "[line break]He starts out, then pauses, comes back, and writes at the bottom of the chart. 'Just in case you forget the instructions,' he says, with a condescending smile.[line break]";
	end if;
	
Test is a scene. Test begins when Limo Ride ends. Test ends when the creature is known. 

Final teaser is a scene. Final teaser begins when Test ends.
	
When final teaser begins:
	make scene break;
	now the left hand status line is "Thursday, May 27, 1954";
	now the time of day is 9:25 AM;
	move the salami to the Hallway;
	move the player to the Hallway;
	repeat with item running through things carried by the player
	begin;	
		now item is nowhere;
	end repeat; [*  Because the player should not still be carrying the paint lid, the paper chart, etc., a week after the earlier scene.]
	move the creature to the Office;
	now Joe Dimaggio is nowhere; 
	now the color of the creature is a random color;
	now every thing carried by the creature is in the Underpass;
	now every thing worn by the creature is in the Underpass.

The player is in Central Park Underpass. 
	
Section 3 - More optional events

Refeeding is a scene. Refeeding begins when the current level is easy and refeeding has not happened and Test is happening and the player can see the creature and the creature is starving and the player has been in Foreman's Area for at least two turns. Refeeding ends when time since refeeding began is 1 minute.

When refeeding begins:
	now the last feed time of the creature is the turn count;
	say "The man in the dark suit slips in. 'Apologies for the interruption,' he says. 'I forgot to feed this critter before letting you get started.'
	
He offers the animal [if the food of the creature is earthly] a hamburger[otherwise]something [food of the creature][end if], which is instantly consumed. 'That should hold it for a bit,' he says, dusting his hands. 'But don't dawdle.' He goes out again with a friendly salute."

Checking in is a scene. Checking in begins when the current level is easy and checking in has not happened and Test is happening and time since Test began is 5 minutes and the Foreman's Area is not visited. Checking in ends when the time since checking in began is 1 minute.

When checking in begins:
	say "The dark-suit man comes in. 'Good evening,' he says. 'Is everything all right? You'll need to, you know--' and he gestures towards the foreman's area just north.
	
You can't help noticing that the gesturing hand holds a Luger P 08.

He follows your glance. 'This is just for protection,' he says, holstering it with an embarrassed look. 'People sometimes react badly to being kidnapped.' He pulls his suit jacket so that it covers the unsightly weapon.

He turns and goes -- stopping at the doorway. Over his shoulder, he says, 'It's not dangerous either, so don't worry about that.'

On which note, he is gone."

Chapter 5 - Help System

Table of Hints
title	subtable	description	toggle
"How do I get rid of this beast?"	Table of Riddance Hints	--	hint toggle rule 
"I don't understand women."	Table of Esther Hints	--	hint toggle rule

Table of Esther Hints
hint	used
"Don't worry -- you can talk to her and try to get to know her better, but you're unlikely to shape your relationship one way or the other so early in your acquaintance."	a number

Table of Riddance Hints
hint	used
"You may notice that it eats things."	 a number
"Is there anything else around like what it wants to eat?"	--
"[if the creature is wood-pulpy]Try some of the paper things[otherwise]It seems to like leather and cloth[end if]."	--
"Of course, you won't be able to feed it yourself, so you'll need to get the girl to give it things for you."	--
"Try GIRL, GIVE [if the creature is wood-pulpy](some paper thing)[otherwise](some textile thing)[end if] TO THE CREATURE."
"Keep doing this until it is fed."
"Have her [if the creature is wood-pulpy]search the trash[otherwise]give it her shoes and your fedora[end if] if you run out of food for it."

When Drinks begins:
	choose row 1 in the Table of Hints;
	now title entry is "What do I do now?";
	now subtable entry is Table of Drink Hints.
	
Table of Drink Hints
hint	used
"If you like, you can chat with Esther for another minute or two, perhaps asking her about something you find interesting."	 a number
"Sooner or later, you're going to need to leave, however."	--
"Try OUT."	--

When Limo Ride begins:
	choose row 1 in the Table of Hints;
	now title entry is "How do I get out?";
	now subtable entry is Table of Limo Hints.
	
Table of Limo Hints
hint	used
"You don't."	a number
"Just wait until you get where you're going."	--

[When Test begins:
	choose row 1 in the Table of Hints;
	change title entry to "How do I identify this animal?";
	change subtable entry to Table of Test Hints;
	choose row 2 in the Table of Hints;
	change title entry to "How do I let them know when I'm done?";
	change subtable entry to Table of Escape Hints;
	
Table of Test Hints
hint	used
"The paper chart gives you a number of diagnostics."	a number
"You may be able to rule out certain arm numbers right away just by looking at the animal."	--
"To tell whether it can sense smelly things or not, try offering it something with a pungent odor and seeing how it reacts."	--
"Friendly creatures tend to react positively to being petted, while others may be hostile, ticklish, confused, or even frightened."	--
"For cloth-eating, try offering it food or observing what it is fed."	--
"Reflexes are the trickiest bit: try taking something it's carrying or throwing something at it and see how it responds."	--
]

Table of Escape Hints
hint	used
"When you decide you know what planet the animal comes from, try SAY (planet). They will hear you. (Shouting also works.)"	a number

When play begins:
	choose row 1 in the Table of Basic Help Options;
	now description entry is "[story description]".
	
Table of Basic Help Options (continued)
title	subtable	description	toggle
"Credits"	--	"This episode was beta-tested by Storme Winfield and Josh Giesbrecht; further reports provided by Jesse McGrew. Inform 7 is the work of Graham Nelson, and [story title] was compiled on Andrew Hunter's compiler for Mac OS X."	--
"Contacting the Author"	--	"If you encounter bugs, please feel free to email me (Emily Short) at emshort@mindspring.com. Including a short transcript of the problem you ran into will make it easier for me to diagnose what went wrong, though of course it isn't required."	--
"Hints"	Table of Hints	--	--


Chapter 6 - Extra Parsing

After reading a command:
	remove stray punctuation.
	
