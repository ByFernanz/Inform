"Lime Ergot" by Caleb Wilson.

The story headline is "A Text Adventure".
The release number is 3.

The story creation year is 2014.

The story description is "Now everyone is gone. (Well, almost everyone.)"

Use full-length room descriptions.
Use American dialect.
Use serial comma.
Use no scoring.

Rule for constructing the status line:
	center "[location]" at row 1;
	rule succeeds.

Release along with an interpreter.

[Release along with cover art.]

[

For further release:


]

Include the Basic Screen Effects by Emily Short.

Section 1 - Player and Setup

Rule for deciding whether all includes scenery: it does not.

When play begins: say "[italic type]'Be a dear, lieutenant, fix me a drink.[line break]The machine is ready.[line break]I'll take a green skull.'[roman type][line break]"

Instead of examining the player: say "You are Lieutenant Musco. With nobody left to command, you are officially the lowest ranking soldier left in St. Stellio."

Instead of smelling the player: say "You do not smell very good."

Section 2 - Verbs

swimming is an action applying to nothing.

Understand "swim" and "dive" as swimming.

singing is an action applying to nothing.

Carry out singing:
	say "You sing a few lines of the St. Stellio anthem. Um, how does it go again?"

Carry out swimming:
	say "Why not? You dive off the edge of the wharf. It turns out that wet twill is very heavy. When you visit the bottom of the bay, your corpse is pinched by crabs, not that you mind."; end the story saying "DROWNED".

Dancing is an action applying to one visible thing.

Dancing crazy is an action applying to one visible thing.

Understand "dance with [person]" as dancing.

Understand "dance with [something]" as dancing crazy.

Carry out dancing crazy:
	if the noun is the mechanical bar tender:
		say "You dance in a circle around mechanical bar tender, to little effect." instead;
	otherwise if the noun is the croquet mallet:
		if the player does not hold the croquet mallet:
			try taking the croquet mallet;
		say "Holding up the croquet mallet like a tiny, wooden partner, you take a few turns around the wharf." instead;
	otherwise if the noun is the firstlime or the noun is the secondlime or the noun is the thirdlime:
		say "Holding the lime up above your head, you dance a few stately turns around the wharf." instead;
	otherwise if the noun is the green skull:
		say "Holding the glass up above your head, you dance a few stately turns around the wharf, proud of how you don't spill a single drop." instead;
	say "Fun though it may be, you can't quite see how to dance with [the noun]."

Understand "place [something] in/inside/into [something]" as inserting it into.

The block attacking rule response (A) is "You're not quite ready to resort to violence."

Section 3 - Stranded and Scenery

The Stranded is a room. The printed name is "Stranded". "The cement wharf is sun-baked above, slapped by water below. Hieroglyphs of glare inscribed on the flat surface of the harbor. Odors of salt, and rot, and sweat, and silt. The air burns like an iron.[paragraph break]The wharf ends here. South is the pier. [If wharf is glary]The capital of St. Stellio (which is a city also named St. Stellio) is invisible, somewhere through the glare to the west. To the north a tangle of foliage grows directly from the brine. To the east is the Atlantic ocean.[otherwise]The capital of St. Stellio (which is city also named St. Stellio) is clearly visible over the water to the west. To the north a tangle of foliage grows directly from the brine. To the east is the Atlantic ocean."

Instead of going north in the Stranded: say "That way is an impassable tangle of stems and leaves, too flimsy to support your weight anyway."

Instead of going south in the Stranded for the first time: say "The general barks at you: 'Did I not make myself clear? Chain of command, my dear--I'll take that drink, now.'"

Instead of going south in the Stranded for the second time: say "The general smiles, unreassuringly. 'Don't test me, now...'"

Instead of going south in the Stranded for the third time: say "The general sneers. 'I knew you were a deserter... You have that shifty look about you.' She pulls a service revolver from inside her uniform and shows you the cavernous interior of the barrel."; end the story saying "BANG".

