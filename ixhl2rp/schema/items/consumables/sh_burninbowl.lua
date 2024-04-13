ITEM.name = "Burnin' Bowl"
ITEM.model = "models/mosi/fallout4/props/food/squirrelsoup.mdl"
ITEM.hunger = 55
ITEM.thirst = 20
ITEM.description = "A spicy, layered stew of the Sensih."
ITEM.longdesc =  "A stew that is originally made from the Sensih tribe, and occasionally taught to outsiders. Made from a combination of Brahmin sausages, Instamash, beer, Spiced beef bites, and crushed herbs. While incredibly filling on it's own, it is usually enjoyed with a drink at hand due to the sheer herbs and spices included. The broth is the healthiest part."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 2
ITEM.height = 1
ITEM.sound = "fosounds/fix/npc_human_eating_food_chewy_02.mp3"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:addRadiation(5)
	ix.chat.Send(item.player, "iteminternal", "slurps down their "..item.name..".", false)
	item.player:GetCharacter():GetInventory():Add("bowl", 1)
end)
ITEM.weight = 0.1


ITEM:DecideFunction()