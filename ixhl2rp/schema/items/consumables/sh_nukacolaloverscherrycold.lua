ITEM.name = "Nuka Cola Lover's Cherry"
ITEM.model = "models/maxib123/nukacherry.mdl"
ITEM.thirst = 50
ITEM.description = "A bottle of Nuka Cola's most romantic drink, chilled to perfection."
ITEM.longdesc = "A cold, sealed bottle of Nuka Cola Lover's Cherry, an extremely season blend of cherry and pomegranate, sold on the week before Valentine's Day. As a result, it is so rare that collectors pay gigantic sums for a bottle of it."
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