Instead of going up in the Stranded: say "Wings would be convenient, wouldn't they?"

Instead of going nowhere in the Stranded: say "That way is water."

Instead of smelling the stranded: say "It smells like the tropics."

The glare is scenery in the stranded. The description is "Wriggling, non-sensical symbols made of light. You are a little bit worried that you can almost read them."

The hieroglyphs are scenery in the stranded. Understand "hieroglyph/symbol/symbols" as the hieroglyphs. The description is "No, nonsense."

Instead of doing anything other than examining to the glare: say "Too insubstantial."

The sky is scenery in the stranded. The description is "A blazing blue abyss."

Instead of doing anything other than examining to the sky: say "That's not really how a sky works." instead.

The water is scenery in the stranded. Understand "sea/ocean/brine/atlantic" as the water. The description is "Your basic tropical brine, the color of turquoise.[if wharf is not glary] Over the water to the west is the city of St. Stellio."

Report touching the water: say "The water is warm as blood." instead.

Instead of smelling the water: say "It smells rich and salty."

Instead of pushing or pulling or taking the water: say "That's not going to work."

Instead of tasting the water: say "Very salty."

Instead of drinking the water: say "Even castaways realize drinking brine is a terrible idea."

A thing can be glary.

The wharf is glary.

The wharf is scenery in the stranded. "The wharf was built in a hurry to dock warships, and once the island of St. Stellio was taken, it hurried to decay. Now the ships are all gone. Now everyone is gone. (Well, almost everyone.)"

The pier is scenery in the stranded. The description is  "It's abandoned."

Section 4 - The General

General Livia Tudor-Adolphus is a woman in the Stranded. "General Livia Tudor-Adolphus sits in a huge wicker wheelchair. The sunlight glints on her uniform's silver switchblade insignia." Understand "tudor" and "adolphus" as General. The description is "General Livia Tudor-Adolphus is the senior colonial officer left on St. Stellio. She is a tiny woman in her eighties. She is wearing a dark green uniform. Beneath a peaked hat, and a wig made of white metal molded into the shape of tight curls, her face is tanned and wrinkled. Her eyes are like small and perfectly formed spheres of ice."

The peaked hat is worn by General. The description is "Dark green, glossy leather."

The wig is worn by General. The description is "It must be itchy."

The uniform is worn by General. The description is "Dark green twill. You're wearing one too, only without so much decoration. They're hot as Hell."

The wheelchair is scenery in the stranded. Understand "wicker/wheel/chair" as the wheelchair. The description is "A Gothic monstrosity made of wire and wicker." Instead of taking the wheelchair: say "It's in use." Instead of pushing the wheelchair: say "The general glares at you until you stop." Instead of pulling the wheelchair: say "The general glares at you until you stop."

The silver switchblade insignia is part of the uniform. Understand "switchblades/knife/knives" as the insignia. The description is "The silver switchblades on the general's lapels mean that she was here for the taking of St. Stellio thirty years ago. They also mean that she spilled blood. Rumor has it she's equally skilled with rifle, saber, cannon, and back-dated execution order."

Instead of smelling General: say "She smells like gunpowder and ink."

Carry out dancing:
	if the noun is General Livia Tudor-Adolphus, say "The general frowns at you: 'Trying to hypnotize me, are you? That's not dancing; that's writhing.'";
	if the noun is the player, say "You take a few turns about the wharf, hands held up as if clasping an invisible partner."

Instead of kissing General Livia Tudor-Adolphus: say "You swoop in for a quick peck, but bounce back from the general's icy glare."

After asking General about "herself/general/livia/tudor/adolphus/tudor-adolphus", say "The general says: 'How am I? I'm very thirsty. Now how's that drink coming along?'"

After asking General about "me/musco/lieutenant", say "The general says: 'Lovely, absolutely lovely. Wait, what was the question? Awful, absolutely awful.'"

