local flamethrowerammorecipe = data.raw["recipe"]["flamethrower-ammo"]
for _, ingredient in pairs (flamethrowerammorecipe.ingredients) do
	if ingredient.name == "crude-oil" then
		ingredient.name = "light-oil"
		ingredient.amount = 50
		break
	end
end
table.insert(flamethrowerammorecipe.ingredients, {type="fluid", name="heavy-oil", amount=50})

local basicoilprocessingrecipe = data.raw["recipe"]["basic-oil-processing"]
for _, result in pairs (basicoilprocessingrecipe.results) do
	if result.name == "petroleum-gas" then
		result.amount = 40
		break
	end
end
table.insert(basicoilprocessingrecipe.results, {type="fluid", name="heavy-oil", amount=30, fluidbox_index = 1})
table.insert(basicoilprocessingrecipe.results, {type="fluid", name="light-oil", amount=30, fluidbox_index = 2})

local advancedoilprocessingrecipe = data.raw["recipe"]["advanced-oil-processing"]
for _, result in pairs (advancedoilprocessingrecipe.results) do
	if result.name == "heavy-oil" then
		result.amount = 10
		break
	end
end

local chemicalsciencepackrecipe = data.raw["recipe"]["chemical-science-pack"]
for _, ingredient in pairs (chemicalsciencepackrecipe.ingredients) do
	if ingredient[1] == "sulfur" then
		ingredient[1] = "solid-fuel"
		break
	end
end

local rocketfuelrecipe = data.raw["recipe"]["rocket-fuel"]
rocketfuelrecipe.category = "crafting"
for p, ingredient in pairs (rocketfuelrecipe.ingredients) do
	if ingredient.name == "light-oil" then
		rocketfuelrecipe.ingredients[p] = nil
		break
	end
end