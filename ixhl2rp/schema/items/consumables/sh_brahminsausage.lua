ITEM.name = "Brahmin Sausage"
ITEM.model = "models/mosi/fnv/props/food/bloodsausage.mdl"
ITEM.hunger = 15
ITEM.description = "Homemade beef sausage."
ITEM.longdesc = "Sausage made from the odds and ends of a butchered brahmin. Quite popular on it's own as a travelling snack, but is also frequently used as an ingredient."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 1
ITEM.height = 1
ITEM.sound = "fosounds/fix/npc_human_eating_food_chewy_02.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:addRadiation(5)
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
	
end)
ITEM.weight = 0.1


ITEM:DecideFunction()