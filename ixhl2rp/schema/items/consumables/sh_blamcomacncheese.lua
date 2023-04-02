ITEM.name = "Blamco Mac n' Cheese"
ITEM.model = "models/fnv/clutter/junk/blamcomacncheese.mdl"
ITEM.hunger = 15
ITEM.description = "A box of Mac n Cheese noodles, with sauce packet."
ITEM.longdesc = "A box of dry macaroni noodles with cheese sauce, one need just add water and cook for some tasty Mac."
ITEM.quantity = 1
ITEM.price = 20
ITEM.width = 1
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