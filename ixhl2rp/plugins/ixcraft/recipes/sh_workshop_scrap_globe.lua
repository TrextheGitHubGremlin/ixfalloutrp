RECIPE.name = "Globe"
RECIPE.description = "Break some wasteland junk down into components."
RECIPE.model = "models/mosi/fallout4/props/junk/globe01.mdl"
RECIPE.category = "Scrap Junk"
RECIPE.requirements = {
	["globe"] = 1,
}

RECIPE.results = {
	["plastic"] = 1,
	["wood"] = 1,
	["screws"] = 1,
}


RECIPE:PostHook("OnCanSee", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 20) then
			return true
		end
	end

	return false
	
end)


