"Trainstopping" by Ben Collins-Sussman.

The story headline is "A wild west debacle".

The story description is "BAM!  A mug of ale hits the table, splashing your shoes.  Muddy Charlie slumps back in his chair, eyes you carefully, and starts to chuckle.

'You know your problem?  You don't think big enough.'

His expression is familiar.  Last time you saw that look, it was just before you two decided to rustle the mayor's private herd back in 1866.  That didn't work so well.

'What now?' you ask.  'A new idea?'

'Big plans.'  He grins widely.  'That new cross-country railroad is almost finished.  It's gonna change everything... bigger trains, more people... and prize cargo.'

'A train holdup?  Are you kidding?'

'Relax.  This time we got [italic type]technology[roman type] on our side.'  He leans close and whispers:  'Made in Sweden... or Germany.  It's big, dangerous, and nobody knows about it yet.'

'A new weapon?'

'Dynamic, buddy.  Dynamic Might.'
"


[ Background reading:

http://en.wikipedia.org/wiki/Train_robbery
http://en.wikipedia.org/wiki/First_Transcontinental_Railroad
http://en.wikipedia.org/wiki/Dynamite
...add more links here..

IDEA:  run into a 21-year old Jesse James, make an impression on him?  (Jesse's first crime was 1868)

IDEA:  remember to describe multiple senses.

REMEMBER:  write tests via 'test me with "command / command / command" '.
]


Chapter 0 - World Modifications

The release number is 9.
The story genre is "Western".

Use full-length room descriptions and the serial comma.
After printing the banner text, say "(Type HELP if you're new to interactive fiction.)"

The maximum score is 11.

When play begins:
        say the story description;
        change the time of day to 8:15 AM;
        change the left hand status line to "[the player's surroundings] | Score: [score]/[maximum score]";
        change right hand status line to "[time of day]".



Section 1 - Player's Inventory

Instead of examining the player, say "Big boots, pants, plains hat and a tattered overcoat.  Almost... isquiesque.  You're quite the desperado, ain't ya?".

The player wears a hat.  The hat is a portable container.  The description of the hat is "A wide-brimmed hat to protect you from the sun, and which clearly marks you as a denizen of the plains.  [if the hat contains something]In the hat you see [contents of hat].[end if]".  The carrying capacity of the hat is 2.   Instead of eating the hat, say "If you don't complete this mission, you sure will!"

Rule for printing the name of the hat while taking inventory: say "a wide-brimmed hat [if the hat is worn by the player](being worn)[otherwise](being carried)[end if]".

Rule for deciding the concealed possessions of the player:
	if the particular possession is inside the hat or the bucket, yes;
	otherwise no.
	
Rule for deciding the concealed possessions of the hat:
	if the player wears the hat, yes;
	otherwise no.
	
Before inserting something into the hat:
	if the hat is worn, say "You'll have to remove the hat first." instead.

After inserting a revolver into the hat for the first time:  award 1 point.

After wearing the hat:  
	repeat with item running through things in the hat begin;
	say "[The item] is now concealed from view.";
	end repeat;


[### TODO:  many many people put gun in hat, think things are conceealed, yet they're not until you 'wear hat'.   We should either scratch this rule, or make it plainly obvious that the hat must be worn to conceal things.]

The player carries a pocketwatch.  Understand "watch" and "timepiece" and "pocket watch" as the pocketwatch. The description of the pocketwatch is "It's a rusty wind-up timepiece, handed down from your uncle.  It currently reads [time of day + 1 minute]."

Time-checking is an action applying to nothing.  Understand "time" as time-checking.
Carry out time-checking:
	if the player carries the pocketwatch and the pocketwatch is not concealed
	begin;
		if the location of the player is dark, say "It's too dark to see your watch.";
		otherwise say "Your pocketwatch reads [time of day + 1 minute].";
	otherwise;
		say "You have no way of checking the time.";
	end if.

After dropping the pocketwatch, change the right hand status line to "?".
After taking the pocketwatch, change the right hand status line to "[time of day]".

The player carries a scrap of paper.  Understand "paper" and "scrap" and "schedule" as the scrap of paper. The description of the paper is "The paper contains scribblings from the Little Snoring train station, about twenty miles down the trail.  The train only comes through town once per day, and by your partner's calculations, it should be speeding by this area around 10:30am.  Angry smeared handwriting screams '1. GET DYNAMICMITE FROM MTNSIDE, 2. INSERT SPARKER, 3. BLOW UP TUNEL, 4. WAIT FOR ME'".


Section 2 - Environmental Effects

Table of Environmental Effects
Event
"A distant wind blows, echoing over the hills."
"Some sort of insect buzzes by."
"A brief breeze flaps your clothing."
"You hear some crickets chirp nearby."
"The sun mercilessly bakes the land."
"The smell of hyacinth wafts in the air."
"A bird chirps somewhere near."

Every turn when a random chance of 1 in 10 succeeds:
        choose a random row in the Table of Environmental Effects;
	Say "[Event entry][paragraph break]".

Section 3 - Guns

A gun is a kind of thing.  A gun has a number called the bullet count.  Definition:  a gun is unloaded if its bullet count is 0.   Definition:  a gun is loaded if its bullet count is greater than 0.  After examining a loaded gun, say "It appears to contain [bullet count in words] bullet[s]."  After examining an unloaded gun, say "It appears to be unloaded."

Shooting is an action with past participle shot, applying to one visible thing.
Shooting it with is an action with past participle shot, applying to two visible things.

Understand "shoot [something]" as shooting.
Understand "shoot [something] with [something]" as shooting it with.
Understand "fire gun" as shooting.

Instead of shooting something:
	if a gun (called the firearm) is held by the player
	begin;
		try shooting the noun with the firearm;
		continue the action;
	otherwise;
		say "You need some sort of firearm to do that.";
	end if.

Check shooting it with:
	if the noun is a gun, say "Try 'shoot something with gun'." instead;
	if the second noun is not a gun, say "[The second noun] isn't much of a firearm." instead;
	if the second noun is not loaded, say "[The second noun] has no ammunition." instead.

Carry out shooting it with:
	change the bullet count of the second noun to the bullet count of the second noun - 1;
	say "BANG!  You fire a bullet at [the noun] with [the second noun]. [if the noun is a person]  Murder can be... fun.[line break]".
	
After shooting something (called the victim) with a gun (called the weapon):
	if the victim is the player
	begin;
		say "Suicide, eh?";
		end the game in death;
	end if;
	if the victim is the chipmunk
	begin;
		say "The chipmunk collapses as you blow a hole through him.";
		remove the chipmunk from play;
		move the chipmunk corpse to the location of the player;
	end if;
	if the victim is the vulture
	begin;
		say "Feathers fly in all directions, and the vulture spins to the earth, crashing at your feet.  Nice shot.";
		remove the vulture from play;
		move the vulture corpse to the location of the player;
	end if;
	continue the action;
	if the victim is a person
	begin;
		say "Aren't you in enough trouble already?";
		stop the action;
	end if.

[Report shooting it with: ??]

A revolver is a gun.  The player carries a revolver.  Understand "gun" and "pistol" as the revolver.  The bullet count of the revolver is 6.  The description of the revolver is "It's a mean-looking revolver.  Somebody tried to take it from you once.  Once."  Rule for printing the name of the revolver while taking inventory: say "your trusty revolver".  Instead of dropping the revolver, say "Are you nuts?  What kind of outlaw are you!?"


Section 4 - Help System

[Taken from 'Y is Y'? example in Recipe Book]
A thing can be examined or unexamined. A thing is usually unexamined. Carry out examining something: now the noun is examined.
Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused.
After acting confused for the sixth turn:
	say "(If you are feeling lost, try typing HELP for suggestions.)"

Check quitting the game:
	say "You're sure? ";
	if player consents, say "[line break]You were getting close to a breakthrough, you know.[line break]";
	otherwise stop the action.
	
Understand "who" or "what" or "when" or "where" or "why" or "how" or "who's" or "what's" or "when's" or "where's" or "why's" or "how's" as "[query]".

Understand "[query] [text]" as a mistake ("This game understands commands such as '[command prompt]examine [a random thing that can be seen by the player]', but not direct questions. For more instructions, type HELP.").

Include Basic Screen Effects by Emily Short. Include Menus by Emily Short.Include Basic Help Menu by Emily Short.

Table of Basic Help Options (continued)
title   	 subtable   	 description	toggle
"Contacting the Author"   	 --   	 "This game is far from bug-free!  If you discover any problems or difficulties (or just have suggestions), please contact me at sussman@red-bean.com."	--





Section 5 - Other Rules

Understand "look [thing]" as examining.
Understand "look over [thing]" as examining.

Understand "exit [thing]" as specifically exiting.
Understand "leave [thing]" as specifically exiting.
Specifically exiting is an action applying to one thing.
Check specifically exiting: try exiting.

Rule for deciding whether all includes scenery: it does not.

An openable container called the eyes are part of the player.  The eyes are open.  The carrying capacity of the eyes is 0.  The description of the eyes is "Your eyes are... er, some color.  You don't remember."
[Instead of putting something in the eyes, say "Ouch, that would hurt!".]
Instead of dropping the eyes, say "Is that a joke?"

Instead of closing the eyes, now every room is dark.
Instead of opening the eyes, now every room is not dark.

Understand "xyzzy" as xyzzy. 
xyzzy is an action applying to nothing.
Carry out xyzzy:  say "Nuh-uh.  Not in this game."

[Taken from the documention example:]
Understand "wait [number] minutes/turns" or "wait [number]" as waiting more.
Waiting more is an action applying to one number.
Carry out waiting more: 
    let duration be the number understood - 1; 
    repeat with X running from 1 to duration
    begin; 
        follow the turn sequence rules; 
    end repeat.
Report waiting more: 
    say "It is now [time of day + 1 minute]."

[Understand "wait until [time]" as waiting for clock.
Waiting for clock is an action applying to a time.
Carry out waiting for clock:
	let duration be the time understood minus the current time;
	try waiting duration.
Report waiting for clock:
	say "It is now [time of day + 1 minute]."]


Understand "credits" as listing credits.
Listing credits is an action applying to nothing.
Carry out listing credits:
	say "Huge thanks to these game testers:  Malcolm Rowe, Beth and Mitri Vaneechitheront, Jim Blandy, John Lodder, Atul Varma, Dan Biemer and Frances Collins-Sussman."

Understand "hide [thing]" as hiding.
Hiding is an action applying to one thing.
Check hiding:  say "You'll have to figure out how to hide things yourself."

Rule for printing a parser error when parser error is can only do that to something animate:
	say "Eh?  Either the recipient isn't here, or the recipient isn't something animate." instead.


Chapter 1 - The Robbery


Section 1 - The Train

The train is a vehicle.  Understand "locomotive" as the train.  The description of the train is "It's a hulking, steam-driven locomotive, with at least ten cars behind it."

After deciding the scope of the player while in the Mountainside:
	place the track below in scope.
	
When play begins, remove the train from play.

Train Arrival is a scene.  Train Arrival begins when the time of day is 10:28 AM.  Train Arrival ends when the time since Train Arrival began is 7 minutes.

When Train Arrival begins:
	Move the train to the Distant Track;
	Say "A train whistles in the distance!";
	Train approaches in 1 minute from now.

At the time when the train approaches:
	if the player is in the Mountainside, say "The train is moving down the track, getting closer.";
	if the player is in the Hill Area, say "You hear the chugging of an approaching train.";
	Train passes in 4 minutes from now.

At the time when the train passes:
	Move the train to the track below;
	if the player is in the Mountainside, say "The train is approaching the tunnel!";
	if the player is in the Hill Area, say "The mountain shakes as a train rumbles ever closer!".

When Train Arrival ends:
        if the tunnel is open
        begin;
        	Remove the train from play;
	        if the player is in the Mountainside, say "The train disappears into the tunnel below you, echoing loudly, leaving behind a wisp of steam.";
        end if;
        if the tunnel is closed
        begin;
                if the player is in the Mountainside, say "Seeing the collapsed tunnel, the train engineer yells and slams the brakes!  The giant machine shrieks;  steam and sparks pour from the engine, and the train comes to a stop just inches before the tunnel debris.  You can hear all sorts of panic and screams coming from the train.[paragraph break]In fact, that looks like Muddy himself leaning out of the train window!  He's wildly gesticulating at you.  Is that a a thumbs-up signal he's giving you?";
        end if;

Post-Train is a scene.  Post-Train begins when Train Arrival ends.

When Post-Train begins:
        denouement happens in 2 turns from now.

[TODO: add some real end-game verbiage here]
At the time when denouement happens:
        if tunnel is closed
        begin;
	say "You feel a tap on your back, and you spin around.[paragraph break]Three guns are pointed in your face.[paragraph break]'We know all about your plan', one of Marshalls states coldly.  'We've been tracking you and Muddy for days.  Keep your hands in the air, and follow us.'[paragraph break]You can see that Muddy is here, also held at gunpoint and already handcuffed.  You pause for a moment, consider your options, then decide that death is perhaps worse than being locked in a cell with an angry Muddy.[paragraph break]'Don't worry', Muddy whispers.  [italic type]'I have a plan...'[roman type]";
	end the game in victory;
        end if;
        if tunnel is open
        begin;
	say "You pause in your tracks for a moment.[paragraph break]That was clearly the train	that just passed through the mountain, and you missed it.  Muddy is gonna kill you.  Perhaps you should have gotten better instructions from him.";
	end the game saying "You failed the mission.";
        end if.



Section 2 - Animals

The vulture is an animal.  "A vulture circles omniously overhead."  The description is "Large and black, with a huge wingspan.   He seems to hang in the air, waiting for something to happen."  When play begins, move the vulture to the Summit.

Every turn:
	if the vulture is in a room (called the current space) and a random chance of 1 in 3 succeeds
	begin;
 		let next space be a random room which is adjacent to the current space;
		let way be the best route from the current space to the next space;
		if the vulture is visible, say "The vulture sails off, heading [way].";
		move the vulture to next space;
		if the vulture is visible, say "High above, a vulture glides into the area.";
	end if.

The acorn is an edible thing.  The description is "Um, it's a small, brown nut-like object."

The chipmunk is an animal.  "A chipmunk scurries about."  The description is "A slippery little varmint.  He appears to be searching for something."  When play begins, move the chipmunk to the Grassy Plateau.  

An animal is either plotting or innocent.  An animal is usually innocent.
Every turn when the chipmunk is plotting for more than 1 turn:
	if the chipmunk can see an acorn and an acorn is supported by the sparker and the sparker is inside the bundle
	begin;
		if the chipmunk is visible, say "The chipmunk enthusiastically jumps up onto the sparker to grab the acorn!";
		explode the bundle;
	otherwise;
		try the chipmunk taking the acorn;
		now the chipmunk is innocent;
	end if;

Table of Chipmunk Fear
Fear-response
"The chipmunk suddenly shoots you a look of utter fear.  There's something about you that horrifies him."
"The chipmunk looks at your possessions and freezes in place for a moment."
"The chipmunk spins around, looks at something you're carrying, then panics."
"The chipmunk turns its gaze dramatically at you;  is that an orchestra playing?"

Every turn when the chipmunk is in a room (called the current space):
        if the chipmunk can see a gun
        begin;
                if an acorn is visible or the player carries an acorn
                begin;
		if the chipmunk is visible, say "The chipmunk seems paralyzed in place, caught between fear and desire.";
		if the chipmunk carries the acorn, try the chipmunk dropping the acorn;
                otherwise;
		if the chipmunk carries the acorn, try the chipmunk dropping the acorn;
		let next space be a random room which is adjacent to the current space;
		let way be the best route from the current space to the next space;
		if the next space is not the Track Below
		begin;
	                        	choose a random row in the Table of Chipmunk Fear;
			if the chipmunk is visible, say "[Fear-response entry]  It bolts away, speeding [way].";
			move the chipmunk to next space;
		end if;
                end if;
        otherwise;
	if the chipmunk can see the acorn and the acorn is not carried by the player
            	begin;
		now the chipmunk is plotting;
	otherwise;
		if the player carries an acorn
		begin;
			if the chipmunk is visible, say "The chipmunk looks at your possessions longingly.";
		otherwise;
		if the chipmunk is visible, say "The chipmunk sniffs around, mostly ignoring you.";
		end if;
	end if;
        end if;

[Possible bug:  if chipmunk dies, this rule produces 'must supply a noun' on each turn?]
Every turn:
	if the chipmunk is in a room and the location of the chipmunk is not the location of the player
	begin;
		if the player carries an acorn
		begin;
			let the way be the best route from the location of the chipmunk to the location of the player;
			try chipmunk going the way;
		end if;
	end if;
	
Instead of giving an acorn to the chipmunk:  say "The chipmunk is too scared to take it directly from your hand."
Instead of showing an acorn to the chipmunk:  say "The chipmunk hops up and down with excitement!"	

Instead of taking the chipmunk:  say "Ain't no way you're gonna outrun that varmint!"
Instead of taking the vulture:  say "What, you can fly now?"

The chipmunk corpse is a wearable thing.  The description is "Some would call it cute and furry.  You would call it 'hat'."  When play begins, remove the chipmunk corpse from play.
The vulture corpse is a wearable thing.  The description is "It's a big, ugly, dead bird."  When play begins, remove the vulture corpse from play.


Section 3 - Dynamite

A person is either protected or unprotected.  A person is usually unprotected.
After entering the circle of rocks:
	if the player does not carry the bundle, now the player is protected; continue the action.
After exiting:  
	if the container exited from is the circle of rocks, now the player is unprotected; continue the action.

[Every turn while the player is in the circle of rocks:	
	say "you're in the rocks, dude."]
	
A rule for reaching outside the circle of rocks:  say "You can't reach anything while inside the rock circle.";  deny access.

The stick bundle is a portable transparent container.  "You see a bundle of small brown sticks."  Understand "sticks" and "bundle" as the stick bundle.  The carrying capacity of the bundle is 1.  The description is "You've never seen anything like this before.  It looks like a collection of cylinders, each wrapped in plain brown paper.  The side of each stick reads 'Nobel's Blasting Powder, U.S. Patent 78317.'   You don't see any sort of obvious fuse coming out of the sticks, however... just an empty space at the top of each cylinder, big enough to put your finger into."   After examining the bundle, say "It currently contains [contents of bundle].".

The sparker tool is a portable supporter.  Understand "sparker" and "tool" as the sparker tool.  The description is "This thing seems familiar;  it looks like a spring-loaded pair of scissors with a small plate at one end.  If you apply a pound or two of pressure to the plate, the device slowly clamps together into a long stick.  When you push the plate quickly, rapid friction on the opposite tip can produce sparks.  It's good for starting campfires or lighting stoves.[paragraph break]You suppose putting stuff on top of the sparker can make it spark too, provided it's heavy enough.  Hm..."

Instead of putting something on the sparker tool:
	if the sparker tool is in the bundle and the bundle is held, say "That would be hard to balance.  Try dropping the bundle first.";
	otherwise continue the action.

After inserting the sparker tool into the stick bundle for the first time:  award 1 point.

Instead of squeezing the sparker tool, try pushing instead.
Instead of pushing the sparker tool:
        say "The sparker tool shoots a few sparks from one end.";
        if the sparker is inside the bundle, explode the bundle.

Instead of shooting the bundle with a gun when the player is inside the rocks:
	say "You can't aim correctly, the rocks are in your way."

After shooting the bundle with a gun:
	explode the bundle.	

The box contains the stick bundle and the sparker tool.

To explode the bundle:
	[Step 1:  describe the explosion if we can see it.]
	if the bundle is visible
	begin;
		say "A fiery, actinic flash and earth-shattering boom rocks you!  The shock wave literally knocks you off your feet, as debris explodes in all directions.";
	otherwise;
		say "You hear a tremendous explosion nearby, and the mountain shakes!";
	end if;
	
	[Step 2:  make the explosion kill other people if necessary]
	if the player can see the bundle:
		say "oof";
		if the player is unprotected:
			say "Unfortunately, being unprotected, you were engulfed by the flames.";
			end the game saying "Ouch";
			stop the action;

	if the bundle can be seen by someone (called the victim):
		if the victim is unprotected and the victim is visible:
			say "[The victim] screams and is torn apart by the exposion.";
			remove the victim from play;

	[Step 3:  possibly destroy the bluff]
        	if the bundle is in the bluff
        	begin;
		if the player is in the bluff then say "If that weren't enough, you hear a low rumble, and suddenly the ground begins to crack and crumble.  The earth opens up, and the entire front of the bluff violently collapses downward, filling the tunnel below!";
                	now the tunnel is closed;
                	now the bluff is destroyed;
		award 5 points;
        	end if;
	remove the bundle from play;
	continue the action.


Section 4 - Hill Area

The Mountainside is a region.  Bluff, track, distant track, track below are in the Mountainside.
The Hill Area is a region.  Rock Circle, Grassy Plateau, Summit, Copse, Dirt Road are in the Hill Area.
The bridge area is a region.  Chasm, Rope Bridge, and Lone Tree Bluff are in the bridge area.

The sky is a backdrop.  The sky is everywhere.   "It's brightly lit, full of saturated blue, not a cloud in sight."

The track is a backdrop.  Understand "train track" as the track.  "The track extends off into the distance, then curves out of sight around a far-off hill. [if Train Arrival is happening] You spy a long train on the track. [end if]"

The distant track is a room.  The distant track is north of the track below.

The track below is below the Bluff.  The tunnel is here.  The tunnel is scenery.  The tunnel is a transparent container.  The tunnel is open.  The description is "The tunnel runs straight through the mountain, directly below the bluff.  [if the tunnel is open]It looks a bit unstable as well, with bits of dirt crumbling into it.[otherwise]The tunnel entrance is now completely collapsed, full of rocks and other debris.[end if][If the tunnel contains the stick]  You see a long stick hanging out of the top of the tunnel's arch, probably some remnant of a broken branch.[end if]"  

A long stick is in the tunnel.  When play begins, remove the stick from play.  Understand "stick" as the long stick.  The description of the long stick is "It's a thin stick, about two feet long."  

Before examining the tunnel for the first time:  move the stick to the tunnel;  continue the action.

A rule for reaching inside the track below:  allow access.

Instead of taking the stick when the stick is in the tunnel:
	say "You carefully reach over the edge of the bluff and pluck the stick from the tunnel's arch.";
	move the stick to the player;
	award 1 point.

The Bluff is a room.  The Bluff is either normal or destroyed.  The Bluff is normal.  "[if the Bluff is normal]You're standing on a wide bluff about fifty feet up a small mountain,[otherwise]You're standing on the edge of a dangerous, collapsed bluff[end if] overlooking a landscape of sun-blasted plains and craggy hills.  Below you, a train track runs out of a narrow tunnel though the hill. [if the tunnel is closed](Of course, the tunnel is now completely full of rocks and dirt.) [end if] On the far edge of the bluff you see a strange rock formation, and a path wanders southwest through the brush.  [if Train Arrival is happening] [paragraph break]A long train is approaching! [end if]".  Instead of going down from the Bluff, say "You'd surely fall to your death!"  

The circle of rocks is here.  Understand "rocks" and "circle" and "formation" and "rock formation" and "stones" as the circle of rocks.  The circle of rocks is scenery.  The circle of rocks is a transparent enterable container.  The description is "The rocks are a few feet high, and are roughly arranged in a circle, almost like an oversized fire-pit.  It's not clear if they fell into this formation, or were pushed.  Either way, they make some good cover from an explosion."
	
The Grassy Plateau is southwest of the Bluff.  "[if unvisited]The land opens up into a large green space here, partway up the mountain. The grasses are nearly five feet high, full of life.  [paragraph break][end if]This is a wide field of untamed prairie.  To the east, a mountain rises up towards its summit, while another hill is faintly visible to the west.  You also can make out a faint trail leading northeast through the brush."

Instead of going up in the Grassy Plateau, try going east.
Instead of going down in the Summit, try going west.

The Copse is below the Grassy Plateau and north of the Dirt Road.  "[if unvisited]At last, some shade![paragraph break][end if]You're in a section of dense pine forest at the base of a small mountain.  There are cones and needles littered about, and the treetops chatter with birdsong.  The slope continues up the mountain, or back down towards the road."  A pine cone is here.  Understand "cone" and "pinecone" as the pine cone. The description of the pine cone is "Yep, it's a pine cone.  It seems to be vaguely red-tinted.  And smells of sea creatures." [red herring]  A pine tree is in the Copse.  The pine tree is scenery.  The description of the pine tree is "It's a particularly tall pine tree."  Instead of climbing the pine tree, say "You're too old for that.  No jewel-encrusted egg for you."  Instead of smelling in the Copse, say "Ah, pine.  Just like home."

Instead of going north in the Copse, try going up.
Instead of going south in the Grassy Plateau, try going down.

The flimsy bridge is a backdrop.  Understand "bridge" as the flimsy bridge.  The flimsy bridge is in the bridge area.  The description of the flimsy bridge is "The bridge looks cobbled together by old hemp rope and scrap lumber."

Instead of entering the flimsy bridge:
	if the player is in the Chasm, try going west;
	if the player is in the Lone Tree bluff, try going east;
	if the player is in the Rope Bridge, say "You're already on the bridge.  Yikes."

The Chasm is west of the Grassy Plateau.  "[if unvisited]You press through the grasses, squinting at the bright sky, then suddenly lose your footing.  You scramble to regain your balance and realize you nearly walked off a cliff.[paragraph break][end if]The edge of the plateau stops abruptly at a chasm that drops nearly one hundred feet.  Luckily, there's a flimsy-looking rope bridge that spans the gap.  It stretches westward to another isolated bluff.  To the east, the grasses look more inviting."   Instead of going down in the Chasm, say "Not unless you can fly.".

Instead of going west from the Chasm:
	if the Chasm is not dark, say "You grab hold of the bridge, but your vertigo gets the best of you.  You're unable to avoid looking down, and you feel yourself start to spin.  The sight is just too much.";
	otherwise continue the action.

Instead of going east from the Lone Tree Bluff:
	if the Chasm is not dark, say "You grab hold of the bridge, but your vertigo gets the best of you.  You're unable to avoid looking down, and you feel yourself start to spin.  The sight is just too much.";
	otherwise continue the action.

The Rope Bridge is west of the Chasm.  "You're in the middle of the rope bridge.  The space below makes you nauseous."  Instead of listening while in the Rope Bridge, say "You hear the gentle creaking of the bridge, and the wind whistling below your feet."  Instead of going down in the Rope Bridge, say "OK, you're not [italic type]that[roman type] suicidal.".

Instead of going to a room from the Rope Bridge:
	if the Rope Bridge is not dark, say "You're paralyzed with fear.  The height is unbearable.";
	otherwise continue the action.

The Lone Tree Bluff is west of the Rope Bridge.  "This is a very small bluff, almost an island in a sea of open air.  A gigantic oak tree dominates the space; it's an eruption of countless branches and thick bushy leaves."

After going to the Lone Tree Bluff for the first time:  award 1 point.

A bucket is in the Lone Tree Bluff.  The bucket is a portable, transparent, open container.  "Looks like someone left a rusty old bucket here."  The description is "It's an old green bucket, well-used." [Red herring]  The carrying capacity of the bucket is 1.

An oak tree is in the Lone Tree Bluff.  The oak tree is scenery.  "The tree is huge and leafy, but you don't see any fruit.  Just some strong branches." The branch is part of the oak tree.  Understand "branches" and "leaves" as the branch.  The branch is a supporter.  The description of the branch is  "You see a particularly long branch, fairly high-up.[if the branch supports something]  You see [a list of things supported by the branch] up there.[end if]".  

When play begins, remove acorn from play.
Before examining the branch for the first time: move the acorn to the branch; continue the action.

Instead of climbing the oak tree, say "You're too old for that.  Really."

Instead of taking something on the branch, say "The branch is far too high to reach."
Instead of putting something on the branch, say "The branch is far too high to reach."

Instead of shooting the acorn:
	say "You hesitate instead, not really wanting to destroy the acorn itself."

After shooting the branch:
	if the acorn is on the branch
	begin;
		if a random chance of 1 in 2 succeeds
		begin;
			say "What luck!  You hit a tiny part of the branch, and the acorn tumbles to the ground.";
			move the acorn to the Lone Tree Bluff;
		otherwise;
			say "Yikes, the branch is a small target.  Your bullet sails right past it.  I guess you could always try again.";
		end if;
	end if;
	continue the action.
	
After taking the acorn for the first time:  award 1 point.

The Summit is east of the Grassy Plateau.  "[if unvisited]You wander east, and slowly climb up the mountain.[paragraph break][end if]Here at the top the mountain, the wind blows strong and carries the smell of endless summer.  There are no trees up here, no tall grass, but bits of shrubbery dot the area.  The view is remarkable, though;  you can see grassy hills for miles around.  A train track clearly extends north into the distance, running away from this mountain."

The cliff is in the Summit.  The cliff is scenery.  The description is "It's a stark drop at the eastern edge of the summit.  [if the box is on the outcropping]Looking over the cliff, you see a small wooden box sitting on an outcropping about five feet below.[end if]  [if the string is in the shrub]There's a string tied to the box, leading up to a shrub.[end if]".

Before examining the cliff for the first time: move the box to the outcropping; continue the action.

A shrub is in the Summit.  Understand "shrubbery" and "bush" as the shrub.  The shrub is a container.  The shrub is scenery.  The description of the shrub is "It's an ordinary shrub.[if the string is in the shrub]  Or... wait, is that a piece of string tied to its base?[end if]".  Before examining the shrub for the first time: move the string to the shrub; continue the action.

The string is a thing.  When play begins, remove the string from play.  The description of the string is "The string is tied to the base of the shrub, and seems to run along the ground behind the shrub.   It then dips down out of sight off a cliff at the eastern part the summit."

Instead of taking the string:
	say "As you untie the string from the shrub, you feel a gentle snap on the other end.  The string then slips from your grip and slides off the cliff.";
	remove the string from play.

Instead of taking the box for the first time:
	if the player does not carry the stick
	begin;
		say "You lean over the cliff, but the box is at least a couple of feet out of reach.  Maybe if you had some way of grabbing it by its looped handle?";
	otherwise;
		say "You lean over the cliff and slowly hook the box's looped handle on the end of your stick, carefully bringing it up to you.";
		award 1 point;
		continue the action;
	end if.

The outcropping is part of the cliff.  The outcropping is a supporter.  The description is "It's a small outcropping sticking out from the wall of the cliff, just hanging in space."

The box is a closed, openable, portable container.  When play begins, remove the box from play.  The description is "It's a small wooden box, with the words 'Warning:  Handle Carefully' stamped on it.  It seems to have a looped handle on top."

Instead of opening the box:
	if the player does not carry the box
	begin;
		say "You need to hold the box to do that.";
	otherwise;
		continue the action;
	end if.

The Dirt Road is a room.  "[if unvisited]Muddy wasn't particularly clear in his instructions, but you're pretty sure this is the trail he wanted you to follow this morning.  Now that your horse has inexplicably bolted, you can use all the luck you can get.[paragraph break][end if]This is a dusty trail that wanders off to the west for miles, and ends here near the base of an unscalable mountain just to your east.  It's hot out here;  really hot.  The sun blasts down on the back of your neck, but you can smell the cool tang of some pine trees off to the north.  You also spy some inviting lower slopes that way." 

Instead of going west from the Dirt Road, say "You just came from that direction.  Turning back would ruin the whole plan!" 
Instead of going east from the Dirt Road, say "That way leads to the bottom of a sheer mountain wall."
Instead of going south from the Dirt Road, say "There's nothing that way but empty plains and certain dehydration."
Before going north from the Dirt Road, say "You shamble slowly toward the trees."
Instead of going up from the Dirt Road, say "The mountain face is too steep to climb, plain and simple."

The mountain wall is scenery in the Dirt Road.  The description is "The sheer face of the mountain is covered with unclimbable gravel and vegetation.  But wait!  You can make out faint words on an obfuscated plaque.. 'Speak Friend and Enter'.[paragraph break]Just kidding.  Wrong story."

[###TODO:  this is silly.  It seems we have to define these 'phantom' rooms just to get the lines above to function.  Can we fix this?]
The eastern road is east of the Dirt Road. [not accessible]
The western road is west of the Dirt Road. [not accessible]
The southern plains is south of the Dirt Road.  [not accessible]
The unscalable wall is above the Dirt Road. [not accessible]

Instead of smelling in the Dirt Road, say "Definitely pine trees.  Up yonder."

[A starting point for the player;  useful to change this when debugging sections.]
The Dirt Road [Bluff] [Lone Tree Bluff] contains the player.
