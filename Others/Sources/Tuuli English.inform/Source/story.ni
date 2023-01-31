"Tuuli (English)" by Daurmith and Ruber Eaglenest.
 
[ ENGLISH VERSION ]

Include Basic Screen Effects by Emily Short.
Include Quip-Based Conversation by Michael Martin.

[Interactive story for the jam "Canciones del desierto, la tormenta y el mar". 
More info at https://itch.io/jam/canciones-del-desierto-la-tormenta-y-el-sea

Translated to English for the IF Comp 2017.]
 
The story headline is "An interactive ritual".
The story genre is "Fantasy".
The release number is 4.
The story description is "The old witch, your teacher Mákke, is dead. If you want to save your village you'll have to destroy the raiding fleet that's coming. Can you do it, young Lenne-who-would-be-the-witch?"
The story creation year is 2017.
 
Release along with interpreter and cover art.

Use memory economy.

[Release along with source text.]

When play begins:
		say "[line break][italic type]Tuulen Ukko tuulen Akka[line break]
Tuulen kaikki ristikansa

Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi --

	-- Tuuli, Hedningarna[line break]";
	say "[line break][italic type]'They say witches tell the stories that matter. Such is the will of the gods.[line break] So listen. I am Lenne. I am the witch. This is the story.'[roman type][line break]".

After printing the banner text:
	say "[line break][bracket]If this is your first time playing interactive fiction type HELP for more information.[close bracket][line break]".

Chapter 0 - Definitions and initialization

[Rule for deciding whether all includes scenery: it does not.]

[Rule for deciding whether all includes things inside the chest: it does not.]

[The grammatical gender of an object is usually masculine gender.]

[ Lenne-who-would-be-the-witch ]

The player is female.

Instead of examining the player:
	if Muertos is not happening:
		say "Your looks are nothing special. You are young Lenne-who-would-be-the-witch: short, thin, pale, still wearing your maiden braids."

The woollen dress (m) is worn by the player. The description is "A simple dark woolen dress, mud-stained." Understand "woolen dress" as the dress. Instead of taking off the dress, say "It's not your intention to go around naked."

Some reindeer leather boots are worn by the player. The description is "They are a gift from Mákke when you first became her disciple. Perks of being the witch apprentice." The indefinite article is "a pair of". Understand "my boots" or "pair of boots" or "pair of leather boots" or "pair of reindeer leather boots" as the boots. Instead of taking off the boots, say "No, It's not your intention to go around barefoot in the snow."

Instead of sleeping, say "You're wide awake."

Instead of rubbing the player, say "Now it's not the time." Instead of cleaning the player, say "Now it's not the time."

[ Inventory wide ]

Instead of taking inventory:
	if the number of things carried by the player is 0:
		say "";
	otherwise:
		say "You are carrying ";
		now all things carried by the player are marked for listing;
		now all things worn by the player are unmarked for listing;
		[if no things carried by the player are marked for listing, say "nothing";]
		[otherwise:]
		list the contents of the player, as a sentence, tersely, giving brief inventory information, including contents, listing marked items only;
	if the number of things carried by the player is 0:
		say "All you are wearing right now is ";
	otherwise:
		say ". Also you are wearing ";
	now all things enclosed by the player are unmarked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing, say "nothing";
	otherwise list the contents of the player, as a sentence, listing marked items only;
	say ".[paragraph break]".

[ Deserted ]

A room can be populated or deserted. A room is usually deserted.

[ Out of reach ]

A thing can be outofreach. Instead of taking or touching or pushing or rubbing or pulling or tasting or cutting a thing that is outofreach: say "It's out of reach."

Instead of smelling something that is outofreach: say "You can only smell the sea."

Understand "sky" as up.

Understand "ground" and "floor" as down.

Section 1 - Magical objects

A magical object is a kind of thing. A magical object can be charged or uncharged. A magical object is usually uncharged. 

Section 2 - Verbs and actions

[ USE various mistakes and SACRIFICE ]

Understand "use [text]" as a mistake ("[bracket]The verb TO USE is too vague. Try to frame your action in more specific terms. For more information, type HELP.[close bracket]")

Understand "prepare [text]" as a mistake ("[bracket]The verb TO PREPARE is too vague. Try to frame the preparation of something step by step in more specific terms. For example, if you want to PREPARE MÁKKE you need to detail the steps for that preparation. For more information, type HELP.[close bracket]")

Understand "who" or "what" or "when" or "where" or "why" or "how" or "want" or "so" or "which" as "[query]". 

Understand "[query] [text]" as a mistake ("[bracket][story title] understands direct commands such as '[command prompt]examine [a random thing that can be seen by the player]', but no complex sentences or questions. Try giving direct orders for the character to perform. For more information, type HELP.[close bracket]"). 

Understand "sacrifice" or "sacrifice [text]" as a mistake ("[bracket]In this story, there's no need to sacrifice any animal or human being. Despite the context of the story the only sacrifice you need to do is the bloodletting, that you can perform using the action 'cut me'.[close bracket]")


[ Getting exits ]

Getting bearings is an action out of world. Understand "exits" as getting bearings.

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Report getting bearings:
	say "You can go [list of viable directions]." 

[ HELP ]

Getting help is an action out of world. Understand "help" as getting help.

Report getting help: say "[italic type]Tuuli[roman type] is a parser-based interactive fiction game. This means that you should type in commands to control your character's actions using verbs, preferably in the infinitive. As a general rule, in each turn think that you're answering the question 'What do you do next?'[paragraph break]
'[command prompt]examine chest', as an example.[paragraph break]
To move around use GO followed by any of the compass points. GO NORTH. You can also shorten it by simply typing N, S. E, W, or OUT and IN, UP and DOWN. Also, you can use the command EXITS to get your bearings.[paragraph break]
Some common verbs are: INVENTORY, or I, will tell you what you're carrying. LOOK (L) will describe your s urroundings in the current location. TAKE and DROP are useful to handle objects. EXAMINE (X) is especially useful to get more information about an object or part of the scenery.[paragraph break]
When the time comes the game will need a special command: RECITE SPELL. That should be a good moment to SAVE your game. That way you can always RESTORE it later. You can also repeat a given command with AGAIN, shorten G.[paragraph break]
Some more verbs understood by the game: OPEN, CLOSE, WEAR, TAKE OFF, REMOVE, RUB, ANOINT, CLEAN, CUT, STAB, BREAK, MOVE, PUSH, SMELL, TOUCH, KISS, SWIM or EAT. You must use TALK TO for interaction with characters, then use any number to select what to say from the menu.[paragraph break]
Type in ABOUT to know more about the game, who made it and how to contact the authors."

Getting info is an action out of world. Understand "about" and "info" and "credits" as getting info.

Report getting info: say "[italic type]Tuuli[roman type], an interactive ritual.[paragraph break]
Daurmith: story, writing, additional programming.[line break]
Ruber Eaglenest: programming, additional story, additional writing.[line break]
Benjamin Sloth Lindgreen: Cover photo.

Made during June 2017 for the JAM 'Canciones del desierto, la tormenta y el mar'. The game is inspired by the song 'Tuuli' from the Swedish/Finnish group Hedningarna.

Polished, extended and translated for the 2017 IF Comp.

The current version of May 2018 has six months of additional work as a post-competition version, hopefully final.

Many thanks to all the people who reported bugs and mistakes and who suggested improvements to the game: Baltasar el Arquero, Johan Paz, No-nonsense, Comely, Chaky, Mariela Scullywen, Pseudavid, Verity Virtue, Joey Jones, Dan Fabulich, Craiglocke, Catacalypto and Jack Welch.

You may find the authors on Twitter: [italic type]@Daurmith and @RuberEaglenest[roman type].

[bold type]Content warning:[roman type] [italic type]Tuuli[roman type] is a short work of fantasy with horror elements: graphic imagery and witchcraft. The game has around thirty minutes of play. There no need to make a map, but saving your progress is wise."

[ CUT WITH ]

Understand "cut [something] with [something]" as cutting it with.

Understand the command "slit" or "slash" as "cut".

Cutting it with is an action applying to one touchable thing and one carried thing.

Check cutting it with:
	if the second noun is not the knife:
		say "You need a sharp object." instead.
		
Carry out cutting it with:
	say "Cutting that will achieve nothing."

Instead of cutting something:
	if the player has the knife:
		try cutting the noun with the knife;
	otherwise:
		say "You need a sharp object."

Instead of cutting the player with the knife, say "You don't need to spill your blood. Not right now."

[ CUT FROM ]
[ This is not working because the test the noun is not part of is not working 
Understand "cut [something] from [something]" as cutting it from.

Cutting it from is an action applying to one touchable thing and one touchable thing.

Check cutting it from:
	if the noun is not part of the second noun:
		say "But [regarding the noun][they] [aren't] there now.";
	otherwise if the player has no knife:
		say "You need a sharp object." instead.
		
Carry out cutting it from:
	say "Cutting that will achieve nothing."
	
Instead of cutting something from:
	if the player has the knife:
		try cutting the noun with the knife;
	otherwise:
		say "You need a sharp object."

]

[ STAB ]

Understand "stab [something] with [something]" as stabbing it with.

Understand the command "nail" as "stab".

Stabbing it with is an action applying to one touchable thing and one touchable thing.

Check stabbing it with:
	if the second noun is not the knife:
		say "You need a pointy object." instead.
		
Carry out stabbing it with:
	say "Stabbing that will achieve nothing."

Understand "stab [something]" as stabbing.

Stabbing is an action applying to one touchable thing.

Carry out stabbing:
	say "You have nothing to stab it with."	

Instead of stabbing something:
	if the player has the knife:
		try stabbing the noun with the knife;
	otherwise:
		say "You need a pointy object."
		
Understand "stab [something] to/into/in [something]" as stabbing it with (with nouns reversed).

[ ANOINT WITH ]

Understand "anoint [something] with [something]" as anointing it with.

Understand the command "grease" or "oil" as "anoint".

anointing it with is an action applying to one touchable thing and one carried thing.

Check anointing it with:
	if the second noun is not the flask:
		say "You need the flask of scented oils." instead.
		
Carry out anointing it with:
	say "Anointing that with the oils will achieve nothing."
	
report rubbing rule response (A) is "There's no need to rub that."

[ POUR as PUT ]

Understand the command "pour" as "put".

[ CLEAN different from RUB ]

Understand the commands "shine", "polish", "sweep", "clean", "dust", "wipe" and "scrub" as something new.

Cleaning is an action applying to one thing.

Understand "clean [something]" as cleaning.

Carry out cleaning:
	say "There's no need to clean that right now."
	
Understand the commands "shine", "polish", "sweep", "cleanse", "dust", "wipe" and "scrub" as "clean".
	
[ UNDRESS DENUDE]

Understand "undress [something]" as undress.

Understand the command "denude" or "unclothe" or "strip" as "undress".

Undress is an action applying to one touchable thing.

Carry out undress:
	say "You can't undress that."
	
Instead of undress yourself, try taking off the dress.

Instead of undress dress, try taking off the dress.

[ TAKE OFF AND REMOVE DOES NOT WORK AS IS ]

[ The following does the work: ]

Definition: a thing is removable if it is part of something. Understand "remove [removable thing] from [something]" as removing it from. 

Understand "remove [removable thing]" as undress.

Understand "take off [removable thing] from [something]" as removing it from.

Understand "take off [removable thing]" as undress.

[ FLAY ]

Understand "flay [something]" as flaying.

Understand the command "skin" as "flay"

Flaying is an action applying to one touchable thing.

Carry out flaying:
	say "You don't need to flay that."

[ SWIM ]

swimming is an action applying to nothing.

Understand "swim" and "dive" as swimming.

Carry out swimming:
	say "There is no water to swim in."
	
[ KISS ]

Understand nothing as kissing.
Understand "kiss [a thing]" as kissing.

Instead of kissing a thing that is not a person:
	say "There's no need to kiss that."
	
Instead of kissing a person:
	say "That's not a proper thing to do right now."

[ KILL different than ATTACK ]

Understand the command "kill" as something new.

[ No Jumping around ]

Understand the command "jump" as something new.

[ No waving ]

Understand the command "wave" as something new.

[ No squeezing ]

Understand the command "squeeze" as something new.

[ No tasting... well, a little bit, yes. ]

Understand the command "lick" as "taste".

report tasting rule response (A) is "It is not appropriate to taste that.".

[ TATTOOING ]

Understand "tattoo [something]" as tattooing.

Tattooing is an action applying to one touchable thing.

Carry out tattooing:
	say "There's nothing to tattoo there."

[ PEER OUT ]

Understand "peer over/out [something]" as peering over.

Understand the command "lean" as "peer".

Peering over is an action applying to one visible thing.

Carry out peering over:
	say "You don't see anything special."
	
[ WASH]

Understand the command "wash" as "clean".

[ WARM ]

Warming is an action applying to one visible thing.

Understand "warm [something]" or "warm up [something]" as warming.

Carry out warming:
	say "There's no need to warm that up."
	
Section 3 - This section intentionally left blank


















Section 4 - Scenes

Search is a scene. Search begins when Hut is visited. 

Conversation is a scene. Conversation begins when Search ends.

Ascent is a scene. Ascent begins when Cliff is visited and the rocks are charged.

