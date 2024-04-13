ITEM.name = "Nuka Cola Heat"
ITEM.model = "models/maxib123/nukaheat.mdl"
ITEM.thirst = 20
ITEM.description = "A bottle of Nuka Cola's spiciest drink."
ITEM.longdesc = "A warm, sealed bottle of Nuka Cola Heat. A spiced cinnamon root beer that was intentionally marketed towards the export market, when sales were not as desired they were redirected towards the Mojave, where the flavor proved popular enough to rival Sunset Sasparilla in some places. The burning sensation is oddly pleasing."
ITEM.quantity = 1
ITEM.price = 5
ITEM.width = 1
ITEM.height = 2
ITEM.sound = "fosounds/fix/npc_humandrinking_soda_01.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:addRadiation(10)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
	item.player:GetCharacter():GiveMoney(1)
	item.player:NewVegasNotify("You add the bottle cap to your stash.", "messageNeutral", 8)
	item.player:GetCharacter():GetInventory():Add("emptybottle", 1)
end)
ITEM.weight = 0.1


ITEM:DecideFunction()
