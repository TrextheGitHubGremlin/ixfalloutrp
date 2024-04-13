ITEM.name = "Nuka Cola Fusion"
ITEM.model = "models/maxib123/nukafusion.mdl"
ITEM.thirst = 15
ITEM.description = "A bottle of Nuka Cola's most fruit filled drink."
ITEM.longdesc = "A warm, sealed bottle of Nuka Cola Fusion, a carbonated drink with elements of apples, oranges, and lime. Surprisingly unpopular."
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
