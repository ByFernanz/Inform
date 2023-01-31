"Wolf at the door" by Ruber Eaglenest.

Chapter 1 - Home

Home is a room. "[if unvisited]You slowly open your eyes, the singing voice of your mother call you up from your slumber: 'Come on, little lazy, it is time to awake! If you are late maybe you will get without breakfast!' Still half sleep you roll and roll and roll out of the bed and fall to the ground. You look around and see that your brothers and sistes are already full in their morning tasks.[else]You are in your natal home. Usually a cacophony of voices, plays and the rush of your mother taking care of everyone else.[paragraph break]
The grandmother clock tick-tocks next to the window and the wooden stairs."

The player is wearing a night gown.

The table is a scenery supporter in Home. The description is "The long table that have space for all the meals of all your sisters and brothers.[if the two cookies are on the table] You can climb to your chair to start your breakfast."

The bowl of milk and a wooden spoon are on the table. two cookies are edible on the table.

[Understand "cookie" as the two cookies.]

An empty bowl is a thing..

Instead of drinking the empty bowl, say "There's no milk left."

Instead of drinking the bowl of milk, say "[one of]You take a sip of the milk, now colder, but still fresh and tasty! Your mother milk herself every morning, so you still take the nutrients you need, but both of you already started the [or]You take another sip.[stopping] Delicious."

Instead of tasting the milk, try drinking the milk.

Instead of eating the cookies when the player is not on the chair, say "First, you must be seated at the table. On your chair."

After eating the cookies:
	say "Your favourites! You eat half of one in just one bite, and throw the other half inside the bowl. The proceed to take the remaining one and submergue almost completly, wetting your paw. You linger for a moment there, not too much, so the cookie get too wet and disolves itself in the milk, then proceed to put that half wet cookie in your mouth. You close your eyes. Yummmy... You repeat the process with the remaining other half of the last cookie: half deep in the bowl, wet for some seconds, and to your mouth. Then you hunt for the remains of the delicous dough with the wooden spoon, and to finalize, you quaff down the remain of the milk in three qualffs, remains of the cookies included. With a smile, you leave the empty bown on the table. And with the sweet heaviness in your belly, you climb down from the chair.";
	now the milk bowl is nowhere;
	now the spoon is on the table;
	now the empty bowl is on the table;
	silently try getting off the chair.
	
Instead of tasting the cookies, say "You bow your head over one cookie. Then stick out your tongue expectantly... The cookie stick to your tongue and you sense how you salive wets the cookie, dissolving a little of it into your mouth... Yummy!"

Your chair is scenery, enterable supporter, in Home. The description is "Your chair seems imposibly tall, but you have aready learned to climb on the top of it, and it allows you, at least, to peep your head over the table, and in that way, proceed to eat." Understand "my chair" as your chair.

Instead of climbing the chair, try entering the chair.

The big bed is a enterable supporter in Home. The description is "The big bed, where all your brothers and sistes, and your mother, sleep all together, is in a complete disarray. Your mother had no time to make the bed because you slept till very late."


The grandmother clock is a switched on device and scenery in Home.

[This Instead is a trick to override the default output of devices.]

Instead of examining the clock, say "It is a very big clock taller than your mother. It shows the time, or so the say your sisters and brothers, but you don't understand the hours yet.[paragraph break]
It has a crystal door, and behind you can see a pendulum [if the clock is switched on]moving constantly from side to side. Also, it emits a constant tick, tock, tick, tock, tick, tock... times passes.[else]that is currently stop in place. The clock has stopped doing its tick-tock sound. You wonder if you have already stopped the whole time so you never grow up."

Instead of switching off the clock, say "You would not know how to stop the clock."
Instead of switching on the clock, say "You would not know how to restart time."

The crystal door is part of the clock. The crystal door is a openable, enterable, closed and transparent container.

The pendulum is inside the crystal door. The description is "[if the clock is switched on]The pendulum moves from one side to the other, in a constant movement that always has fascinated you. You wonder what magic or magical elf is doing the work for it to be constantly moving.[else]The pendulum is still. Whatever magic was doing its work, has stopped working."

instead of touching the pendulum:
	if the clock is switched on:
		now the clock is switched off;
		say "You extend your paw expenctantly and... you touch the pendulum: it goes out of its momentu, slowing by the momentum until it stops moving completely.";
	otherwise:
		say "You extend your paw ecxpenctantly and... you touch the pendulum. Nothing happens, it is still unmoved."
		
Instead of pushing the pendulum:
	if the clock is switched on:
		now the clock is switched off;
		say "You give a little push, following the momentum of the pendulum, but the extra push makes it goes astray, and after some erratical movements, slowly it comes to a complete stop.";
	otherwise:
		now the clock is switched on;
		say "You give it a tentatively push with your paw... and the pendulum start moving from side to side, and now, never stops moving."
		
After entering the crystal door:
	say "You fit perfectly in the space inside the grandmother clock, even so you are hidded perfectly from the other side, your ears barely showing above the frame of the crystal door. You can peer outside.";
	now the clock is switched off.

A yellow cube is in Home. "A lone yellow cube with letters and number is forgotten in one corner of the room, next to the huge wooden chest." The description is "It is one of a set of five cubes  with letters and numbers. Its sisters are missing."

The huge wooden chest is a fixed in place openable enterable closed locked container in Home. The description is "It is a chest so huge you can crawl inside."

A football ball, an umbrella, a teddy bear, a beige blanket, a book, five wood blocks, a goat girl wool doll, a carton box, a wood figurine, a fake serpent, a red cape, a feather, an iron key and a cowboy hat are in the chest.

The iron key unlocks the wooden chest.

The red cape is a wearable thing. The description is "A red wool cape with a cap and brooch."

A forgotten cookie is edible in the chest. The description is "Your favourites! A lost one!"
After eating the forgotten cookie:
	say "You gulp down the cookie. It is very bland. Oh, oh! Your belly start aching."

Instead of entering the chest, say "But it is already crowded with all the family toys."

Section 2 - The upper floor

The Upper floor is above Home.


Chapter 2 - The farmland and the forest

The Garden is outside from Home. The crossroads is west of the garden. forest1 is west of the crossroads.  The clearing is west of forest1.  forest3 is north of clearing.

The dirt track is north of the crossroads. The entrance of the village is north of the dirt track.

The farmland is a region. The garden, the dirt track and the entrance of the village are in the farmland.

The forest is a region. The forest1, forest3 and the clearing are in the forest.

The sun is a backdrop in the forest and in the farmland. The description is "The sun is shiny today. Summer is almost here."

The trees are a backdrop in the forest. The description is "Trees are everywhere you look, the are closely to each other that you can barely see further. You would be lost if not for the track that crosses the whole forest."

The Garden is a room. "A tidy garden that is the entrance to your home. Some lillies, fresh grass and a lemon tree, provide a fragant welcome. You can go west to the croosroads."

The crossroads is a room. "What a splendid day bathed in the sun rays. The dirty track runs comes from the north and goes inside the forest towards the west. To the east you can return to your home."
