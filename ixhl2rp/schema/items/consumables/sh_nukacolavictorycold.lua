ITEM.name = "Nuka Cola Victory Cold"
ITEM.model = "models/mosi/fallout4/props/drink/nukacola2.mdl"
ITEM.thirst = 25
ITEM.description = "A bottle of Nuka Cola Victory, chilled to perfection."
ITEM.longdesc = "A cold, sealed bottle of Nuka Cola Victory, a 'patriotic' flavor created to drum up public support for the war against China, with a distinct reddish-orange glow. Tastes like a bit of cherry and orange mixed together, when cold it is surprisingly sharp tasting."
ITEM.quantity = 1
ITEM.price = 5
ITEM.width = 1
ITEM.height = 2
ITEM.skin = 2
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