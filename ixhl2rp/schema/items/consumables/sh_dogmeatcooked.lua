ITEM.name = "Dog Steak"
ITEM.model = "models/fnv/clutter/food/dogmeat01.mdl"
ITEM.hunger = 20
ITEM.description = "A chunk of cooked dog meat."
ITEM.longdesc = "Meat taken from a canine, and cooked to remove bacteria, making it safe to eat."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 2
ITEM.height = 1
ITEM.sound = "npc/barnacle/barnacle_crunch2.wav"
ITEM.flag = "5"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "takes a bite of their "..item.name..".", false)
end)
ITEM.weight = 0.1
ITEM.heal = 3
ITEM.healot = 2
ITEM:DecideFunction()