After asking General about "st/saint/stellio", say "The general says: 'This place has gone downhill, I'm afraid.'"

After asking General about "drink/cocktail/green/skull", say "The general says: 'Sounds splendid, doesn't it? Though I'd appreciate less talking about it and more making of it.'"

After asking General about "machine/mechanical/bar/tender", say "The general says: 'I understand that even an idiot can work it, lieutenant.' She stares at you pointedly."

After asking General about "lime/limes", say "The general says: 'Must be some limes around here somewhere, eh?'"

After asking General about "water/ocean/sea/bay/atlantic", say "The general says: 'I'm sick of it. Aren't you?'"

After asking General about something, say "The general seems not to have heard. Or not to have cared."

After telling General about something, say "The general seems not to have heard. Or not to have cared."

Section 5 - The Mechanical Bar Tender

The mechanical bar tender is in the Stranded. It is not portable. "Beside the general stands a large metal contraption of gears, flywheels, pistons, and valves. Most importantly it includes a hopper at the top, a placard at the middle, and a spout near the base, beneath which is a fluted glass." Understand "contraption/bar-tender/machine" as the bar tender. The description is "It's a waist-high 'mechanical bar-tender,' imported from home at great expense. What a waste. You can read the placard to see what ingredients are called for next, or place ingredients in the hopper."

The hopper is part of the bar tender. It is a container.

Instead of inserting something into the mechanical bar tender:
	try inserting the noun into the hopper instead.

The placard is part of the bar tender. The description is "The text, formed of modular letters like an inverted typewriter apparatus, reads: 'Drink: Green Skull. Next ingredient: 1 over-ripe St. Stellio lime, whole.'"

The fluted glass is part of the bar tender. The description is "It's empty."

Instead of taking the glass: say "The general stares unhappily at the empty glass in your hand. She barks at you: 'Did it wrong, did you? On purpose too, I'll bet. In my day we punished that kind of willful insubordination severely. Oh, what the hell, who's there to stop me taking a page out of that old book?'[paragraph break]She pulls out a service revolver and with a cock of the lever and pull of the trigger shows you her definition of 'severely.'" ; end the story saying "BANG".

The spout is part of the bar tender. The description is "Looks like the place the completed drink is meant to come out of."

Section 6 - The Foliage (First Lime)

A thing can be outofreach. Instead of taking or touching or pushing or pulling a thing that is outofreach: say "Just out of reach."

Instead of tasting something that is outofreach: say "Just out of reach."

Instead of smelling something that is outofreach: say "All you smell is salt water."

The foliage is scenery in the Stranded. Understand "bush/bushes/tangle/maze/stem/stems/leaf/leaves" as the foliage. The description is "This tangle of bushes grows from water at the end of the pier. Deep inside the maze of stems and leaves you spot a skull. Beside the skull is a rusted sword."

Instead of smelling the foliage: say "Smells like sap and brine."

The skull is scenery in the Stranded. It is outofreach. Understand "nasal/hole" as the skull. The description is "A pink orchid grows from the skull's nasal hole."

The pink orchid is scenery in the Stranded. It is outofreach. The description is "Following the roots of the orchid deeper into the gloom, you spot the rest of the skeleton."

The skeleton is scenery in the Stranded. It is outofreach. The description is "A skeleton lies deep within the tangle of stems, near the water level. There is a bowl-shaped mass of roots below it."

The mass of roots is a container in the Stranded. It is outofreach. It is scenery. Understand "bowl/shaped/bowl-shaped" as the mass of roots. The description is "Down close to the water, some roots have grown into the shape of a bowl."

After examining the mass of roots for the first time: say "Sitting in the hollow of the roots is a plump St. Stellio lime."; move the firstlime to the mass of roots.

The sword is scenery in the Stranded. It is outofreach. The description is "Sitting beneath the rusted sword is a fat lizard, motionless as a statue."

The lizard is scenery in the Stranded. It is outofreach. The description is "The lizard sits curled around the rim of a golden goblet scaled with grime."

