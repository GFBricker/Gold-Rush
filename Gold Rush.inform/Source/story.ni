"Gold Rush" by gbricker19

[Rooms]

Lower Shaft is a room. it is east of Main Shaft. The description of Lower Shaft is ""

Main Shaft is a room. The description of Main Shaft is ""

Locker Room is west of Main Shaft. The description of Locker Room is ""

Outside is a room. it is south of Main Shaft.

[Items]

[commands]

[Scenery]



[from inform recipe book] [minecart puzzle]

In Lower Shaft is a vehicle called the Minecart. 


Pouring it into is an action applying to two things.

Understand "pour [something] in/into/on/onto [something]" as pouring it into.

Check pouring it into:
	if the noun is not a container, say "You can't pour [the noun]." instead; 
	if the second noun is not a container, say "pouring gas into [the second noun] won't do anything." instead;
	If the noun is empty, say "[the noun] is empty." instead


The Gas Can is in lower shaft. Gas Can can be full or empty. Gas Can is full.

The Fuel tank is in lower shaft. it is not portable. The Fuel tank can be full or empty. The fuel tank is empty. The description of Fuel tank is "[if the Fuel tank is empty] The fuel tank has no gas in it. [otherwise] The fuel tank is full, you should try turning on the winch."

Instead of pouring Gas Can into Fuel tank:
	If player is not carrying Gas Can:
		say "You can't pour something you're not hollding";
	Otherwise:
		now Fuel Tank is full;
		say "The fuel tank is filled".
		

filling it with is an action applying to two things.

Understand "fill [something] with [something]" as filling it with.
		
instead of filling fuel tank with gas can:
	say "Try 'Pour gas into tank'" 

Winch is in Lower Shaft. Winch can be switched on or switched off. Winch is switched off

instead of entering minecart:
	if winch is switched on:
		say "you get into the minecart";
		Now player is in minecart;
	if Fuel tank is empty:
		say "Getting in the minecart would be no use since the winch is not working.";
	if Winch is switched off and Fuel tank is full:
		say "The Minecart won't move anywhere unless the winch is turned on."
		
Instead of going to Main shaft when the player is not in minecart:
	say "There is an pitch black empty cavern between the Lower and Main Shaft, if you were to walk it would be certain death.".

After going to Main shaft:
	say "The winch slowly pulled you all the way to the main shaft, you should get out of the Mine cart and look for a way out.";
	Now the winch is switched off;
	Now the fuel tank is empty;
	continue the action.
[gunpowder puzzle]
















