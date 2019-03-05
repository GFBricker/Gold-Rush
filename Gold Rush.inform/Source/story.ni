"Gold Rush" by gbricker19

When play begins:
	say "You are exploring an abandoned mine in search of lost treasures, when you here a low rumbling sound then everything around you starts to shake. Rocks fall from the ceiling and many of the tunnels aoround you start to collapse. You should probably try to get out of here"

[Rooms]

Lower Shaft is a room. it is east of Main Shaft. The description of Lower Shaft is "The lower part of the mine where most of the valuble ores use to be. Mostly barren now with just a minecart attached to a winch and a gas can sitting next to it. The Main Shaft is to the west.".

Main Shaft is a room has door. The description of Main Shaft is "The main part of the shaft used for mining more common ores. To the east if the minecart rail, to the west is the old lockerooms, and to the south was where the exit used to be, but now it is blocked by a mound of rubble. Also in the room are three different sections of wall labeled Sulfur, Coal, and Potassium Nitrate.".

Locker Room is west of Main Shaft. The description of Locker Room is "The old room where the miners would store their belongings. lockers line the wall and a poster is hung on the wall. Also in the middle of room is a table with a mortar and pestle on it."

Earth is a room. The description of Earth is "The outside. Freedom!"


[so I can move items to player inventory]
Junk is a room.

An every turn rule:
	if player is in Earth:
		end the story;
		say "you win"

[from inform recipe book] [minecart puzzle]

In Lower Shaft is a vehicle called the Minecart. the description of minecart is "A heavy old minecart attached to a winch, maybe I could get out of here in this.".

[so gas can be poured from gas can to fuel tank]
Pouring it into is an action applying to two things.

Understand "pour [something] in/into/on/onto [something]" as pouring it into.

Check pouring it into:
	if the noun is not a container, say "You can't pour [the noun]." instead; 
	if the second noun is not a container, say "pouring gas into [the second noun] won't do anything." instead;
	If the noun is empty, say "[the noun] is empty." instead


The Gas Can is in lower shaft. Gas Can can be full or empty. Gas Can is full. the description is "[if gas can is full] A red gas can that is suprisingly full with fuel, maybe someone was down here more recently. [otherwise] An empty Gas Can, no use for it now".

The Fuel tank is in lower shaft. it is not portable. The Fuel tank can be full or empty. The fuel tank is empty. The description of Fuel tank is "[if the Fuel tank is empty] The fuel tank has no gas in it. [otherwise] The fuel tank is full, you should try [bold type]turn[roman type]ing [bold type]on[roman type] the winch.".

Instead of pouring Gas Can into Fuel tank:
	If player is not carrying Gas Can:
		say "You can't pour something you're not holding";
	Otherwise:
		now Fuel Tank is full;
		say "The fuel tank is filled".
		
Cavern is scenery in Lower shaft. The description is "A wide open cavern with stalagmites drooping down the ceilings"

filling it with is an action applying to two things.

Understand "fill [something] with [something]" as filling it with.

[alternate verbage coverup]
instead of filling fuel tank with gas can:
	say "Try 'Pour' gas into tank'" 

Winch is in Lower Shaft. it is not portable. Winch can be switched on or switched off. Winch is switched off. the description is "[if fuel tank is empty] An old winch that maybe could still run but the fuel tank seems to be empty.[end if] [if fuel tank is full and winch is switched off]Now that the fuel tank is full it might not be a bad idea to try and [bold type] turn [roman type] it on.[end if] [if winch is switched on] The winch is on and ready to pull the minecart up the shaft.[end if]".

[to make sure you cannot just get in minecaart and leave room]
instead of entering minecart:
	if winch is switched on:
		say "you get into the minecart";
		Now player is in minecart;
	if Fuel tank is empty:
		say "Getting in the minecart would be no use since the winch is not working.";
	if Winch is switched off and Fuel tank is full:
		say "The Minecart won't move anywhere unless the winch is turned on."
		
