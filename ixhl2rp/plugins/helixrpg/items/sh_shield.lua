ITEM.name = "Shield"
ITEM.description = "One of your character's (hopefully) many wounds! Treat it well."
ITEM.model = Model("models/Gibs/HGIBS.mdl")
ITEM.category = "Wounds"
ITEM.functions.toggle = {
    name = "Toggle",
    tip = "useTip",
    icon = "icon16/connect.png",
    OnRun = function(item)
        item.player:SetShieldPoints(5, false)

        return true
    end
}