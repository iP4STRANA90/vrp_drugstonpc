Translation of the drug sales system to NPC for vrp2
by.iPastrana90

# vrp_drugstonpc
Original creator: https://github.com/onlyserenity/drugsToNPCs

Tested with vRP 2.0 TheCat

Key to sell is "H", you can change on line 55 the (1, 74) to whatever control you want.

In order for this to actually work on your server you'll need to change the item names, I was testing with tacos so I have tacos.
Change "weed" to whatever your joint name is, remember to keep it between "".
```
	if not user:tryTakeItem("weed",1) then
```

To change the amount of money in the illegal sale transaction just look at line 33 of the server and modify according to your economy.

```
	local reward = math.random(150,300)
```
Comment on line 54 of the client if you do not want the offer message to appear.

```
	Draw3DText(pos.x, pos.y, pos.z + 1 , 'Presiona [~g~H~w~] para ofertar.')
```