The grime is part of the goblet. It is scenery. It is outofreach. The description is "After a few years on St. Stellio, everything becomes grimy."

The goblet is scenery in the Stranded. It is outofreach. The description is "Stuffed inside the goblet is a bundle of rotted telegrams."

The bundle of rotted telegrams is scenery in the Stranded. It is outofreach. The description is "[first time]It seems to be a bundle of telegrams related to the retreat from--sorry, strategic deployment back home from--St. Stellio... though, ah... hmm... it's eight feet away, covered with mold, with slime, the letters wriggling and kinking like the worms that appear in buckets and puddles after a rain storm... [only]How strange. You blink. There's nothing there. Maybe your eyes are fatigued by the sunlight, are playing tricks on you?"

Section 7 - The Daydream (Second Lime)

The croquet mallet is an object. The description is "You hate to think where the blood came from. So you just... don't. Instead, you recall the cropped lawns of home. In your mind's eye you can see just such a lawn, floating behind the mallet. In the distance there is a boxwood hedge."

A thing can be dreamy. Instead of doing anything other than examining to a thing that is dreamy: say "It's just a daydream."

The blood is part of the mallet. It is dreamy. The description is "Red speckles and smears."

The lawn is part of the mallet. It is dreamy. The description is "A lawn of clipped grass. Beyond the lawn is a boxwood hedge."

The boxwood hedge is part of the mallet. It is dreamy. The description is "Behind the hedge is a tent of striped cloth."

The tent is part of the mallet. It is dreamy. The description is "Striped in pale pink and yellow. Brassy notes drift out of the tent. Inside it is a bandstand."

The brassy notes are part of the mallet. They are dreamy. The description is "Just a memory."

Instead of listening to the brassy notes: try examining the trumpet.

The band stand is part of the mallet. It is dreamy. Understand "bandstand" as the band stand. The description is "On the bandstand a trumpeter is practicing his instrument. He is wearing a blue seersucker suit."

The trumpeter is part of the mallet. It is a man. It is dreamy. The description is "Behind the trumpeter is a velvet-lined horn case."

The trumpet is part of the trumpeter. The description is "The trumpeter is playing a syncopated martial tune that makes war sound rather stylish."

The seersucker suit is part of the mallet. It is dreamy. The description is "In the pocket of the seersucker suit is a postcard with a picture on the front and a secret message on the back."

The postcard front is part of the suit. It is dreamy. Understand "picture" as the postcard front. The description is "On the front of the card is an etching that depicts the bombardment of St. Stellio from the harbor. Soon after the bombardment, before the dust had settled and the fires burnt out, General Tudor-Adolphus would be in the city, slitting throats and bribing the locals to turn traitor.

The day after the garden party you were deployed, to join a war that was already won."

The postcard back is part of the postcard front. It is dreamy. Understand "secret/message" as the postcard back. The description is "On the back of the postcard is written:

'Dear Lieutenant Musco,[line break]
I think you might be imagining things.[line break]
This secret message,[line break]
for example,[line break]
is almost certainly[line break]
a hallucination nation ation,[line break]
unless it is merely a muddled memory.[line break]
Was this the infamous garden party[line break]
where you hired the trumpeter[line break]
to give your cousin's lover a note[line break]
in which you begged a rendezvous[line break]
inside the crystal gazebo[line break]
at the hidden center of[line break]
the hedge maze?'"

Does the player mean doing something to the postcard front: it is likely.

The velvet lined horn case is part of the mallet. It is dreamy. It is a container. The description is "A black case lined with dark blue velvet and shaped like a trumpet, though slightly larger than a trumpet."

After examining the case for the first time: say "Sitting inside the horn case is a plump St. Stellio lime."; move the secondlime to the case.

Section 8 - The City (Third Lime)

A thing can be distant. Instead of doing anything other than examining to something that is distant: say "It's half a mile across the bay."

