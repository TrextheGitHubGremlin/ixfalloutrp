ITEM.name = "Pie"
ITEM.model = "models/mosi/fnv/props/food/pie.mdl"
ITEM.hunger = 25
ITEM.description = "A baked good made with flour, and crushed greens."
ITEM.longdesc =  "A pie made with some crushed greens, and flour. Not a terribly common item to be found in trade, but is always a treat."
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