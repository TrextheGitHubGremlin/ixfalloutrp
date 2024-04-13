ITEM.name = "Beef Bites"
ITEM.model = "models/mosi/fnv/props/food/antbits.mdl"
ITEM.hunger = 20
ITEM.description = "Cuts of thick brahmin flank steak."
ITEM.longdesc =  "Flank steak from a brahmin, piled into a bowl and lightly cooked."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 2
ITEM.height = 1
ITEM.sound = "fosounds/fix/npc_human_eating_food_chewy_02.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:addRadiation(5)
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
	item.player:GetCharacter():GetInventory():Add("bowl", 1)
end)
ITEM.weight = 0.1


ITEM:DecideFunction()