The capital is scenery. It is distant. Understand "city" and "st" and "stellio" as the capital. The description is "The ruined capital of St. Stellio. Near the water is the Exchange. Above that, streets full of shattered buildings climb a sunny hill."

The buildings are part of the capital. They are distant. Understand "building/shattered/hill/ruin/ruins" as the buildings. The description is "The hill of ruins is mostly crumbled white stone, streaked with black. When the colonials realized they could no longer hold the city they destroyed it."

The streets are part of the capital. Understand "bright/cratered/street" as the streets. The description is "Undriveable now. Pretty much unwalkable too."

The Exchange is part of the capital. It is distant. The description is "The walls of the Exchange are more hole than wall. A bright, cratered street runs up behind it to the Gubernatorial Palace."

The Gubernatorial Palace is part of the capital. It is distant. The description is "It was beautiful while it lasted (which was two and a half centuries). Now it's slag. Beyond the Palace is a cemetery."

The cemetery is part of the capital. It is distant. The description is "These days the cemetery is no longer unique in being littered with large chunks of white marble, or being full of dead bodies. Just uphill of the cemetery is the arbor at the summit of the hill."

The stones are part of the capital. Understand "white/stone/chunk/chunks/marble" as the stones. The description is "The marble is fire- and blood-stained."

The arbor is part of the capital. It is distant. Understand "summit" as the arbor. The description is "Most of the trees up at the summit have been flattened, but one lime tree remains."

The lime tree is part of the arbor. It is distant. It is a container. The description is "[if thirdlime is in lime tree]There's something growing from a high branch...[otherwise]A bare tree."

Before examining the lime tree for the first time, move the thirdlime to the lime tree.

Section 9 - The Limes

The firstlime is an object. Understand "lime" and "st" and "stellio" as the firstlime. The printed name is "St. Stellio lime". The description is "[if firstlime is carried by the player]A green sphere, soft and almost greasy to the touch. Its surface bears a texture of pores like bad skin.[otherwise]A green sphere the size of your fist."

The secondlime is an object. Understand "lime" and "st" and "stellio" as the secondlime. The printed name is "St. Stellio lime". The description is "[if secondlime is carried by the player]A green sphere, soft and almost greasy to the touch. Its surface bears a texture of scales like a snake.[otherwise]A green sphere the size of your fist."

The thirdlime is an object. Understand "lime" and "st" and "stellio" as the thirdlime. The printed name is "St. Stellio lime". The description is "[if thirdlime is carried by the player]A green sphere, soft and almost greasy to the touch. Its surface bears a texture of scabs like burned skin.[otherwise]A green sphere the size of your fist."

Instead of tasting the firstlime: say "You lick the lime. The bumpy skin is bitter, with a hint of fermented tang."

Instead of smelling the firstlime: say "The lime smells pungent and slightly spoiled."

Instead of tasting the secondlime: say "You lick the lime. The bumpy skin is bitter, with a hint of sour liquescence."

Instead of smelling the secondlime: say "The lime smells pungent and slightly spoiled."

Instead of tasting the thirdlime: say "You lick the lime. The bumpy skin is bitter, with a hint of mildew."

Instead of smelling the thirdlime: say "The lime smells pungent and slightly spoiled."

Instead of eating the firstlime: say "You bite into the lime.

Green sparks rise in a great dome-shaped flow. A fiery emerald flux. That's a skull they're forming. This tastes like poison. That's your own skull."; end the story saying "ERGOTISM".

Instead of eating the secondlime: say "You bite into the lime.

Your mouth fills with green bees. Thirteen hives of viridescent wasps erupt each from its own pink pore. Your head crumbles into green dust. No it doesn't."; end the story saying "ERGOTISM".

Instead of eating the thirdlime: say "You bite into the lime.

A mossy song echoes in an empty grotto. That's your own skull, echoing with dripping sirens[apostrophe] singing. You shriek the chorus. The chorus shrieks you."; end the story saying "ERGOTISM".

