"Equipment List"

The Watery Room is a room. The player carries a snorkel and a waterproof sack. The waterproof sack contains an undersea map, a diving guide, a cup, and 500 Argentine pesos. The cup contains a worm. The player wears a swimsuit and a pair of flippers. The sack is openable and open.

Inventory listing style is a kind of value. The inventory listing styles are tall, wide, curt, minimal, divided tall, and divided wide. Current inventory listing style is an inventory listing style that varies.

Understand "inventory [inventory listing style]" as requesting styled inventory. Requesting styled inventory is an action applying to an inventory listing style. It is an action out of world.

Carry out requesting styled inventory:
	now current inventory listing style is the inventory listing style understood.

Report requesting styled inventory:
	say "Inventory listing is now set to [current inventory listing style]."

[We begin by emulating the standard inventory listing style:]

Instead of taking inventory when current inventory listing style is tall:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	say "You are carrying: [line break]";
	list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

[Here we offer the alternative of listing everything together as a paragraph:]

Instead of taking inventory when current inventory listing style is wide:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	say "You are carrying ";
	list the contents of the player, giving inventory information, as a sentence, including contents;
	say "."

[This may be unsatisfactory, however. Items that are inside other items are not set off from those merely carried by the player. One way around this is to use terse listing, giving such descriptions as "a waterproof sack (in which are an undersea map, a diving guide, a cup (in which is a worm) and a 500 Argentine pesos)" as opposed to the more confusing " a waterproof sack (open), inside which are an undersea map, a diving guide, a cup, inside which is a worm and a 500 Argentine pesos".]

Instead of taking inventory when current inventory listing style is curt:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	say "You are carrying ";
	list the contents of the player, tersely, giving brief inventory information, as a sentence, including contents;
	say "."

[If, using the above style, we close the sack, we will still get "(closed)" after the sack's listing. The following minimalist listing style abolishes even that nicety:]

Instead of taking inventory when current inventory listing style is minimal:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	say "You are carrying ";
	list the contents of the player, tersely, as a sentence, including contents;
	say "."

[If we want to list worn things separately from carried things, we have occasion to put "listing marked items only" to work:]

Instead of taking inventory when the current inventory listing style is divided wide:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	say "You are wearing ";
	now all things enclosed by the player are unmarked for listing;
	now all things worn by the player are marked for listing;
	if no things worn by the player are marked for listing, say "nothing";
	otherwise list the contents of the player, as a sentence, listing marked items only;
	say ".[paragraph break]";
	say "You are carrying ";
	now all things carried by the player are marked for listing;
	now all things worn by the player are unmarked for listing;
	if no things carried by the player are marked for listing, say "nothing";
	otherwise list the contents of the player, as a sentence, tersely, giving brief inventory information, listing marked items only;
	say ".[paragraph break]".

[And similarly for a tall divided inventory:]

Instead of taking inventory when the current inventory listing style is divided tall:
	if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
	if the player carries something:
		now all things enclosed by the player are unmarked for listing;
		now all things carried by the player are marked for listing;
		say "You are carrying: [line break]";
		list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation, listing marked items only;
	if the player wears something:
		now all things enclosed by the player are unmarked for listing;
		now all things worn by the player are marked for listing;
		say "You are wearing: [line break]";
		list the contents of the player, with newlines, indented, including contents, with extra indentation, listing marked items only.

Test me with "i / inventory wide / i / inventory curt / i / close sack / i / open sack / inventory minimal / i / close sack / i / open sack / inventory divided wide / i / inventory divided tall / i / drop all / i / take all / take off swimsuit / take off flippers / i / i divided wide / i / wear swimsuit / drop all / i".