Instead of going to Main shaft from lower shaft when the player is not in minecart:
	say "There is a pitch black empty cavern between the Lower and Main Shaft created by the earthquake, if you were to walk it would be certain death.".

[So you can't go back to the lower shaft after making it to the main shaft]
Instead of going to lower shaft from main shaft when the player is not in minecart:
	say "There is a pitch black empty cavern between the Lower and Main Shaft created by the earthquake, if you were to walk it would be certain death.".


After going to Main shaft:
	say "The winch slowly pulled you all the way to the main shaft, you should get out of the Mine cart and look for a way out.";
	Now the winch is switched off;
	Now the fuel tank is empty;
	continue the action.

[because 'get out' wasn't working and neither was 'exit']
Getting out of is an action applying to one thing. Understand "get out of [something]" as getting out of.

Carry out getting out of something:
	try exiting instead.

Leaving it is an action applying to one thing. Understand "leave [something]" as getting out of.


[gunpowder puzzle]

Mining is an action applying to one thing. Understand "Mine [something]" as mining.

Sulfur wall is scenery in Main shaft. The description is "A large part of the shaft is covered in a yellow rock that is labeled as sulfur".
Coal wall is scenery in Main shaft. The description is "A large part of the shaft is covered in a black rock that is labeled as coal".
Potassium wall is scenery in Main shaft. The description is "A large part of the shaft is covered in a white rock that is labeled as Potassium Nitrate".

Mortar + Pestle is in Locker room. the description is "a small mortar and pestle that could be used for [bold type] combining [roman type] to things together."

Combining it with is an action applying to two carried things. Understand "Combine [something] with [something]" as Combining it with.


Pickaxe is in locker room. it is undescribed. the description is "An old rusty pickaxe but it might be able to still[bold type] mine [roman type]some rock."

S is in Junk. the description is " Small rocks of sulfur"

C is in Junk. The description is "small rocks of Coal"

KNO3 is in Junk. The description is "Small rocks of Potassium Nitrate"

Accelerant is in Junk. The description is "An ingredient in making gunpowder"

Gunpowder is in junk. the description is "A great tool for blowing things up"

[alternate vocabulary]
Pickaxing is an action applying to one thing. Understand "pickaxe [something]" as Pickaxing.

instead of pickaxing sulfur:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool.";
	otherwise:
		move S to player;
		say "You chip away at the sulfur with the pickaxe and obtain a few chunks of it (now called S).".

instead of pickaxing Coal:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool.";
	otherwise:
		move C to player;
		say "You chip away at the Charcoal with the pickaxe and obtain a few chunks of it (now called C).".

instead of pickaxing Potassium:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool";
	otherwise:
		move KNO3 to player;
		say "You chip away at the Potassium Nitrate with the pickaxe and obtain a few chunks of it (now called KNO3)."
		
instead of mining Sulfur:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool.";
	otherwise:
		move S to player;
		say "You chip away at the sulfur with the pickaxe and obtain a few chunks of it (now called S).".
		
instead of mining Coal:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool.";
	otherwise:
		move C to player;
		say "You chip away at the Charcoal with the pickaxe and obtain a few chunks of it (now called C).".
		
instead of mining Potassium:
	if player is not carrying pickaxe:
		say "It would be hard to mine solid rock without the proper tool";
	otherwise:
		move KNO3 to player;
		say "You chip away at the Potassium Nitrate with the pickaxe and obtain a few chunks of it (now called KNO3)."

[needed to add S with C and C with S because it wont work otherwise]
instead of Combining S with C:
	if player is not carrying Mortar + Pestle:
		say "It's hard to Combine these things without the proper tool";
	otherwise:
		move Accelerant to player;
		move S to Junk;
		move C to junk;
		say "You Combine the two rocks to create an Accelerant!".
		
instead of Combining C with S:
	if player is not carrying Mortar + Pestle:
		say "It's hard to Combine these things without the proper tool";
	otherwise:
		move Accelerant to player;
		move S to Junk;
		move C to junk;
		say "You Combine the two rocks to create an Accelerant!".
		
instead of Combining Accelerant with KNO3:
	if player is not carrying Mortar + Pestle:
		say "It's hard to Combine these things without the proper tool";
	otherwise:
		move Gunpowder to player;
		move Accelerant to Junk;
		move KNO3 to junk;
		say "You Combine the Accelerant and Oxidizer (KNO3) to creat Gunpowder!".
		
instead of Combining KNO3 with Accelerant:
	if player is not carrying Mortar + Pestle:
		say "It's hard to Combine these things without the proper tool";
	otherwise:
		move Gunpowder to player;
		move Accelerant to Junk;
		move KNO3 to junk;
		say "You Combine the Accelerant and Oxidizer (KNO3) to creat Gunpowder!".
		
instead of combining C with KNO3:
	say "nothing happens";
	stop the action.

instead of combining KNO3 with C:
	say "nothing happens";
	stop the action.

instead of combining KNO3 with S:
	say "nothing happens";
	stop the action.

instead of combining S with KNO3:
	say "nothing happens";
	stop the action.

Rubble is south of Main Shaft and north of Earth. Rubble is a closed door. It is not described. Rubble is Lockable and locked. Rubble is openable. The description of Rubble is "A large mound of rocks completely blocking the exit, maybe you could blow a hole in the rocks."

[because rubble is a door need to make fail safes]
instead of opening Rubble:
	stop the action.
	
instead of closing Rubble:
	stop the action.
	
instead of unlocking Rubble with:
	stop the action.

instead of locking Rubble with:
	stop the action.
	
placing it on is an action applying to two things. Understand "place [something] on [something]" as placing it on.


instead of putting gunpowder on Rubble:
	say "You place the Gunpowder on the rubble and light then run around the corner. A few seconds later you hear a loud BOOM and the pathway to outside has been cleared.";
	Now Rubble is open.

instead of placing gunpowder on Rubble:
	say "You place the Gunpowder on the rubble and light it, then run around the corner. A few seconds later you hear a loud BOOM and the pathway to outside has been cleared.";
	Now Rubble is open.
	
[locker room]
Lockers is scenery in locker room. the description is "Old Rusty lockers. One of them is slightly ajar and contains a pickaxe."

[if they examine everything the puzzle becomes easier]
poster board is scenery in locker room. the description is "How to Make Gunpowder: [bold type]Combine[roman type] Sulfur with Coal to create an Accelerant. Then [bold type]combine [roman type] with Potassium Nitrate to create gunpowder. Great for[bold type] place(ing)[roman type] on rocks to blow them up!"


[because if this was allowed it would say 'first opening rubble']
Instead of going to Earth from Main Shaft:
	if rubble is open:
		continue the action;
	if rubble is closed:
		say "you can't find your way throught the rubble";
		stop the action.
	
[in case someone thought mining the rubble was the solution]
instead of mining rubble:
	say "You throw the pickaxe against the rocks with all your might but nothing seems to budge".
	
instead of examining the player:
	say "A 21 year old explorer with a flashlight"

[to make sure end rule works]
Understand "hehe" as flying. Flying is an action applying to nothing.
instead of flying:
	now rubble is open;
	move player to main shaft.
	
[to test climbing puzzle]
Understand "haha" as falling. falling is an action applying to nothing.
instead of falling:
	move player to main shaft.
	
[so minecart can't leave main shaft]
instead of going to locker room from main shaft in minecart:
	say "the tracks end in the Main Shaft, you might want to [bold type]get out of[roman type] the minecart before going naywhere else.".
	
instead of going to earth from main shaft in minecart:
	say "the tracks end in the Main Shaft, you might want to [bold type]get out of[roman type] the minecart before going naywhere else.".
	
	
[HOW TO WIN:

take gas can
pour gas can into fuel tank
turn on winch
get in minecart
west
west
take mortar + pestle
take pickaxe
east
mine sulfur
mine coal
mine potassium
combine S with C
combine accelerant with KNO3
place gunpowder on rubble
south 

WIN!]