SearchPower is a scene. SearchPower begins when Conversation ends. SearchPower ends when the elements are present and the player is in Cliff.

Preparation is a scene. Preparation begins when the elements are present and the player is in Cliff.

To decide if the elements are present:
	if the player has the wineskin and the player can see the knife and the player can see the flask:
		decide yes;
	otherwise:
		decide no.

Ritual is a scene. Ritual begins when Preparation ends.

Muertos is a scene. Muertos begins when Ritual ends.


Chapter 1 - Search for Mákke


Section 1- Hut
 
Hut is a room. "[if unvisited]You wake in your pallet, the scream still scratching at your throat.

You go to Mákke's bed to tell her about your dream. She isn't there, and you know she's dead even before you know where she is. The room is black as her eyes. Cold as her bones. Empty as her body. [otherwise]The hut is no different from others in the village: log walls caulked with mud and bark, a single room with a packed dirt floor. You've spent more time here than in your parents['] home and you know it better than the back of your hand: the working area, Mákke's bed, your own thin pallet. There are also some earthenware and the dried herbs left from the spring recollection. The few treasures that Mákke loved during her life look paltry after her death: the decorated trunk, the small altar with the ritual runes." The printed name of Hut is "In Mákke's hut".
 
Hut is inside of Village.

instead of going nowhere in Hut, say "The only way is out."

The wardrobe is a closed openable container in Hut. The wardrobe is scenery. Understand "trunk" as the wardrobe. The printed name is "trunk". The description of the wardrobe is "A large trunk like the ones used to hold a bride's dowry. The blue, red and green paint is cracked and flaky but you can still see the floral motif Mákke liked so much. It has no key: who would steal from the witch?".

Some clothes of the seasons are in the wardrobe. The description is "The trunk holds all of Mákke's clothes for all year round." Understand "cloth" as the clothes. Instead of taking or searching the clothes, say "You don't want to do that. Suddenly, everything that Mákke has left behind inspires you the greatest respect."
 
The working area is a supporter in Hut. It is scenery. The description of the table is "It is barely a flat stone tha Mákke used to prepare mixtures and , but Mákke needed little else."

The small chest is a closed openable container in Hut. "Her biggest treasure, the small carved ivory chest, lies forgotten in a corner." Understand "treasure" or "ivory chest" or "chest" as the the small chest. The description of the small chest is "Mákke's most prized possession: a beautiful chest made of the whitest ivory and carved with fantastic beasts chasing one another."

Some carvings are part of the small chest. Understand "beasts/animals/figures/ivory" as the carvings. The description is "Bears, eagles, snakes and other beasts you've never seen in forest nor shore chase one another in an endless dance, maybe a happy one, maybe a bloody one; you could never tell. It's the most beautiful, delicate thing you have ever seen. It's almost scary to think that such a precious object is now yours."

Instead of touching the carvings, say "The ivory feels very smooth to your touch. The craftmanship is astounding." Instead of touching the small chest, try touching the carvings.
 
The knife is a magical object in the small chest. Understand "dagger/blade/athame/poignard" as the the knife. Understand "knife of makke" as the knife. The printed name is "knife of Mákke". The description is "The knife of Mákke. Small, but sharp as a witch mind. It has a black stone blade, always cold to the touch. You have always been fascinated by the translucent quality of the stone, the pale gold reflections you can glimpse inside it." The indefinite article is "the".

Some pale gold reflections dorados are part of the knife.

Instead of searching the knife, try examining the pale gold reflections.

Instead of examining the pale gold reflections:
	if the location is Hut:
		say "Direct light would show them better, but in the gloom of the hut you can barely see some dull golden highlights.";
	otherwise if the location is Beach:
		if Muertos is happening:
			say "The golden reflections of the blade are barely visible within: a faint yellow ghost.";
		otherwise:
			say "The golden reflections turn green here and there, following the rhythm of the waves.";
	otherwise if the location is Village or the location is Path:
		say "The golden reflections can barely be seen within the blade, a dying yellowish pattern.";
	otherwise:
		if Ritual is happening:
			say "The golden reflections seem to respond to the furious beating of the sea, burning with a sulphurous fire or turning amber as the sea swells and the storm gathers.";
		otherwise:
			say "The golden reflections of the blade are barely visible within, a dull yellowish pattern.".

After taking the knife for the first time:
	say "Taken.

You watch the knife of Mákke in your hand. And remember her teachings about it: 'the blade tears as much as it conjoins, attaches as well as it stabs.'";
	stop the action.

 The flask is in the small chest. The printed name of the flask is "oil flask". Understand "oil/oils" as the flask. Understand "flask of oil/flask of oils" as the flask. The description is "A glazed clay flask, well-stoppered by a wax seal, keeps the scented oils that Mákke made the previous season with your help. They smell of spring and death: witches use them to cleanse the dead before returning them to the Mother." Instead of opening the flask, say "You take out the wax seal and the scent of spring herbs fills your head. Then you put the seal back." Instead of closing the flask, say "That's already closed."

Instead of smelling the flask, try opening the flask.

The yellow marine sponge is in the small chest. The description is "Mákke used this marine sponge to wash the dead. It's amorphous, yellow and porous. You've always marveled at the wisdom of the old Mother, how she filled the world with wonders for her children to use."

Instead of putting the flask on the sponge, say "You take out the wax seal and pour some of the scented oil on the sponge. The scent of spring herbs fills your head. Then you put the seal back."

The altar is a scenery supporter in Hut. The description is "A small altar made of black stone, for Mákke's daily rituals and sacrifices."

Some decorative runes are part of the altar. The description is "There are decorative runes, here and there, scattered about the hut. Mákke used them to teach you about the gods that rule over the earth, the oceans and every living or dead thing, even over the sky above our heads. There you recognize the rune of Mana, the fearsome ruler of Tuonela, that gave you so many nightmares. The rune of Mielikki, goddess of the far marshy woods. Kuu, he who lights our nights[if the elements are present or SearchPower is not happening].[otherwise].

Each rune tells a story, and yes, in their way, every rune has power, the power to change the spirit of those who listen to them, but these are not the runes you need. You need the runes of the supreme gods: the rune of Ukko on Mákke's wineskin, and the rune of Akka tattooed on Mákke's skin.[end if]". Understand "Kuu/Mielikki/Tuonela/Akka/Ukko/Mana" as the decorative runes.

Some pottery are scenery in the Hut. Understand "belongings" or "earthenware" as the pottery. The description is "Some earthenware pottery is neatly piled up against a corner. You and Mákke needed little else for your daily needs. Now you don't want to think about how your teacher will never use them again."

Some herbs are scenery in the Hut. Understand "dry herbs" as the herbs. The description is "Graying bunches of sage, chives and wild parsley hang from the ceiling. Everybody thinks Mákke used them for her spells, but as you know very well they were just for cooking." Understand "sage/chives/parsley" or "wild parsley" or "dry herbs" as the herbs. Instead of taking the herbs, say "You have more pressing things to do than to think about food." Instead of smelling the herbs, say "Their scent reminds you of fish stew and seasoned meat, of happier times where food was plentiful and the village thrived."

The mattress is scenery in Hut. Understand "pallet" as the mattress. The description is "Your pallet is made of wool, stuffed with dry straw and some herbs to keep away the fleas." Instead of entering the mattress, say "Now it's not the time for sleeping."

The bed is scenery in Hut. The description is "Mákke's bed is empty and cold. She left in the middle of the night." Understand "mákke's bed" or "makke's bed" or "makke/mákke" as the bed. Instead of entering the bed, say "The witch sleeps here. Until you've proven otherwise your place is your pallet on the floor."

After examining down in Hut, say "Well, except for the packed dirt floor. One of your duties is to clean it up every day, hard as it may be."

Instead of examining up in Hut, say "You see nothing unexpected in that direction."

The hut_inside (f) is scenery in Hut. Understand "hut/inside" as the hut_inside. Understand "hut of makke" or "hut of mákke" or "makke's hut" or "Mákke's hut" as the hut_inside. The description is "The four walls of Mákke's hut have been your home since you can recall. Everything from the logs that make the hut to the few utensils it holds are as familiar to you as your teacher's wrinkled face." The printed name is "hut". The indefinite article is "the". Instead of getting off the hut_inside, try exiting.


After going to Village for the first time: 
	say "As you get outside you feel the cold of the snow through your boots.";
	continue the action.
	
Section 2 - Village

Village is a room. "[if Village is deserted]The village sleeps in the cold hour before dawn. The sun is still down, but there's already light behind the horizon, bathing the night's snow in a eerily glowing white.[otherwise]The village is stirring, waking to life by degrees. A long gray day awaits. About thirty frail huts make the village. Some are but a few thatched planks. Others are more solid, a reminder of more prosperous times, made with logs and caulked with mud and birch bark. Here and there you can see a small plot instead of a house, or a goat pen from which the goats look disdainfully at the world. The women prepare fish for smoking or salting and the men fix the fishing gear or mend the thatch of the huts. You feel the looks as you walk by and hear some furtive whispers.[end if]

[if Village is deserted]A path nearly covered by snow[otherwise]The path[end if] comes from the beach at the west and continues northwards, climbing the mountain.

Mákke's hut is here, set slightly apart from the rest but still within the village's limits." The printed name is "In the village".

The hut_outside is scenery in Village. The description is "You always thought Mákke was wrong in not marking her hut as different from others. The wooden pieces has some remnants of painting that may have been runes years ago, and a bunch of sad little rabbit bones hang from the eaves, but apart from that nothing suggests that the witch lived there." Understand "hut" or "hut of makke" or "hut of mákke" or "makke's hut" or "Mákke's hut" as the hut_outside. Instead of entering hut_outside, try going inside.

Some ossicles are part of the hut_outside. Understand "paint/bones/runes/rabbit" as the ossicles. The description is "Definitely, the witch's hut needs a new decoration."

Village is east of Beach.

The beach_far is scenery in Village. The description is "To the west lies the beach that opens up to the bay. From there comes an icy, salty wind, bringing to the village the smells and sounds of the sea." Understand "bay/beach" as the beach_far. Instead of entering the beach_far, try going west.

The snow (f) is a backdrop. It is in Village, Path and Cliff. The description is "[if the location is Village]You can see Mákke's prints in the snow, her small feet staggering northwards.[otherwise if the location is Path] You can see Mákke's footprints: her feet at first, then the imprints left by her hands and knees. She crawled along the path, climbing towards the cliff overlooking the bay, where the old witch stone is. Not far now. [otherwise if the location is Cliff]Mákke's tracks take you to the cliff's edge. She stopped there. Just at the very edge there's a patch of trampled snow and the tracks end.[otherwise]The snow fallen during the night still lies in a white mantle here and there. It's starting to melt in some places." Understand "footprints" and "jumble" and "trampled snow" and "patch" as the snow.

After examining the snow for the first time:
	now the snow is handled.

After going to Village for the fifth time during Search:
	if the snow has not been handled:
		say "You notice a trace in the snow that had gone unnoticed, and luckily, you have not hidden with your own footprints.";
	otherwise:
		say "You can still see Mákke's footprints staggering northward, towards the top of the cliff.";
	continue the action.

The clouds is a backdrop. It is in the Village, Path, Cliff and Beach. Instead of examining the clouds, try examining up.
		
Instead of examining down when the player can see the snow, try examining the snow.

Instead of examining up when the Village is populated:
	if Ritual is not happening:
		try examining the albatross;
	otherwise:
		continue the action.

Instead of examining up when the Village is deserted, say "The gray clouds reflect the dim light that comes from the still hidden sun in the east."

The path_obj (m) is a backdrop. Understand "path/trail" as path_obj. It is in Village, Path and Cliff. The printed name is "path". The indefinite article is "the".

Instead of examining the path_obj:
	if the location is Cliff:
		continue the action;
	otherwise:
		try examining the snow.
		
Instead of entering the path_obj:
	if the location is Cliff:
		say "The path goes south, climbing down the mountain.";
	otherwise if location is Path:
		say "The path climbs the mountain, south to north.";
	otherwise if location is Village:
		say "The path weaves from the beach in the west to the mountain in the north."

Instead of going nowhere in Village, say "You can go north to the cliff, west to the beach, or go inside Mákke's hut."

[ Scenery ]

Some huts (f) are scenery in Village. Understand "village/house/houses" as the huts. The description is "Many huts in the village are made with logs and caulked with mud and birch bark. Others are but frail structures made with planks and twigs, barely holding together."

Instead of entering the huts, say "There is no need to go to the village."

The roof is part of the huts. The description is "The roofs are thatch or made from bark and twigs." Understand "leaves/branches/roofs" as the roof.

Some planks are part of the huts. The description is "The huts are built with wood from the nearby forests." Understand "boards" as the planks.

The tree bark is part of the huts. The description is "Mud and birch bark are used to caulk roofs and walls in the village huts." Understand "mud/birch/bark" as the tree bark.

Some villagers (m) are persons. The description is "Hardy men, seasoned by the neverending toil at sea.[one of] Some of them glance at you, fear mingled with curiosity, but they soon return to their work.[or][stopping]". Understand "men" as villagers. The printed name is "men".

Some femvillagers (f) are persons. The description is "[one of]From the moment you started your apprenticeship with Mákke you have felt the looks and whispers of the women, quickly muted as you pass by. These days the women fake indifference better than the men; they look for all the world as if they are genuinely focused on their work.[or] The women are bent over their work: all the seemingly trivial tasks that keep the village going.[stopping]". Understand "women" as femvillagers. The printed name is "women".

Some children are persons. The description is "The children continue their games as usual, unaware of the threats that loom over the village.[First time] You do not miss playing as one of them. Those times ended once you became Mákke's pupil.[only]". Understand "boys/girls/boy/girl" as the children.

When Search ends:
	move villagers to Village;
	move children to Village;
	move femvillagers to Village.

Some orchards are scenery in the Village. Understand "orchard/small/onions/cabbage/plots/vegetables" as the orchards. The description is "Small plots for growing the few things that spice up the village's meager fish diet: turnips, wild onions, cabbages, some tangled billberry bushes." Instead of taking the orchards, say "It is part of the orchard."

The corral is scenery in the Village. The description is "A few planks and twigs make a rickety fence to stop the animals from escaping, which still happens from time to time. The goats especially like running away and going up the cliff." Understand "pen" or "fence" as the corral.

Some goats are animals in Village. The description is "Bad-tempered and untrustworthy as all the goats you have ever met. They may bite your hand off if you give them half a chance." Understand "goat" as the goats.

Before listing nondescript items of the Village: 
	if villagers is marked for listing: 
		now villagers is not marked for listing;
	if femvillagers is marked for listing: 
		now femvillagers is not marked for listing;
	if children is marked for listing:
		now children is not marked for listing;
	if goats is marked for listing: 
		now goats is not marked for listing.

Section 3 - Path
 
Path is a room. The description is "The narrow path leading from the village to the cliff is barely a trail in the snow. Goats use it to chew the hardy grasses growing on the wind-swept heights, and witches use it to go the black stone to perform rituals of winter and spring, of life and death. It winds its way up north along the mountain's slope to get to the cliff's edge. To the south, it reaches the village."
 
Path is north of Village. Instead of going up in Path, try going north.
Instead of going down in Path, try going south.


Section 4 - Cliff
 
Cliff is a room. The description is "A small flat extension which drops precipitously to the sea in its west side. Leaning out you can see the rocks of the nearly-vertical rock wall and the albatrosses['] nests, turning the stones white with their droppings. There's little to see here: down is the small bay by the village, and the hostile sea to the west and north. And, of course, the witch stone."

 Cliff is north of Path. Instead of going down in Cliff, try going south. 

Instead of going west in Cliff, say "You don't want to lose your footing and [if the rocks are handled]suffer the same fate as your teacher.[otherwise]fall down."
Instead of going north in Cliff, say "You don't want to lose your footing and [if the rocks are handled]suffer the same fate as your teacher.[otherwise]fall down."
 
Some rocks (f) are a magical object in Cliff. The rocks are scenery. The rocks are outofreach. The description is "You peer down cautiously, careful of the treacherous gusts that could make you fall. You can see the albatrosses['] nests and the stones barely covered in some moss and dry plants." Understand "nests/stones/nest" as the rocks.

Understand "edge" or "edge of the cliff" as the rocks.

Instead of examining down in Cliff for the second time, try examining the rocks.

Instead of peering over the mountain in Cliff, try examining the rocks.

Instead of peering over the rocks, try examining the rocks.

Instead of searching the rocks, try examining the rocks.

The black stone is an enterable supporter in Cliff. It is scenery. Understand "altar/boulder/stone" as the black stone. The description is "The witch stone is a low, long boulder, the size of a man. Smooth, black, carved ages ago by hard hands and discolored by the innumerable rituals, it is a place of power for witches. Few go near it, fewer still dare touch it."

Instead of touching the black stone, say "You reach out with your hand and --  well, yes, it is cold. No surprise there."

Instead of rubbing the black stone, say "You reach out with your hand and -- [first time]caress the cold stone with anticipation. [only]It's quite rough."

Instead of tasting the black stone, say "You bend over the black stone of the witches, expectantly, and -- [one of]tastes exactly like it did in your dreams.[Or]tastes just as usual.[or]What does a stone with the dried blood of past eras taste?[Or]Your tongue feels like a dried cabbage.[stopping]"

The blood is part of the black stone. Instead of doing something to the blood, say "There is blood everywhere here: blood from past eras over the witch stone[if the wound is part of the player], the blood of your wound dripping on it[end if][if the knife is charged], black witch blood on the knife's blade[end if][if the player can see Mákke], congealed blood on the wounds of Mákke[end if], live blood running through your veins[if level is greater than gust], there may even be albatrosses's blood somewhere[otherwise], the blood that moves and gives life to the albatrosses and to every creature under the sky[end if]. [one of]There is blood everywhere here.[or]Seriously, there's no need to do anything with the blood.[stopping]".

The cloak is a thing in Cliff. "Mákke's sealskin cloak lies on the ground by the black stone. You don't know if it was left there or the wind blew it there." The cloak is wearable. Understand "sealskin cloak" and "cloak" and "fur cloak" and "makke's cloak" or "makke cloak" or "cloak of makke" as the cloak. The description is "Mákkes sealskin cloak. Gray, soft, warm." Instead of touching the cloak, say "It's very soft and warm." The printed name is "sealskin cloak".

After wearing the cloak, say "You drape the cloak around your shoulders. It warms you up instantly."

Instead of smelling the cloak, say "Mákke's cloak smells of wet animal grease."

The bay_far is scenery in Cliff. Understand "bay/beach" as the bay_far. The description is "From this height the bay looks like a dark-rimmed crescent Moon. It opens to the west." The bay_far is outofreach.

The sea is scenery in Cliff. Understand "waves/water/waters" as the sea. The description is "The sea beats down the cliff, slow and relentless." The sea is outofreach.

Some albatross are a backdrop. They are in Village, Path, Beach and Cliff. The description is "[if the location is Village]Albatrosses fly over the village looking for food for their chicks. [otherwise if the location is Path]Hanging from the sky, the albatrosses let themselves be carried by the wind's currents. [otherwise if the location is Beach]From time to time you can see the quick white flash of an albatross plunging into the sea to fish. [otherwise if the location is Cliff]From here you see the albatrosses throw themselves at the rock cliff and then land smoothly on their nests. [otherwise]The albatrosses explode because of the BUG that makes you see them where they shouldn't be. Everything is covered in blood and feathers." The albatross are outofreach.

Instead of examining the albatross for the first time:
	if Ritual is not happening and Muertos is not happening and Search is not happening:
		say "The albatrosses crisscross the sky in elegant curves, their wings easily slashing the chilly air like black swords. Their shrill calls and clicks, and beautiful white plumage, have been the village's background music and color since you can remember.";
	otherwise:
		continue the action.

Instead of taking the albatross:
	if location is Beach:
		say "The albatrosses keep out of your reach. Quite easily, too.";
	otherwise:
		say "The albatrosses are out of reach."

Instead of throwing something at the albatross:
	if Search is happening:
		say "You do not see any albatrosses around here.";
	otherwise:
		if the player is wearing the noun:
			say "First you have to take off [the noun].";
			stop the action;
		say "You throw [the noun] at an albatross, but it dodges easily[one of] and it flees away[or], it grunts at you and flees away[or] jumping aside some meters[or] jumping aside and it keeps ignoring you[purely at random] out of reach[one of][or][or]. Albatrosses are especially good at not letting themselves trapped[or]. Seriously, this is futile[or]. Really, it's almost impossible to hunt an albatross that way[or]. Seriously, there's no need to hunt any albatross for this story[stopping].";
		move the noun to the location.

Instead of examining the albatross during Search, say "The albatrosses are nowhere to be seen. Maybe they are asleep now."

Instead of examining the albatross during Ritual, say "The sky is free of albatrosses. They have probably sought shelter from the storm."

Instead of examining the albatross during Muertos, say "The albatrosses fly across and over the bay and land in large groups on the beach. Fresh, dead meat is a feast to them."

The horizon is a backdrop. It is in Cliff and Beach. It is outofreach. The description is "There the sea of gray clouds melts into the deep gray-blue of the sea, an unknown haze that foretells the worst of your nightmare."

Section 5 - Mákke in the rocks

The body_makke (f) is part of the rocks. It is outofreach. The description is "[if body_makke is part of the rocks]Her eyes are open and full of snow, and her hand holds an empty wineskin. Her mouth is fear.[otherwise]Mákke is stiff and cold." Understand "body/makke/teacher" or "body of makke" as body_makke. The printed name is "body of Mákke". The indefinite article is "the".

Instead of searching Mákke, try examining Mákke.

After examining the rocks when body_makke is part of the rocks:
	now the rocks are handled;
	say "Mákke has fallen down the cliff but hasn't reached the sea. You can see her body on the white stones, amidst the albatrosses['] nests. Her eyes are open and full of snow and her hand holds an empty wineskin. Her mouth is fear."
	
Instead of doing something to the body_makke when the rocks are not handled, say "You can't see her up here, but you fear the worst." 

Instead of taking or cleaning or touching or pushing or rubbing or pulling or tasting or undress or cutting the body_makke when body_makke is on the stone, say "No, you still need the elements to prepare your teacher to enter the afterlife."

Instead of kissing body_makke when body_makke is on the stone, say "[one of]You lean over your teacher and kiss her forehead, thanking her for her teachings and wishing her passing unto the next life had been less violent.[or]You've already said your farewells.[stopping]"

Search ends when the rocks are handled.

When Search ends:
	say "You must speak to Árvet about the nightmare and Mákke's death. Because you know what's coming, what you must do next. And you fear it as you have never feared anything before.";
	now Cliff is populated;
	now Village is populated;
	now Path is populated;
	now Beach is populated;
	pause the game;
	say "[line break]".
 
Chapter 2 - Beach and chief
 
Section 1 - Beach
 
Beach is a room. "A narrow strip of dark pebbles is the village's exit to the sea. To each side, the wooden piers for the fishing boats define a small bay of cold and restless waters. [if the Beach is deserted]The darkened, cloudy sky extends over the sea as far as the eye can see. To the east the village still sleeps.[otherwise]The sky covered with gray clouds is crisscrossed by the powerful flight of the albatrosses. To the east rest the village.[end if]". The printed name is "On the beach".

The dark pebbles is scenery in Beach. "Small dark stones polished by the sea in round and sometimes strange shapes." Instead of taking the pebbles, say "There's no need to carry that around." Understand "small/stones" as the pebbles.

Instead of examining down in Beach:
	if Muertos is happening:
		say "The remnants of the black ships cover the beach as far as the eye can reach.";
	otherwise:
		try examining the pebbles.

Some piers are scenery in Beach. "Wooden piers. The boats are small, practical, unprepossessing." Understand "barges/dock/pier/wharf/boats/boat" as the piers.

The bay is scenery in Beach. "The bay is bound by land towards the south. The village can be found to the east, and the cliff and mountain are northwards. To the west, it opens to the sea." Understand "ocean" as bay.

The mountain is a backdrop. It is in Beach, Village, Path and Cliff. Understand "cliff" as the mountain. The description is "[if Search is happening]The dark bulk of the cliff protects the village from the colder winds. The sea whispers and dissolves in white foam against the cliff.[otherwise if the location is Beach]From the beach you can see the rocky wedge of the mountain, cut out against the light between the grey sky and the iron-colored sea. Keen eyes could see the square shape of the witch stone at the top.[otherwise]The dark bulk of the cliff protects the village from the colder winds. The sea whispers and dissolves in white foam against the cliff, the dun surface of the rocks crisscrossed by the powerful flight of the albatrosses." The mountain is outofreach.

The stone_far is scenery in Beach. Understand "stone of the witches" or "stone" or "witch stone" as the stone_far. The stone_far is outofreach. The description is "It's too far away."

Instead of examining the mountain in Cliff, try examining the rocks.

Instead of going north in Beach, say "The sheer cliff cuts your way in that direction."

Instead of going south in Beach, say "There's nothing there but bogs and boredom."

Instead of going west in Beach, say "The sea opens up in that direction."

The water is scenery in Beach. Understand "sea/beach/waters" as the water. The description is "The freezing waves pound the beach."

Instead of swimming in Beach, say "This is not the right season. The water in the bay is deathly cold and the waves are too strong for bathing."

After going to Beach for the third time during Search:
	say "[line break][bold type]On the beach[roman type][line break]No, there seems to be no trace of your teacher in the bay. You must keep looking for her elsewhere.".
 
Section 2 - Árvet, the chief

When Conversation begins:
	now Arvet is in Beach;
	now the description of the snow is "[if the location is Village]The snow fallen during the night still covers some areas. It's been trod or shoveled away in others, witness to a waking village.[otherwise if the location is Path]You can see some tracks on the snow from people going up and down the cliff. Yours included. [otherwise if the location is Cliff]All the work going on here has erased the sad tracks of the morning.[otherwise]The snow fallen during the night still covers some areas.";
	now the player is in Beach.
	
 
Arvet is a man. "[if Beach is unvisited]Árvet is chief. He is in the bay mending a net and looking at the gray, restless sea.[otherwise]Chief Árvet is here." Understand "chief" as Arvet. The printed name of Arvet is "Árvet". The description is "He is not young anymore: his hair is already touched by snow. But his beard is black, his arms are strong, and he can pull his catch ashore by himself. Mákke was his counselor and he learned a lot from her."

The litany of Arvet is the Table of Arvet Conversation.

Before going: terminate the conversation.
 
Table of Arvet Conversation
prompt					response		enabled
"'I have seen death.'"					iveseen		1
"'Mákke is dead.'"					hi		1
"'It's true, I'm too young.'"					itstrue		0
"'Mákke is no longer the witch.'"					iam		0
"'Why do you ask what you already know?'"					youknow		0
"'The witch screamed, I screamed...'"					screams		0
"'What woke you?'"					wokeyouup		0
"Árvet is wise..."					wisearvet		0
"Wait silently."					dream		0
"'We three have had the same dream.'"					thethree		0
"'So shall we wait for death?'"					death		0
"'I shall be the witch.'"					iwillbe		0
"'I know...'"					iknow		0
"'I will pay.'"					willpay		0
"You don't know what to say."					silence2		0
"There is nothing else to say."					silence3		0
"Exit the conversation."					silence		1

 
After quipping when the current quip is silence:
	enable the silence quip;
	terminate the conversation.
After quipping when the current quip is hi:
	disable the iveseen quip;
	enable the iam quip;
	enable the itstrue quip.
After quipping when the current quip is iam:
	disable the itstrue quip;
	enable the youknow quip;
	enable the screams quip.
After quipping when the current quip is screams:
	disable the youknow quip;
	enable the wokeyouup quip.
After quipping when the current quip is wokeyouup:
	enable the wisearvet quip;
	enable the dream quip.
After quipping when the current quip is wisearvet:
	disable the dream quip;
	enable the thethree quip.
After quipping when the current quip is dream:
	disable the wisearvet quip;
	enable the death quip;
	enable the iwillbe quip.
After quipping when the current quip is thethree:
	enable the death quip;
	enable the iwillbe quip.
After quipping when the current quip is iwillbe:
	disable the death quip;
	enable the iknow quip.
After quipping when the current quip is iknow, enable the willpay quip.
After quipping when the current quip is willpay:
	enable the silence2 quip;
	disable the silence quip.
 
After quipping when the current quip is silence2:
	now the rocks are charged;
	disable the silence quip;
	enable the silence3 quip;
	terminate the conversation.
 
After quipping when the current quip is silence3:
	enable the silence3 quip;
	terminate the conversation. 

Table of Quip Texts (continued)
quip	quiptext 
hi	"'Old Mákke is dead. She fell down the cliff,' you tell him. 'You must send two men who already have seen death's face to recover her body. And then you must leave me with her.'[paragraph break]
Árvet looks at you:[paragraph break]
'And why must I leave you alone with our witch, young Lenne?'"
iam	"'Mákke is not the witch anymore: she is crow and wind now, she is ice and ashes. Lenne is the witch now, Lenne who learned from Mákke. Lenne will take care of Mákke in death,' you tell him, but you're shaking inside because you know you are not yet the witch, and Árvet is a man, and only a witch can tell a man how things are.

Árvet looks again at the sea, swollen like a bruise.[paragraph break]
'In the night I heard screams, young Lenne-that-would-be-the-witch,' he says softly. 'Who screamed?'"
screams	"'The witch screamed,' you say. 'Mákke screamed, and I screamed. I screamed because Mákke screamed, and Mákke screamed because she had a dream. And you heard us because you were awake, chief Árvet, while the village slept.'"
wokeyouup	"'What woke you up?,' you ask. You know Mákke taught Árvet well, while teaching you — not enough. Mákke used to say that your mouth was too big and your ears too small. She said you learned fast but you didn't know how to wait. She said it would take you some time to become a witch. 
 
But there is no more time.
 
'I woke from a dream of black ships full of tall men, a dream of men with axes that came from the cold sea,' Árvet says. 'You tell me, Lenne, was it the dream of a dotard or was it the dream of a woken man?'"
dream	"You don't answer because Árvet knows the answer already. And because you've had the same dream, and so did Mákke. All three of you have dreamed the death of the village under the axes of the men that come from the North, crossing the sharp ice seas. That's why Mákke went to the cliff before dawn. And died there.[paragraph break]
'We cannot fight the tall men,' Árvet says. 'The sea has taken too many youngsters, the women are weak from lack of food, the children have no milk. Death comes in the black ships, young Lenne, and we have no witch to defend us.'"
thethree	"'We three have had the same dream. We all have dreamed the death of the village under the axes of the men that come from the North, crossing the sharp ice seas. That is why Mákke went to the cliff before dawn. And found her death there.'[paragraph break]
'We cannot fight the tall men,' Árvet says. 'The sea has taken too many youngsters, the women are weak from lack of food, the children have no milk. Death comes in the black ships, young Lenne, and we have no witch to defend us.'"
death	"'Shall we wait for death like an old goat, then?' you say, because your mouth is still too big and your ears are still too small. [paragraph break]
'If we had a witch, the witch could save us. If we had a witch, she could call forth the storm. If we had a witch maybe we would live to fish in the long days of the sun season, and get fat on seal's blubber and raise more children and live again,' says Árvet. 'But we have no witch, for Mákke is dead.'"
iwillbe	"'I shall be the witch,' you say. 'I will call forth the storm.'[paragraph break]
'You.' Árvet mocks you. 'You don't know how, Lenne. Have you learned the words? Do you know the objects?'"
iknow	"'Mákke taught me: I know the words and the objects,' you tell him. It is the truth: the wineskin to gather the wind. The knife for the ritual bloodletting. The runes that hold the power.[paragraph break]
'But you have not met the gods. You do not have the power. You do not know the price'.[paragraph break]
Árvet also speaks the truth. You are thirteen and you haven't met the gods. Not like you'll know them in the future. But at thirteen you don't talk of what you don't know, for you think you know everything."
willpay	"'I will meet the gods and I will pay the price, chief Árvet,' you say. 'And if I fail we will die like goats submitting to the knife, under the axes of the tall men and under the eyes of the gods.'[paragraph break] 
Árvet looks at you for a long time. You know what he sees — your maiden braids, your stained woollen dress, the hard twist of your mouth. He sees a girl with a big mouth and small ears. He doesn't see the witch."
silence2	"'Let it be so,' Árvet says after a moment of thought. 'Go to the cliff. I shall send two men to recover Mákke's body. Do what you must, young Lenne. If death wants to meet us, let her meet also the men from the black ships. May the gods determine who will pay for the blood that will be spilled.'[paragraph break]
There is nothing else to say. The chief has spoken: you must perform the ritual."
silence	"[if the altar is charged]There is nothing else to discuss with the chief. Do your work, young Lenne-who-would-be-the-witch.[otherwise]You turn your back to Árvet and walk away a few paces, chagrined."
silence3	"There is nothing else to discuss with the chief. Do your work, young Lenne-who-would-be-the-witch."
iveseen	"'I have seen death in my dream, chief Árvet.'[paragraph break] 
Árvet blinks. [paragraph break] 
'All men that dream see death there, Lenne. And all women, too. What do you mean?'[paragraph break]
Árvet is right. You are the witch now, your words have weight. You must shape them with care before letting them out.[paragraph break] 
Árvet waits, with more patience than you expected, for you to order your ideas.[paragraph break]
'It is about my teacher—'"
itstrue	"'It is true,' you say, and anger creeps into your voice before you can check it. 'I am too young and too inexperienced. We can only wait for death because our wise chief Árvet has decided that he cannot give the pupil some time alone with her teacher.[paragraph break] 
Árvet's dark eyes flash in sudden fury. Yes, you have gone too far. [paragraph break] 
'Forgive me, chief Árvet,' you say. 'I should not have spoken so. But I need what I have asked of you. I have my reasons.'[paragraph break] 
'What are your reasons, Lenne?'"
youknow	"'Why do you ask what you already know? Would you know what I know? Very well, I shall tell you.'"
wisearvet	"You study Árvet for some moments. You know your chief for a wise man and you know his eyes are open, be him asleep or awake. But you didn't expect him to have dreamed the same dream as you. Árvet notices your surprise.[paragraph break] 
'I am not a dotard, Lenne,' he says, some humor creeping into his voice. 'I know this dream is a warning. Maybe I was hoping that you would tell me it was nothing more than a hunger-dream, the fancy of an empty stomach,' he sighs. 'I know better know.'"

 
Conversation ends when the rocks are charged.

When Conversation ends:
		say "Árvet calls for Panu and Mikko. He talks with them a while, sending them on the errand you need. They go, none too happily, past the village and to the cliff.

Árvet looks again at the sea, now gray as the sky, and talks no more.";
	now the Cliff is unvisited.

Clue is a kind of object. A clue can be shown. A clue is usually not shown. ClueElements is a clue.

After of going to the Village when Conversation has ended and clueElements is not shown:
	now clueElements is shown;
	say "Walking towards the village, you go through the elements necessary to call the storm: the runes of power, the rune of Ukko and the rune of Akka, scented oils to cleanse Mákke's body , Mákke's black stone knife for the bloodletting. And the most important part: that you are, that you must be, the witch. You can only hope that all the gods and Mákke's spirit will look upon you with kindness, for yourself and for your people.";
	continue the action.

Chapter 3 - The ascent and the wineskin

Section 1 - Ascent

Instead of going to Cliff when Cliff is unvisited and the rocks are charged:
	move the player to the Cliff, without printing a room description;
	say "[line break][bold type]Cliff[roman type]".
	

Panu is a man. The description is "Panu is still not done growing and some doubt he ever will be: tall as a birch-tree, blond and willowy, bucktoothed. His skin is white, his hair like stiff hay, his eyes pale blue; the only color about him is the smattering of scarlet pimples that mar his face."
Mikko is a man. The description is "Mikko is short and wide like a fir stump, with thick black hair and a thick black beard. His small eyes are lively and bright as freshly-chipped charcoal."

When Ascent begins: 
	say "Panu and Mikko are with you on the cliff. You watch as they bring Mákke's body up with ropes. Panu, the youngest, climbs down to the albatrosses['] nests to secure her. Mikko, the eldest, pulls and pulls until your teacher comes back to you. She's cold and cramped, stiff as a tree, and the melting snow drips from her eyes like tears.[paragraph break]
'Would you have us take her to her bed, Lenne?,' Mikko asks. You're about to say yes, but then you shake your head.[paragraph break]
'Place her on the witch stone and leave me alone with her.'[paragraph break] 
They look at you, then at each other. It's plain they don't see you as the witch but there is no-one else here and Árvet told them to obey you. So they do: they leave Mákke's body on the witch stone and they go back a few paces. You look at your teacher's empty hands.[line break]";
	move Panu to Cliff;
	move Mikko to Cliff;
	now the description of the snow is "[if the location is Village]The snow fallen during the night still covers some areas. It's been trod or shoveled away in others, witness to a waking village.[otherwise if the location is Path]You can see some tracks on the snow from people going up and down the cliff. Yours included.[otherwise if the location is Cliff]All the work going on here has erased the sad tracks of the morning.[otherwise]The snow fallen during the night still covers some areas.";
	move body_makke to the stone;
	now the body_makke is not outofreach;
	move the wineskin to Panu;
	move the player to Cliff, without printing a room description;
	try talking to Panu.

Section 2 - Conversation with Panu

The litany of Panu is the Table of Panu Conversation.

Table of Panu Conversation
prompt							response	enabled
“'Panu, what happened to the wineskin?'”							wherewineskin	1
"'You must give me back that wineskin.'"							giveittome	0
"'You will do as I say.'"							doit	0

After quipping when the current quip is wherewineskin, enable the giveittome quip.
After quipping when the current quip is giveittome, enable the doit quip.

After quipping when the current quip is doit:
	now the wineskin is in player;
	now the wineskin is handled;
	terminate the conversation.
	
Table of Quip Texts (continued)
quip		quiptext
wherewineskin		"'Panu, what happened to the wineskin that Mákke had in her hand?[paragraph break]
'It is a good wineskin, Lenne,' Panu says. 'It is good leather, and well-seasoned, and has no holes. And old Mákke has no use for it anymore.'"
giveittome	"'You must give me back that wineskin, Panu,' you say, firmly. Because your eyes are open at last and you know what you must do and how to do it, as if Mákke herself is whispering to you with her dead lips. 'You must give it to me because from it I shall pull the storm and the squall, the gale and the tempest, life and death themselves. In my hands that wineskin will hold Ukko's breath and Akka's strength.'[paragraph break]
'But it is only a wineskin, Lenne...'"
doit		"'Do as I say,' you command. And maybe you have what it takes to be the witch, because Panu takes the wineskin from his satchel and gives it to you.

'Go back to the village, and whatever happens, whatever you hear, do not come near the stone,' you say, forcefully.[paragraph break]
You know they won't. You watch as both men hurry down the path, without looking back at you even once."


Ascent ends when the wineskin is handled.

When Ascent ends:
	remove Panu from play;
	remove Mikko from play;
	move black ships to Cliff;
	say "You are alone with your teacher, the gods, the wind and the black ships that can already be seen in the horizon.";
	if the elements are present:
		do nothing;
	otherwise:
		say "[line break]But you still need the necessary objects to prepare Mákke and to perform the ritual.".

	 
Chapter 4 - The ritual

Before going south during the Preparation, say "You know there's no way back. You must go through with the ritual.[line break]" instead.
 
Before going south during the Ritual, say "You know there's no way back. You must go through with the ritual.[line break]" instead.

Instead of taking Mákke during Ascent, say "Mákke wears the rune of Akka, she must be on the stone."

Instead of taking Mákke during Preparation, say "Mákke wears the rune of Akka, she shouldn't be moved from the stone."

Instead of taking Mákke during Ritual, say "You no longer need Mákke; you must concentrate on the ritual."

Section 0 - Mákke, the witch

Mákke (f) is a magical object. Understand "body/makke/witch/teacher" or "body of Mákke" or "body of makke" or "makkes body" as Mákke. The description is "Mákke is cold and stiff, grotesquely twisted in a death-spasm. Mákke wears the rune of Akka tattooed on her skin, under the damp, dark clothes still holding snow in their folds."

The rune of Akka is a magical object. The rune of Akka is part of Mákke. The description is "The rune of Akka tattooed on the skin of Mákke. Akka is the goddess of fertility, of female strength and sexuality, of all that grows. Every witch must have her rune tattooed on her skin. You still don't have it: you need Mákke's."

Does the player mean doing something to the rune of Akka: it is likely.

Instead of dropping the rune, say "No, you need it with you."

Instead of taking the rune when the rune is part of the arm, say "The rune is on your arm. You possess it, but it's still not a part of you."

Instead of putting the rune on the black stone, say "No, the wind would blow it away."

Instead of eating the rune, say "Eating the rune would only destroy it."

The cloth is part of Mákke. The cloth is a thing. The description is "Mákke's garment is a simple woollen dark tunic, just like yours. A witch garment." Understand "dark/clothes/tunic/dress" as the cloth. The printed name is "clothes". Instead of smelling the cloth, say "Mákke's tunic smells of grease and old wet wool, with a touch of lavender."

The wineskin is a magical object. It is part of Mákke. The description is "Mákke's wineskin. She herself branded on it the rune of Ukko, the rune of power. It's made of good leather, well seasoned, and Mákke always used it to hold her bark liquor, but as you know well, you can use it to call forth the storm. You have seen it more than once." Understand "bottle" or "leather bottle" or "pelt of wine" as the wineskin.

Instead of opening or closing the wineskin, say "That's not necessary right now."

Instead of inserting anything into the wineskin, say "No, you need it just as it is."

Instead of putting anything on the wineskin, say "No, you need it just as it is."

Instead of dropping the wineskin, say "No, you need the wineskin with you."

Instead of putting the wineskin on, say "That's not wearable."

The rune of Ukko is part of the wineskin. The description is "The rune of power representing Ukko, the black man. Weaver of the wind, of time and storms."

Instead of cutting the rune of Ukko with the knife, say "No, the wineskin is an object of power; you need it whole." 

Instead of cutting the wineskin with the knife, say "No, the wineskin is an object of power; you need it whole."


Section 1 - Preparation

[ States of Mákke :
+	
+	- Cloth is part of Mákke /Cloth is handled
+	- Mákke Handled / not handled (rigor mortis)
+	- charged / uncharged (for being anointed and ready for the afterlife) ]

When Preparation begins:
	remove body_makke from play;
	move Mákke to stone;
	say "You have all the necessary elements. It is time to prepare Mákke."

Instead of kissing Mákke, say "[one of]You lean over your teacher and kiss her forehead, thanking her for her teachings and wishing her passing unto the next life had been less violent.[or]You've already said your farewells.[stopping]"

Instead of smelling Mákke when the cloth is part of Mákke, try smelling the cloth.
Instead of smelling Mákke when the cloth is not part of Mákke, say "Mákke smells sour and bitter, like the sea and the dead."
Instead of smelling Mákke when Mákke is charged, say "She smells like pine trees and lavender, like winter and clean sea air."

[ Removing the cloth of Mákke ]

Instead of undress Mákke, try cutting the cloth.

Instead of taking the cloth, try cutting the cloth.

Instead of undress the cloth, try cutting the cloth.

Instead of removing the cloth from Mákke, try cutting the cloth.

Instead of cutting the cloth, try cutting the cloth with the knife.

Instead of cutting the cloth with the knife when the cloth is handled, say "There's nothing else you need to do with Mákke's clothes."

Instead of taking the cloth when the cloth is handled, say "There's nothing else you need to do with Mákke's clothes."

Instead of putting the cloth on when the cloth is handled, say "There's nothing else you need to do with Mákke's clothes."

Instead of cutting the cloth with the knife:
	if Mákke is handled:
		say "You cut the clothes with Mákke's black stone knife. It's a weird thing, but Mákke seems smaller now she's dead than when she was alive. You throw the clothes aside.";
	otherwise:
		say "You cut the clothes with Mákke's black stone knife. It's difficult in her current state, so rigid and contorted – the cloth does not seem to want to come off from her owner – but the sharp edge of the dark blade is up to the task. You cut, pull and tear until the cloth is reduced to rags. And finally you reach your macabre goal: the small naked body of your teacher Mákke, her face set in a horrendous rictus of frozen death.";
	if Mákke is handled:
		now the description of Mákke is "Mákke is naked on the black stone. Her wrinkled, wet skin is soiled from living and from dying, her flesh unclean. There is blood where her body slammed on the rocks. The rune of Akka is tattooed on her chest.";
	otherwise:
		now the description of Mákke is "Mákke is a nude twisted little figure, frozen over the black stone. Her wrinkled, wet skin is soiled from living and from dying, her flesh unclean. There is blood where her body slammed on the rocks. The rune of Akka is tattooed on her chest but it is unreachable under the tangle of her rigid limbs.";
	move cloth to Cliff;
	now the cloth is handled;
	now the cloth is scenery.

[ Rubing Mákke to "warm her" bad bad puzzle ]

Instead of rubbing Mákke when Mákke is not handled:
	if the cloth is part of Mákke:
		now Mákke is handled;
		now the description of Mákke is "Mákke rests, small in death, on the black stone. She has the rune of Akka tattooed on her skin, under her dark damp clothes.";
		say "You rub Mákke's arms and legs until you can move her. You wipe the snow from her face and close her still-damp eyes.";
	otherwise:
		try anointing Mákke with the flask.
	
[ Skin and bones ]

Instead of pushing Mákke when Mákke is not handled:
	say "You try to set her into a more dignified posture so you can prepare her for the afterlife, but her body is chilled and grotesquely contorted and it won't budge."
	
Some bones are part of Mákke. Understand "limbs/joints/arms/legs" or "bones of Mákke" or "bones of makke" or "limbs of makke" or "limbs of Mákke" as bones.
Setting action variables when the noun is the bones: 
	now the noun is Mákke. 
Setting action variables when the second noun is the bones: 
	now the second noun is Mákke. 
	
Instead of attacking Mákke, say "No, your teacher has earned more respect and care from you."

The skin is part of Mákke. Understand "skin of makke" or "skin of mákke" or "makke's skin" as the skin.
Instead of examining the skin, try examining Mákke. Instead of rubbing the skin, try rubbing Mákke. Instead of cleaning the skin, try cleaning Mákke. Instead of warming the skin, try warming Mákke. Instead of cutting the skin, say "Cutting your teacher’s skin without a clear purpose is not respectful." 

Instead of anointing the skin with the flask, try anointing Mákke with the flask.

Instead of warming Mákke, try rubbing Mákke.

[ Anoint Mákke ]

Instead of cleaning Mákke, try anointing Mákke with the flask.

Instead of putting the flask on Mákke, try anointing Mákke with the flask.

Instead of anointing Mákke with the flask when the cloth is part of Mákke, say "You may not anoint her body while she is clothed."

Instead of anointing Mákke with the flask:
	if Mákke is not handled:
		now Mákke is handled;
		say "You take the flask, filled with the scented oil made from resins and herbs that Mákke knew how to make, and you anoint the frozen skin, the calloused hands, the rigid arms, the legs that served her so well in life. You rub her with your bare hands until you can move her. You wipe the snow from her face and close her still-damp eyes. [if the sponge is visible]You use the sponge to rub away[otherwise] You rub away[end if] the leftovers of life from her dead body until her skin loses the smell of death and takes on the scents of pine trees and winter and clean sea air.";
	otherwise:
		say "You take the flask, filled with the scented oil made from resins and herbs that Mákke knew how to make, and you anoint the soft skin, the calloused hands, the body that served her so well in life. [if the sponge is visible]You use the sponge to rub away[otherwise] You rub away[end if] the leftovers of life from her dead body until her skin loses the smell of death and takes on the scents of pine trees and winter and clean sea air.";
	now the description of Mákke is "Mákke has been washed and anointed to enter the next life. Over her chest, on the place where the strength of the soul lies, is the rune of Akka.";
	remove bones from play;
	now Mákke is charged.

Instead of anointing Mákke with the flask when Mákke is charged, say "Mákke has already been washed and anointed."

Section 2 - The black ships

Some black ships are a thing. "[if level is wind]The black ships are getting closer; the wind is helping them along in their deathly errand.[otherwise if level is gust]The black ships ride the waves, sails full with the strong winds. Gray clouds gather over them, a threat of what's to come.[otherwise if level is gale]The black ships buck and yaw against the gale and the rain. They've gathered sails and are now using their oars.[otherwise if level is tornado]The black ships fight to stay afloat in the middle of the tornado. Some of them are swept by the waves and are lost forever under the black sky, the pounding rain, the lightning of Ukko's fury. [otherwise if level is galerna]The black ships fight to stay afloat in the middle of the tornado. Some of them are swept by the waves and are lost forever under the black sky, the pounding rain, the lightning of Ukko's fury.[otherwise]Far in the horizon you can see the long shapes of the black ships. They look like they are standing still, but you're not fooled; you know it won't be long before they are upon the village.". The description is "[if level is wind]The wind favors them at this time. They must think their gods are smiling at them. They don't know it's you, calling forth Ukko's anger and Akka's rage [otherwise if level is gust]The wind is picking up pace and so do the black ships, their sails full and taut. [otherwise if level is gale]The heavy rain and the rising waves begin to be a problem for the ships. They've gathered sails and are trying to make their way with the oars, beating on the choppy sea. [otherwise if level is tornado]The black ships yield under the strength of the sea. Some of them are swallowed by the waves. One has lost its mast to lightning, leaving only a blackened stump. Amidst the chaos all around you see, or think you see, the tiny figures of men falling or jumping overboard.[otherwise if level is galerna]The black ships yield under the strength of the sea. Some of them are swallowed by the waves. One has lost its mast to lightning, leaving only a blackened stump. Amidst the chaos all around you see, or think you see, the tiny figures of men falling or jumping overboard.[otherwise]You've heard of those long, swift wooden vessels, with their sharp prows. They have square sails, larger than any you've seen, and the oars protruding from their sides take them to their deathly errands even when there's no wind." The black ships are outofreach. Understand "boats" as the black ships.
	
Section 3 - The cutting

Instead of flaying Mákke:
	if Preparation is happening:
		say "(cutting out the rune of Akka with the knife)";
		try cutting the rune of Akka with the knife;
	otherwise if Ritual is happening or Failing is happening:
		say "You are done with Makké's body. There's no need to keep cutting her.";
	otherwise:
		say "It is not necessary to resort to that at this very moment.".

Instead of flaying the rune of Akka:
	if Preparation is happening:
		try cutting the rune of Akka with the knife;
	otherwise if Ritual is happening or Failing is happening:
		say "You have already the rune of Akka. There's no need to keep cutting it.";
	otherwise:
		say "It is not necessary to resort to that at this very moment.".
		
Instead of cutting Mákke:
	If Preparation is happening:
		say "It does not make sense to cut your teacher at random.";
	otherwise if Ritual is happening or Failing is happening:
		say "You are done with Makké's body. There's no need to keep cutting her.";
	otherwise:
		say "It is not necessary to resort to that at this very moment.".
		
Instead of cutting the rune of Akka with the knife when the cloth is a part of Mákke, say "You'd have to take her clothes off first."

Instead of cutting the rune of Akka with the knife when Mákke is not charged and the cloth is not part of Mákke, say "You need to do this, yes. But first her skin must be cleansed and treated accordingly."

Instead of cutting the rune of Akka with the knife when the rune of Akka is not part of Mákke, say "Cutting the rune of Akka with the edge of the knife would ruin it and render it useless."	

Instead of cutting the rune of Akka with the knife when the rune of Akka is part of Mákke:
	say "You do what you must and then [if the cloak is visible]you cover [otherwise]go to cover [end if]Mákke with her sealskin's cloak[if the cloak is visible]. [otherwise] but you can't see it anywhere, so you leave her like this.[end if]You leave Mákke's blood on the black knife's blade.";
	move the rune of Akka to the player;
	now the rune of Akka is charged;
	if the cloak is visible:
		move cloak to Mákke;
		now cloak is part of Mákke;
	now the knife is charged;
	now the description of Mákke is "You're done with Mákke. She lies on the black stone[if the cloak is part of Mákke] covered in her sealskin cloak[otherwise], naked[end if].";
	now the description of the knife is "Now the knife is covered in Mákke's black witch blood.";
	now the description of the rune of Akka is "The rune of Akka, tattooed on a piece of Mákke's skin.[if the rune of Akka is part of the arm and the wound is part of the player] You have placed it on the bleeding wound of your arm, the same arm that holds the skin.[otherwise if the rune of Akka is part of the arm and the wound is not part of the player] You have placed it on the arm that holds the skin.[otherwise] There's blood underneath it.[end if]";
	pause the game;
	say "[line break]".


Instead of anointing the knife with the flask, say "No, you need it as it is."

Instead of rubbing the knife, say "No, you need it as it is." Instead of cleaning the knife, say "No, you need it as it is."

Preparation ends when the rune of Akka is charged.

Section 4 - Conjuring
 
When Ritual begins:
	move the storm to Cliff;
	now the description of Cliff is "Now is the time. Stand before the witch stone. Stand before the waiting gods. Stand before the anointed body of your dead teacher. Stand before the endless sea, the grey sky, the indifferent flight of the albatrosses. Today you stand. Today you, Lenne-who-would-be-the-witch, Lenne still in her maiden braids, feel smaller than ever.";
	try looking;
	say "[italic type]This is your chance to become the witch and save the village. You must RECITE THE SPELL, step by step, and hold on until it's complete.[line break][roman type]".
	
After conjuring during Ritual:
	if level is wind and failing is not happening, say "[italic type]Now, continue to call forth the storm. You must RECITE all the spell verses until the conjuring is complete.[roman type][line break]"

[Example of how to do a global variable: 

Switch is a kind of value. The switch are on and off. The Narrative is a switch that varies. The Narrative is on.]

Intensity is a kind of value. The intensity are calm, wind, gust, gale, tornado, galerna. The level is a intensity that varies. The level is calm.
 
To increase the storm:
	if the level is:
		-- calm:
			now the level is wind;
		-- wind:
			now the level is gust;
		-- gust:
			now the level is gale;
			now the description of Cliff is "This is precisely the spot where you don't want to be during a storm. Here the wind slaps you around like an angry god, and the black sky is like a great mouth bearing down to devour you. The blinding streaks of lightning seem to search for you, and the crack of thunder over your head makes you unsure even of the solidity of the rock under your feet.”;
		-- gale:
			now the level is tornado;
		-- tornado:
			 now the level is galerna;
	say "[if level is wind]The wind starts blowing, making the waves rise.[otherwise if level is gust]The wind howls now, bringing grey clouds that already tell of the coming storm. The waves come in stronger and faster, smashing against the cliff in cold, white foam.[otherwise if level is gale]The wind roars trying to tear the wineskin off your arm. The high waves pound the cliff as if trying to bring it down. Rain pours from the angry dark clouds. The black ships buck and yaw against the gale and the rain. They've gathered sails, so that the wind does not rip them to shreds.[otherwise if level is tornado]Waves and rain blend together in a crazed whirl. Everything disappears under the water. Even the cliff stones shake and tumble and surrender. Lightning slashes the sky apart. The wind roars and threatens to throw you down the cliff. The fury of the elements is such that you know the black ships will soon be doomed.[otherwise if level is galerna]Hell is now over the bay, a hell made of water and wind and thunder. The squall is right over you. It roars over the witch stone, snatching Mákke's body violently. It tumbles away, broken and unstrung amidst the storm, and disappears into the slashing rain."
	
To decrease the storm:
	if the level is:
		-- galerna: now the level is tornado;
		-- tornado: now the level is gale;
		-- gale: now the level is gust;
		-- gust: now the level is wind;
		-- wind: now the level is calm;
	say "[if level is calm]It's over. The wineskin empties of the last of its wind and the clouds disperse. The sea is calm again. On the horizon you can see the black ships rising their banners and coming closer and closer.[otherwise if level is wind]The storm start to dissipate. The clouds seem to have already unloaded all their rain and turn gray instead of black.[otherwise if level is gust]The squall seems to be passing. It's still raining and the sea is still wild, but it's definitely tamer. The winds do not seem to want to throw you down the cliff.[otherwise if level is gale]The gale seems to calm down. There are no longer two fearful maelstroms, one above and one below you. The rain falls hard but does not drown you anymore. The lightning burning the sky stopped a while ago.[otherwise if level is tornado]Despair grows inside you and you feel the spell's strength waning accordingly. You look at the rune of Akka on a piece of Mákke's skin, you look at the rune of Ukko on the wineskin, you look at the knife with the black witch blood of your teacher imbued on the blade, and a tear runs down your cheek. The black stone blade, pierced by the stinging light of the storm, seems to have become a golden ember even with the blood of Mákke tarnishing it.[otherwise]The albatrosses burst and bathe you in blood and feathers. ERROR: this message should not be seen."

Understand "summon the storm" and "summon storm" and "summon" as conjuring.
Understand "perform spell" as conjuring.
Understand "perform ritual" as conjuring.
Understand "recite" and "recite spell" and "recite the spell" and "recite verse" as conjuring.
Understand "conjure spell" as conjuring.

Understand "invoke" and "invoke the storm" and "invoke storm" as conjuring.


[ Perform spell, perform ritual, conjure storm, invoke storm, call forth the storm…]

Conjuring is an action applying to nothing.

Instead of conjuring:
	if Failing is happening and the arm is uncharged:
		if the player carries the knife:
			say "You have lost all your borrowed power. [one of]The wineskin loses energy and your words lose their capacity to alter the fabric of existence.[or]You raise your left arm in a desperate plea, wielding the knife to the sky as if trying to stab the storm. You shout your frustration to the wind: 'Mákke! What must I do? Teacher Mákke, please guide me!’

The only answer you receive is the crazed howling of the wind.[or]Something drastic must be done, soon, but probably it's just too late.[stopping]";
		otherwise:
			say "You have lost all your borrowed power. The wineskin loses energy and your words lose their capacity to alter the fabric of existence.";
		stop the action;
	otherwise if Ritual is happening:
		continue the action;
	otherwise if Preparation is happening:
		if Mákke is uncharged:
			say "First you must prepare Mákke for her entry into the next life.";
		otherwise:
			say "Now you need to possess the rune of Akka.";
	otherwise:
		if Search is happening:
			say "Now it's not the time. You must search for your teacher Mákke.";
		otherwise:
			say "Now it's not the time.".

Carry out conjuring:
	if the level is:
		-- calm:
			say "You don't ask permission from Árvet. You don't ask permission from Mákke. The living belong to Life. The dead belong to Death.[paragraph break]
Witches belong nowhere.[paragraph break]";
			say "You uncork the wineskin and offer it up to the wind.[paragraph break]
[italic type]Tuulen Ukko tuulen Akka[line break]
Tuulen kaikki ristikansa[line break]
 [line break]
Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[roman type][line break]
[line break]";
		-- wind:
			say "The old tongue grabs at your throat and teeth, turns the air thick around you. You keep on reciting the spell as you feel the arm holding the wineskin grow heavy.[paragraph break]
[italic type]Suuren tuulen nostajaksi[line break]
Sään rajun rakentajaksi[line break]
 [line break]
Tuopa taita tammen latvat[line break]
Rutaise rutiset raijat[roman type][line break]
[line break]";
		-- gust:
			say "The wineskin fills up, slowly at first. The folds in the leather smooth out. Far away the sky darkens. The storm is turning it black, black as the ships coming upon the horizon. Your arm hurts and shakes. Your head hurts too, a dull and pounding pain. Reciting the spell is getting harder by the moment. There's a taste of salt and iron in the air.[paragraph break]
[italic type]Nouse tuuli tuulemahan[line break]
Vihkurit vetelemään[line break]
 [line break]
Nouse tuuli tuulemahan[line break]
Ilseainta riehkimään[line break][roman type]
[line break]";
		-- gale:
			say "Your own voice seems to be coming from outside yourself: a strange, shrill echo. The light is being eaten by the black clouds closing over your head. the wind is cold and gusty, whipping the waves that lap the bay's stones. The wineskin is swollen, heavy as a drowned man. You have trouble breathing: the air entering your lungs feels like thick, briny water.[paragraph break]
[italic type]Tuule tuuli kuusi vuotta[line break]
Seuro seitsemän kesää[line break]
[line break]
Itse kuoho kosken lailla[line break]
Sekä valtona vallitse[line break][roman type]
[line break]";
		-- tornado:
			say "You take the knife carrying Mákke's blood. In your mind the storm is already wild, tearing at you. Up above, the clouds wait for your command.[paragraph break]
 [italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[line break]
 [line break][roman type]
You scream and the wind roars with you. You raise the knife and the sky itself rises with you. And you bring down the knife: the black stone blade pierces Mákke's skin, Akka's rune, your own arm. Mákke's dead blood mixes with your own living blood. Your fingers want to open, want to drop the wineskin; but still you hold out your arm, dripping blood on the witch stone.[paragraph break] 
[italic type]Suuren tuulen nostajaksi[line break]
Sään rajun rakentajaksi[line break][roman type]
[line break]";
	Increase the storm.


Instead of conjuring when the level is tornado:
	if the arm is charged:
		continue the action;
	otherwise if the rune of Akka is part of the arm:
		say "Again you recite the final lines:[paragraph break]
[italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[line break]
[line break][roman type]";
		if the wound is part of the player:
			say "[one of]The rune of Akka is now against your blood, but you feel this is not enough: blood on blood. It must be witch blood inside your flesh, pain from the living piercing the skin of the dead. Besides, the wind will tear the skin away from your arm soon: you need to do something drastic.[or]It's not working! The rune is not part of you. You scream your frustration at the storm.[or]But it's still not working. The rune touches your blood but still isn't a part of you: the rune must drink of your blood, like a tree sinking its roots into the earth. You need to do something drastic.[stopping]";
		otherwise:
			say "[one of]It's not working! The rune is not part of you. It's never going to work. You scream your frustration at the storm.[or]But it is not working. The rune is still not a part of you.[stopping]";
	otherwise:
[		now the arm is part of the player;]
		now the hand is part of the player;
		now the rune of Akka is part of the arm;
		say "You wait; you wait until the storm inside your head and the storm in the sky are one, until your body is in two places at once, until the wineskin nearly flies from your grip, trying to release the fury of the winds.

But no. Not yet. The power will flow obeying your words and your will, not the blind fury of the storm: this is your duty as a witch.[paragraph break]
[italic type]Miestä mustoa rukoilen[line break]
Suuren tuulen nostajaksi[roman type]

But the rune of Akka doesn't respond. You can't feel its energy. Something's wrong. And you know what it is: yourself, as you feared. You are no witch. You're just a foolish girl stealing power from her dead teacher. The rune cannot respond to the spell because the rune is not part of your skin. It has no witch blood to feed from.

With your free hand you take the piece of Mákke's skin with the rune and place it upon [if the wound is part of the player] the bleeding wound, on [end if]the arm holding the wineskin. It's not the usual way; it's not the right way. But it's your call. If you really are the witch, if you are worthy of the power, what you end up doing will be what must be done. That's what Mákke said."

The storm is a thing. The description is "[if level is calm]The sky is shrouded by a pail of dull clouds that block the sunlight. The wind blows the waves towards the cliff.[otherwise if level is wind]Gray clouds swirl up in the sky. The wind is picking up, rising waves.[otherwise if level is gust]Black clouds in the sky tell of the oncoming storm. Strong gusts of wind smash the waves against the cliff.[otherwise if level is gale]The wind is now so strong that it drives the rain every which way until you can barely see; it slaps and pushes you, pulls at your hair and clothes.[otherwise if level is tornado]The huge waves threaten to bring the cliff down, pounding at it with relentless rage. A thick curtain of water falls from the sky, and it's impossible to tell day from night: darkness covers everything even as the lightning blinds you.[otherwise if level is galerna]Huge waves threaten to bring the cliff down, pounding at it with relentless rage. A thick curtain of water falls from the sky, and it's impossible to tell day from night: darkness covers everything even as the lightning blinds you." The storm is outofreach and scenery.

Some clouds, the thunder, the air and the rain are part of the storm. Understand "black clouds" and "gray clouds" as the clouds. Understand "wind" as the air. Understand "tornado" as the wind. Understand "thunder/thunderbolt/lightning/ray" as the thunder.

Instead of examining anything that is part of the storm, try examining the storm.

Instead of examining up during Ritual, try examining the storm.

[Instead of examining the horizon during Ritual, try examining the ships.]

Instead of examining the horizon when the ships are visible, try examining the ships.

Instead of examining the sea during Ritual, try examining the storm.

Section 5 - Failing

Failing is a scene.

Failing begins when the Ritual is happening and the wineskin is uncharged.

After quipping when the current quip is doit:
	now the wineskin is charged.

After conjuring when level is gale:
	if Ritual is happening and Failing is not happening:
		the fail-timer clucks in ten turns from now;
	otherwise:
		do nothing.
		
At the time when fail-timer clucks:
	if Ritual is happening:
		now the wineskin is uncharged;
		now the level is galerna;
		say "The lightning has stopped looking for the black ships. One lightning strikes near the witch stone. Too close. The noise almost leaves you deaf. A warning. Perhaps all this has been nothing more than an offense to the gods and your teacher.";
	otherwise:
		do nothing.
	
Every turn during Failing:
	Decrease the storm.
	
Failing ends bad when Failing is happening and level is calm.

When Failing ends bad:
	end the story saying "You could not call forth the storm and your village will die at the hands of the men of the black ships."

Failing ends well when Failing is happening and the wineskin is charged.

Before stabbing the rune of Akka with the knife during Failing:
	now the wineskin is charged;
	now the level is tornado;
	continue the action.
	
Instead of examining the knife during Ritual:
	say "You watch the black knife covered with Mákke's black witch blood in your hand. And remember her teachings about it: 'the blade tears as much as it conjoins, attaches as well as it stabs.'".
	
Instead of examining the reflections during Ritual:
	say "You look at the inside of the blade partially covered with black witch blood. The golden reflections shine with fury and intensity. And you remember Mákke's teachings about the knife: 'the blade tears as much as it conjoins, attaches as well as it stabs.'".

Section 6 - Stab

[ Cut ]

Instead of cutting the player with the knife during Ritual:
	if the wound is part of the player:
		say "You've already paid a blood price. But you don't know if it will be enough.";
	otherwise:
		if the rune of Akka is part of the arm:
			say "You use the black blade edge to cut the arm that holds the wineskin, and pay the blood price on the witch stone. Blood from your forearm falls on the stone, mingling with the blood spilled there in past ages. You place again the rune of Akka over the wound. The dead skin of your teacher over your blood. You hope that will be enough.";
		otherwise:
			say "You use the black blade edge to cut the arm that holds the wineskin, and pay the blood price on the witch stone. Blood from your forearm falls on the stone, mingling with the blood spilled there in past ages.";
		now the wound is part of the player.

Instead of cutting the arm, try cutting the player.

The wound is a thing. The description is "[if Ritual is happening]An ugly cut in your forearm. It is bleeding.[otherwise]The bandage covers the wound."

The arm (m) is a magical object. The description is "[if Ritual is happening]Your arm is freezing.[otherwise if the player wears the bandage]The wound is covered by a bandage.[otherwise]Your arms do not have anything special. Well, except for the extreme thinness." Understand "my arm" or "your arm" or "arms" as the arm. The indefinite article is "your". The arm is part of the player.

After examining the arm when the wound is part of the player: 
	if the rune of Akka is part of the arm:
		say "You have placed the rune of Akka on the bleeding cut.";
	otherwise:
		say "It has an ugly cut that bleeds." 
	
After examining the arm when the rune of Akka is part of the arm:
	say "You have placed the rune of Akka on the arm that holds the wineskin."

The hand is an object. The description is "Your right hand holds the wineskin.[if the player has the knife] Your left hand grips Mákke's knife." Understand "my hand" or "your hand" or "hands" as the hand. The indefinite article is "your".

Instead of cutting the hand during Ritual:
[	if the arm is not part of the player:
		now the arm is part of the player;]
	if the wound is part of the player:
		say "You have already paid the blood price. You don't need to spill more.";
	otherwise:
		say "Your right hand holds the wineskin. You need your left hand to use Mákke's knife. Your right forearm seems the best place to pay the blood price.".

[ Nore negative feedback while trying to put the rune on the arm ]

Instead putting the rune of Akka on the arm:
	if the rune of Akka is part of the arm:
		say "You have already placed the rune of Akka on the arm that holds the wineskin.";
	otherwise:
		say "There's no need to place the rune of Akka on the arm."
		
Instead of putting the rune of Akka on the wound:
	if the wound is part of the player and the rune of Akka is part of the arm:
		say "You have already placed the rune of Akka on your wound.";
	otherwise:
		say "It's not a bad idea, but in the beginning you need to complete the ritual by reciting the spell."

[ Tattooing ]

Instead of tattooing the rune of Akka, say "The rune of Akka needs to be tattooed the right way, with the right chants and rituals. You can't just carve it on your flesh; it's much more complex than that."

Instead of tattooing the arm, try tattooing the rune of Akka.

Instead of tattooing the player, say "Tattoo — but tattoo what?."

[ Stab ]

Instead of stabbing the arm with the knife:
	if the rune of Akka is part of the arm:
		try stabbing the rune of Akka with the knife;
	otherwise:
		say "Mutilate you like that. There's no reason to stab your arm with the knife at this moment."
	
Instead of stabbing the arm with the rune of Akka:
	try stabbing the rune of Akka with the knife.
	
Instead of stabbing the player with the knife:
	say "Stab yourself with the knife. Now that's a drastic action. A bit vague, though."

Instead of stabbing the rune of Akka with the knife:
	if the arm is not charged and level is tornado:
		now the arm is charged;
		try conjuring;
	otherwise:
		say "To stab the rune with the knife... There's no reason to pierce the rune like that at this moment."
		
[ End of the ritual ]
 
The Ritual ends when the level is galerna and the wineskin is charged.

When Ritual ends:
	move the knife to Hut;
	move the rune of Akka to Hut;
	remove the wineskin from play;
	remove the hand from play;
	move the flask to Hut;
	move the sponge to Hut;
	now the wound is part of the player;
	say "The wineskin explodes in wind and fury, bursts into shreds, and the storm turns the sky the sickly yellow hue of a cadaver. The spell issues from your lips like blood from your arm, directing the storm, bringing death to the black ships. Your eyes fill with drowned men, your nose fills up with water, your mouth is full of blood. You are the storm. You are death. You die for the first time in your life.";
	Pause the game;
	say "[line break][italic type]I am Lenne. I am the witch. This is my story.[line break][roman type][line break]
You wake up on the ground, your arm still pierced by the knife. Your hand is covered in blood and ice. There's no sign of the wineskin. There's no sign of Mákke's body either.[paragraph break]
When you get down, weak and hurt, tying a bandage over your wounded arm, you see Árvet there on the beach."

 
Chapter 5 - Los muertos

When Muertos begins:
	move the bandage to the player;
	now the player wears the bandage;
	move the corpses to Beach;
	move the lumber to Beach;
	now the description of the water is "The freezing water is full of corpses, some bobbing with the waves, others thrown ashore by the sea.";
	move Leif to Beach;
	move Ulrif to Beach;
	move Snorri to Beach;
	now the litany of Arvet is the Table of Death Conversation;
	move the player to Beach;
	move arvet to Beach;
	say "'You have called forth the storm, witch Lenne,' Árvet says. [paragraph break]".

The bandage is a wearable thing. The description is "You've bandaged the wound and slapped some healing ointment on it. You don't know if it will completely heal; the damage is too great and you do not hold much hope." Instead of taking off the bandage, say "No, it'd better stay on to help keeping the gaping wound closed."

Instead of pushing the arm during Muertos, say "The lancing pain makes you stop."

Instead of examining the player during Muertos: say "Your hair is loose and tangled, your clothes in disorder and covered with blood. This morning you were a girl. Now you are Lenne, the witch."

Some corpses (m) are a magical object. "The dark pebble beach is covered with planks, rigging and corpses. The bodies are of tall men with yellow or reddish hair. Pale, proud men. Many of them carry swords or axes. Now they are just meat for the albatrosses['] feast." The description is "There are three bodies close to you: a blond man, young; too young. A tall big man, [if Ulrif is handled]with swollen, misshapen features.[otherwise]face down on the pebbles.[end if] And a bit further way a red-haired man looking at the sky with a single eye." The corpses are fixed in place. Understand "dead/corpses/bodies/men" as the corpses. Instead of taking the corpses, say "They are too many to take care of them yourself."

Before of talking to corpses, say "The dead are too many. The dead are yours. They overwhelm you." instead.

Some axesandswords are part of the corpses. Understand "axes/swords/weapons" as the axesandswords. The description is "The tall men's choice for delivering death. Heavy swords, sharp battle axes, carved with symbols that are unknown to you." The printed name is "weapons".

Leif corpse (m) is a thing. It is scenery. Understand "man/young/blond" as Leif. The description is "His hair is the color of wheat. His name was Leif." The printed name is "the blond man".

Ulrif corpse (m) is a thing. It is scenery. Understand "tall/man/big" as Ulrif. The description is "[if Ulrif is handled]The swelling of the face twists his features, makes them grotesque, hard to read. [otherwise]He lay face down on the pebbles. [end if]He had been a tall man, strong and burly. His name was Ulrif." The printed name is "the tall big man".

Snorri corpse (m) is a thing. It is scenery. Understand "red /haired/ man/ redhead/ red-haired/ red-headed/ one-eyed/ oneyed / oneeyed" or "one eyed" or "red headed" as Snorri. The description is "There is a scar where one eye should be. A wound from long ago. His other eye is clouded. His name was Snorri." The printed name is "the red-haired man".

Before of talking to Leif, say "Now you are the witch. Now the dead are yours, as are the living. They don't talk as such, but somehow, when you look at them, you know who they were." instead.
Before of talking to Ulrif, say "Now you are the witch. Now the dead are yours, as are the living. They don't talk as such, but somehow, when you look at them, you know who they were." instead.
Before of talking to Snorri, say "Now you are the witch. Now the dead are yours, as are the living. They don't talk as such, but somehow, when you look at them, you know who they were." instead.


Table of Death Conversation
prompt		response	enabled
"..."		youcalled	1
"'His name was Leif.'"		calledLeif	0
"'His name was Ulrif.'"		calledUlrif	0
"'His name was Snorri.'"		calledSnorri	0
"'The village lives.'"		villagealive	0
"End the conversation."		silence4	0
"There is nothing much else to say."		silence5	0

After quipping when the current quip is silence4:
	enable the silence4 quip;
	terminate the conversation.

After quipping when the current quip is silence5:
	enable the silence5 quip;
	terminate the conversation.

After quipping when the current quip is youcalled:
	disable the youcalled quip;
	enable the silence4 quip;
	enable the calledLeif quip;
	enable the calledUlrif quip;
	enable the calledSnorri quip.

[ Those didn't work in the spanish version: ]

[Instead of examining the Leif for the first time:
	disable the calledLeif quip;
	deliver the calledLeif quip.]

[Instead of examining the Ulrif for the first time:
	disable the calledUlrif quip;
	deliver the calledUlrif quip.]

[Instead of examining the Snorri for the first time:
	disable the calledSnorri quip;
	deliver the calledSnorri quip.]

After quipping when the current quip is calledSnorri:
	now Snorri is handled.

After quipping when the current quip is calledLeif:
	now Leif is handled.

After quipping when the current quip is calledUlrif:
	now Ulrif is handled.

To decide if all dead accounted:
	if Leif is handled:
		if Ulrif is handled:
			if Snorri is handled:
				decide yes;
	decide no.

After quipping when all dead accounted:
	if the corpses are not handled:
		the arvet-timer clucks in three turns from now;
		disable the silence4 quip;
		enable the silence5 quip;
	otherwise:
		do nothing.

At the time when arvet-timer clucks:
	enable the villagealive quip;
	now the corpses are charged;
	say "After a while Árvet says: 'The village lives.'

He doesn't say what you've already learned: the witch pays for the spilled blood. Now their deaths and lives are yours forever, now you die every time you kill. But there is too much death on the beach. Too much blood in this land.[paragraph break]".

Instead of talking to arvet when the corpses are charged:
	deliver the villagealive quip.

Table of Quip Texts (continued)
quip		quiptext
youcalled		"You can barely speak: your throat is raw, burned by wind and salt. You look at the dead."
calledLeif		"'His name was Leif,' you say, your voice hoarse as a crow's. 'He took a wife last spring, left her with child before joining the black ships. He spent the trip carving a walrus tooth to make a toy for his baby.'[paragraph break]
Árvet says nothing."
calledUlrif		"You turn the corpulent man with your foot to look at the pearly eyes, the swollen face.[paragraph break]
'His name was Ulrif,' you say. 'He liked to drink and he liked to fight. He was the best singer in his village and he used to hit his wife when he got home drunk and she wouldn't lie with him.'"
calledSnorri		"A bit further away a man looks at the sky with a single eye.[paragraph break]
'His name was Snorri,' you say. 'He was not from the same village as the others; he came for afar, trading furs, and settled there. He liked sailing and he liked killing, and he wanted to be chief. He spent the trip dreaming of the screams of the women he'd take by force when they arrived.'"
villagealive		"You turn towards the village.[paragraph break]'The village lives,' you say.[paragraph break]
[italic type]Maybe Lenne the girl would have cried. But Lenne the witch couldn't cry anymore.[paragraph break] 
I am Lenne. I am the witch. This was the story. Through all the years, all the death and all the blood, I still remember that moment on the beach, among the corpses.[paragraph break]
I looked at Árvet in silence. I couldn't promise him that life would return, that fish would fill the nets, that the children would have milk and the men seal meat and smoked herrings. All I could see was death circling the earth, filling up the sea. I couldn't see the life I wanted to buy for the village with the death I invoked.[paragraph break]
Maybe Mákke knew. Maybe that is why she faltered and died before bringing the storm. Maybe it would have been better to die under sword and axe than to fade away like this.[paragraph break]
Árvet looked at me like one looks at witches: with respect and fear. And with hate. I looked at the corpses.[paragraph break]
Blood seeped through the bandage on my arm, and it was black blood.[paragraph break]
Witch blood."
silence4		"Your gaze is still lost among the dead."
silence5		"Your gaze is still lost among the dead."

After quipping when the current quip is villagealive:
	end the story finally;

The village_far (f) is a scenery thing in Beach. Understand "village" as the village_far. The printed name is "village". The description is "[if Muertos is happening]You can't stop looking at the dead. When you try to look at the village your sight gets clouded, dark.[otherwise]The village can be seen eastwards from the beach: just a small group of huts. Not much, perhaps; but it's your whole world. "

Instead of entering the village_far, try going east.

Instead of examining the village_far during Muertos:
	if all dead accounted and the corpses are charged:
		deliver the villagealive quip;
	otherwise:
		continue the action.

Before going east during Muertos, try examining the village_far instead.


Some lumber (m) are scenery. Understand "plank / planks / rigging / rope / sails / wood / dragon / dragons / mast / ropes / wreckage / wreck /flotsam / jetsam / debris" as the lumber. The description is "What's left of the attacking ships. Fragments of planks, soaked pieces of blackened rigging tangled up with algae, debris. Here and there you see a sad reminder of the crew in the form of a flask, a toy, a small bone-hilted knife: the bones of a wreck, vomited by the sea upon the beach. You can glimpse some traces of the dragons that decorated the ships and some of the shields; maybe these strange dead men trusted dragons instead of witches for their protection." The printed name is "wreckage".

Instead of taking the lumber, say "It's just flotsam and jetsam. Useless."

Some shields are part of the lumber. The description is "Among the wreck you see some shields. Many are simply painted in bright colors. Others show beautiful designs of sea creatures, eagles, elegant knotwork, or red open-mouthed dragons."

The trinket is part of the lumber. Understand "canteen / toy / knife / handle / bone / bones" as the trinket.
 

Chapter 6 - Liveliness

Section 1 - The director

Every turn when the player is in Beach and the Beach is deserted:
	if a random chance of 2 in 6 succeeds:
		choose a random row in the Table of Calm Beach Ambiance;
		say "[event entry][paragraph break]";
		continue the action.
		
Every turn when the player is in Beach and the Beach is populated and Muertos is not happening:
	if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Albatrosses on the Beach Ambience is not 0:
		choose a random row in the Table of Albatrosses on the Beach Ambience;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action;
	otherwise if a random chance of 1 in 7 succeeds:
		if a random chance of 1 in 2 succeeds:
			choose a random row in the Table of Albatrosses Flight;
		otherwise:
			choose a random row in the Table of Calm Beach Ambiance;
		say "[event entry][paragraph break]";
		continue the action.

Every turn when the player is in Village and the Village is populated:
	if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Village Ambiance is not 0:
		choose a random row in the Table of Village Ambiance;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action;
	otherwise if a random chance of 1 in 7 succeeds:
		choose a random row in the Table of Albatrosses Flight;
		say "[event entry][paragraph break]";
		continue the action.
		
Every turn when the player is in Cliff and the Cliff is populated:
	if we are conjuring:
		do nothing;
	otherwise if Ritual is happening:
		if a random chance of 3 in 5 succeeds and the number of filled rows in the Table of Cliff within the Storm is not 0:
			choose a random row in the Table of Cliff within the Storm;
			say "[event entry][paragraph break]";
			blank out the whole row;
			continue the action;
	otherwise:
		if a random chance of 3 in 10 succeeds and the number of filled rows in the Table of Cliff without Storm Ambiance is not 0:
			choose a random row in the Table of Cliff without Storm Ambiance;
			say "[event entry][paragraph break]";
			blank out the whole row;
			continue the action;
		otherwise if a random chance of 1 in 7 succeeds:
			choose a random row in the Table of Albatrosses Flight;
			say "[event entry][paragraph break]";
			continue the action.

Every turn during Muertos:
	if we are qbc responding with:
		do nothing;
	otherwise if a random chance of 3 in 5 succeeds and the number of filled rows in the Table of Muertos Ambiance is not 0:
		choose a random row in the Table of Muertos Ambiance;
		say "[event entry][paragraph break]";
		blank out the whole row;
		continue the action.


Section 2 - The tables

Table of Calm Beach Ambiance
event
"A tall wave breaks on the shore, the foam nearly reaching up to you feet."
"A wave breaks on the shoals bursting into white sea foam."
"The sea breeze is strong[one of], cold, salty.[or].[stopping]"
"The boats are rocked by the swell, gurgling and creaking in a song of wood and water."

Table of Albatrosses on the Beach Ambience
event
"A couple of albatrosses land on the pier and start grooming each other, beaks searching into their plumages."
"An albatross flying over the bay suddenly dives in, gathering its wings just before plunging into the sea. It emerges with its beak empty. Frustrated and sodden, it flies above again."
"An albatross flying over the bay suddenly dives in. It emerges with its beak eampty, hardly rises again to continue watching the bay."
"An albatross flying over the bay suddenly dives in. It emerges with a fish in its beak and flies to the cliff's nests."
"A group of albatrosses fight noisily over the few fish available, dark wings flapping."
"An albatross wades among the beach pebbles."
"An albatross searches hopefully among the pebbles, looking for something edible."

Table of Albatrosses Flight
event
"An albatross rides the winds, watching the restless of the bay."
"An albatross flies above towards [if the location is Beach]the cliff.[otherwise]the bay."
"An albatross rides the wind streams, turning gracefully in the air."
"An albatross takes off from the cliff, climbing higher and higher, flying you know not where."
"A couple of albatrosses fly side by side, hovering lazily in the crosswinds."

Table of Village Ambiance
event
"A child runs after an albatross in a futile pursuit."
"A man gives you a quick look before lowering his head and resuming his work."
"A few women are mending in a circle. They chatter stops as they look at you. After a while, they start talking again, in softer voices."
"A goat crosses your way and disappears quickly behind a hut. A young girl with a stick comes up to where the goat was, stops dead in the middle of the muddy path and looks around, perplexed."
"A goat lets out a loud angry bleat, complaining about unknown injustices."
"You hear a mother, some distance away, calling for her son."
"A woman is in the threshold of her hut, surveying the village. She clearly doesn't find what she's looking for: she goes back in, slamming the door behind her."
"From inside a hut comes the muffled cry of an infant."
"Two men are talking by one of the huts. One of them points insistently towards the beach."
"A man comes from the beach in some unknown errand and disappear ."

Table of Cliff without Storm Ambiance
event
"[if cloak is visible]Mákke's sealskin cloak flaps, caught in the wind.[otherwise]A gust of wind blows over the witch stone, taking some dry leaves with it."
"An abatross comes up and plunges again under the cliff's edge."
"An albatross comes up in a crosswind and flies over the witch stone, without landing. It glides above you for a while before leaving your sight."
"There is an albatross here, searching the snow with its beak.[one of] Startled, it runs away flapping its long wings.[or] It pays absolutely no attention to you as it walks sedately towards the cliff's edge and jumps into the air.[stopping]"
"A strong wind picks up some leaves and plays around with your braids and dress."
"[if the player is wearing the cloak]A chill wind rises; you wrap yourself in your warm cloak. [otherwise]A chill wind goes through the thin cloth of your dress and freezes your very bones."

Table of Cliff within the Storm
event
"[if level is greater than gust]A strong wind blows over the witch stone threatening to throw both you and Mákke down the cliff. You grab the stone and your teacher's body to stop the gods from taking her away.[otherwise]A strong wind blows around the witch stone tugging and grabbing at your dress."
"Your braids come undone after a particularly strong gust of wind; your hair is now blowing free, whipping your face and neck."
"[if the player is wearing the cloak]The wind tries to tear your cloak away. You hold onto it as it flaps violently behind you.[otherwise if the cloak is part of Mákke]The wind tries to tear away the cloak covering Mákke, but you keep it in place.[otherwise if the cloak is visible]Mákke's sealskin cloak tumbles away in the wind.[otherwise]The strong wind tries to throw you off the cliff."
"[if level is greater than gale]Lightning slashes the sky and a bolt hits the mast of one of the black ships. Fire soon erupts, and you can see small figures jumping overboard.[otherwise if level is greater than gust]A lightning bolt falls on the sea, not far from the black ships. [otherwise]The gray sky lights up; thunder rolls in the distance."
"[if level is greater than gale]A lightning bolt falls on the cliff. The rock bursts open, fragments of rock fall into the sea.[otherwise if level is greater than gust]A lightning bolt falls on the sea, not far from the cliff. [otherwise]Above you the gray sky lights up and thunder rolls over the cliff."
"[if level is greater than gust]A huge wave crashes against the rocks, sending foam all the way up to the witch stone and drenching you in cold sea water.[otherwise]A huge wave crashes against the rocks, sending foam all the way up to the witch stone."
"[if level is greater than gale]The gale mixes together rain and waves. Water comes at you from everywhere, nearly drowns you.[otherwise if level is greater than gust]The wind carries rain, sleet and hail. It pounds at you, soaks you to the bone.[otherwise]The wind is freezing, loaded with sleet."
"[if level is greater than gust]For an instant everything is still, as if time had stopped over the witch stone even though all around you there's a tumult of wind and water. Then the moment passes and the full force of the tempest falls on you, everything turning to wind, water and hail.[otherwise]The wind seems to die for a moment but then it picks up again and blows angrily around the witch stone."
"A lost albatross fights the winds to seek refuge from the storm atop the cliff.[if level is greater than gust] But a lightning bolt hits him directly, and there's a brief rain of feathers, blood and charred albatross."

Table of Muertos Ambiance
event
"The tide brings more bodies and debris to the beach."
"A couple of albatrosses fight over a man's entrails."
"An albatross nibbles on a body's eyes."
"The breeze brings the smell of recent death. The bodies are too fresh to rot yet."
"An albatross dives towards the bay, landing with elegance on a dead body. It immediately begins picking and tearing the cold flesh."
"An albatross lands on the beach, close to another bird that's already feasting on a body. It plucks an eye clean and flies away with it, followed by the cries of its angry companion."
"The sky is dark with albatrosses, gone frantic over the feast beneath them. Their shrill calls drown all other sounds."
"Three albatrosses pick at the same body as they push and insult each other, flapping their wings in annoyance."

Section 3 -  Listening

Instead of listening:
	if the location is Hut:
		if Village is deserted:
			say "Almost complete silence.";
		otherwise:
			say "From the outside, you hear the muffled sounds of life in the village.";
	otherwise if the location is Beach:
		if Muertos is happening:
			say "The frenzy of the albatross is deafening. The familiar taps have become squawks and grunts as they fight over the dead meat.";
		otherwise:
			say "The beach is lonely at this time but the sea is strong and the constant breaking of the waves envelops and numbs you.";
	otherwise if the location is Village:
		if Village is deserted:
			say "The silence is interrupted only by the whistles of gusts of icy wind and the near murmur of the sea.";
		otherwise:
			say "The murmur of life in the village is peaceful, accompanied by the musicality of the whistles and rattles of the albatross occasionally interrupted by the shrill cries of a child playing or the bleating of a goat.";
	otherwise if the location is Path:
		if Village is deserted:
			say "The icy wind whisles through the rocks.";
		otherwise:
			say "Along the cliff path, you are accompanied by the sound of activity in the village and the whistles and tapping of the albatross in the sky.";
	otherwise if the location is Cliff:
		if Ritual is happening:
			if the level is:
				-- calm:
					say "The wind whistles loudly. It whistles through the undergrowth, through the rocks and the albatross nests on the cliff.";
				-- wind:
					say "The wind whistles loudly among the rocks of the cliff. The sea crashes strongly against the rocky wall. But, strangely, no albatross is heard. Probably they are sheltered from the coming storm.";
				-- gust:
					say "The wind howls among the rocks of the cliff. Below, the gusts of sea crash against the rocks, a vertiginous sound that envelops you in waves.";
				-- gale:
					say "The wind roars around the stone of the witches. The sound of the incipient storm envelops everything: down the sea trying to knock down the cliff. Above the black clouds rumbling and the incessant rain.";
				-- tornado:
					say "The sound is deafening. It surrounds everything. The icy wind laden with water howls madly. The sound of thunder as the counterpoint in the melody of the gale. And distant, the echo of an ancient spell is perceived. It is the sound of your own song reverberating and soaking the storm.";
		otherwise:
			say "The wind whistles strong up here. It whistles through the undergrowth, through the rocks and the albatross nests on the cliff. The waves beat strongly against the rocky wall. And the song of the albatross crosses the sky after its wake.";
	otherwise:
		say "The sound of LIMBO, because YOU SHOULD NOT BE HERE."



Chapter 7 - Test me - NOT FOR RELEASE

Test thesearch with "go out / examine floor / n / n / x snow / x rocks"

Test iamthewitch with "talk to arvet / 2 / 2 / 2 /1 /2 /2 /1 /1 /1 "

Test getstuff with "e / enter hut / take chest / out / n / n / drop chest / open chest / take knife / take sponge / take flask "

Test giveittome with "talk to panu / 1 / 1 / 1 "

Test prepare with "x makke / rub makke / x makke / cut cloth with knife / x makke / anoint makke with oil / x makke / cut the akka rune with knife"

Test conjure with "recite spell / recite / recite / recite / stab rune with knife"

Test allgame with "go out / examine floor / n / n / x snow / x rocks / talk to arvet / 2 / 2 / 2 /1 /2 /2 /1 /1 /1 / e / enter hut / take chest / out / n / n / talk to panu / 1 / 1 / 1 / open chest /  x makke / rub makke / x makke / cut cloth with knife / x makke / anoint makke with oil / x makke / cut the akka rune with knife" [ /
 recite spell / recite / recite / recite / stab rune with knife"
]