Section 10 - The Making of the Drink

After inserting firstlime into the hopper: say "You drop the lime into the hopper. The machine churns for a moment, shuddering as if it wants oil. The letters on the placard shiver and jumble, then unjumble to display the next ingredient.

The general shouts at you: 'Keep going. I have a terrible thirst! If you don't fix me my drink soon I'll have to drink your blood instead. Haw. Haw.' She enacts a terrible, stylized colonial laughter.

You notice there is something leaning against the side of her wheelchair: a croquet mallet speckled with blood."; remove firstlime from play; move croquet mallet to Stranded.

After inserting secondlime into the hopper: say "You drop another lime into the hopper. The machine churns for a moment, shuddering as if in orgasm. The letters on the placard chatter like a dozen keys breaking off in the wrong locks, then unfuse to display the the next ingredient.

The general smiles. 'Coming along, are you? Don't disappoint me, lieutenant.'

The sun has shifted slightly, altering the glare on the water, allowing you a view of the abandoned city of St. Stellio."; remove secondlime from play; now the wharf is not glary; move capital to stranded.

After inserting the thirdlime into the hopper: say "You drop another lime into the hopper. The machine churns for a moment, shuddering as if your eyes and eardrums are being stabbed with heated needles. The letters on the placard crackle like skulls crushed under the iron rims of a rolling juggernaut. The tangled letters crimp further, spelling out wavering clumps of nonsense, flickering like lightning sealed inside a wax candle.

A dark green drink pours from the spout, filling the fluted glass.

The general eyes the drink greedily. 'Give it here, dearie. I won't stand for any further delay.'"; remove glass from play; remove thirdlime from play; move green skull to stranded.

After inserting the mallet into the hopper: say "Splinters fly out from the works, and a weak, brown, milky liquid--curdled with dreams of home--pours into the glass.

The general frowns at it, then pulls a service revolver from beneath her lapel, points it at your head. Her finger tightens over the trigger. Apparently the drink has not been made to her satisfaction. (To be honest, it does look foul.)"; end the story saying "BANG".

Section 11 - The Green Skull

The green skull is an object. Understand "cocktail" and "drink" and "glass" as the green skull. The description is "A poisonous-looking, moss-green cocktail."

Does the player mean drinking the green skull: it is very likely.

Instead of smelling the green skull: say "A fizzing, fermented odor rises from the cocktail."

Instead of tasting the green skull: try drinking the green skull.

Instead of drinking the green skull: say "You drink the green skull. It is sourness distilled.

There is a green hand clawing at your guts. There is a white fever in your bones. There is a flaw along the horizon, if a horizon can wriggle like a snapped snake.

Now, overhead, the hooting whistle of mortar shells coming in. One misses the wharf, sends up water shaped like an inverted church. Another misses the wharf, and another. Soon one won't miss.

The general laughs, and cocks her revolver."; end the story saying "BOOM".

Instead of giving the green skull to general: say "The general's withered hand accepts the glass.

Her face tilts up to you, a face speckled green with colonies of mold. She opens her mouth, and spores float up from beneath her tongue.

From somewhere over the ruins of St. Stellio drifts a scream. It might be a high, frantic laughter. Or it might be the crashing of waves. Either way, there is green-stained blood dripping from your nose."; end the story saying "ALL IS FUNGUS".

Section 12 - Out of World

Getting info is an action out of world. Understand "about" and "info" and "help" and "credits" as getting info.

Report getting info: say "[bold type]Lime Ergot[roman type] was originally written and programmed by Caleb Wilson, as Rust Blight, over the course of three hours in October of 2014 for ECTOCOMP. Release 2 was polished and somewhat expanded, and this version, release 3, was polished very slightly further and updated for the latest Inform build. Thanks to Seth Kaplan, Neil Butters, and Duncan Bowsman for testing. Email the author at [italic type]rotifer@gmail.com[roman type]."

