local chemicalsciencepack = data.raw["technology"]["chemical-science-pack"]
for p, prereq in pairs (chemicalsciencepack.prerequisites) do
	if prereq == "sulfur-processing" then
		chemicalsciencepack.prerequisites[p] = nil
		break
	end
end

local lasertech = data.raw["technology"]["laser"]
for p, prereq in pairs (lasertech.prerequisites) do
	if prereq == "chemical-science-pack" then
		lasertech.prerequisites[p] = nil
		break
	end
end
lasertech.unit.count = 150
for p, ingredient in pairs (lasertech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		lasertech.unit.ingredients[p] = nil
		break
	end
end

local rocketrytech = data.raw["technology"]["rocketry"]
for p, prereq in pairs (rocketrytech.prerequisites) do
	if prereq == "flammables" then
		rocketrytech.prerequisites[p] = "rocket-fuel"
		break
	end
end

local laserturretstech = data.raw["technology"]["laser-turrets"]
laserturretstech.unit.count = 200
for p, ingredient in pairs (laserturretstech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		laserturretstech.unit.ingredients[p] = nil
		break
	end
end

local roboticstech = data.raw["technology"]["robotics"]
roboticstech.unit.count = 150
for p, ingredient in pairs (roboticstech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		roboticstech.unit.ingredients[p] = nil
		break
	end
end

local rocketfueltech = data.raw["technology"]["rocket-fuel"]
for p, prereq in pairs (rocketfueltech.prerequisites) do
	if prereq == "advanced-oil-processing" then
		rocketfueltech.prerequisites[p] = nil
		break
	end
end
for p, ingredient in pairs (rocketfueltech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		rocketfueltech.unit.ingredients[p] = nil
		break
	end
end

local lubricanttech = data.raw["technology"]["lubricant"]
for p, prereq in pairs (rocketrytech.prerequisites) do
	if prereq == "advanced-oil-processing" then
		rocketrytech.prerequisites[p] = "oil-processing"
		break
	end
end
for p, ingredient in pairs (lubricanttech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		lubricanttech.unit.ingredients[p] = nil
		break
	end
end

local electricenginetech = data.raw["technology"]["electric-engine"]
electricenginetech.unit.count = 100
for p, ingredient in pairs (electricenginetech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		electricenginetech.unit.ingredients[p] = nil
		break
	end
end

local constructionroboticstech = data.raw["technology"]["construction-robotics"]
table.insert(constructionroboticstech.prerequisites, "advanced-electronics")
for p, ingredient in pairs (constructionroboticstech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		constructionroboticstech.unit.ingredients[p] = nil
		break
	end
end

local logisticroboticstech = data.raw["technology"]["logistic-robotics"]
table.insert(logisticroboticstech.prerequisites, "advanced-electronics")
for p, ingredient in pairs (logisticroboticstech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		logisticroboticstech.unit.ingredients[p] = nil
		break
	end
end

local workerrobotsspeed1tech = data.raw["technology"]["worker-robots-speed-1"]
table.insert(workerrobotsspeed1tech.prerequisites, "chemical-science-pack")

local workerrobotsstorage1tech = data.raw["technology"]["worker-robots-storage-1"]
table.insert(workerrobotsstorage1tech.prerequisites, "chemical-science-pack")

local characterlogisticslots1tech = data.raw["technology"]["character-logistic-slots-1"]
characterlogisticslots1tech.unit.count = 100
for p, ingredient in pairs (characterlogisticslots1tech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		characterlogisticslots1tech.unit.ingredients[p] = nil
		break
	end
end

local characterlogisticslots2tech = data.raw["technology"]["character-logistic-slots-2"]
characterlogisticslots2tech.unit.count = 150
for p, ingredient in pairs (characterlogisticslots2tech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		characterlogisticslots2tech.unit.ingredients[p] = nil
		break
	end
end

local characterlogistictrashslots1tech = data.raw["technology"]["character-logistic-trash-slots-1"]
characterlogistictrashslots1tech.unit.count = 100
for p, ingredient in pairs (characterlogistictrashslots1tech.unit.ingredients) do
	if ingredient[1] == "chemical-science-pack" then
		characterlogistictrashslots1tech.unit.ingredients[p] = nil
		break
	end
end

local autocharacterlogistictrashslotstech = data.raw["technology"]["auto-character-logistic-trash-slots"]
table.insert(autocharacterlogistictrashslotstech.prerequisites, "chemical-science-pack")

local personalroboportequipmenttech = data.raw["technology"]["personal-roboport-equipment"]
table.insert(personalroboportequipmenttech.prerequisites, "chemical-science-pack")

local oilprocessingtech = data.raw["technology"]["oil-processing"]
table.insert(oilprocessingtech.effects, {type = "unlock-recipe", recipe = "solid-fuel-from-light-oil"})
table.insert(oilprocessingtech.effects, {type = "unlock-recipe", recipe = "solid-fuel-from-heavy-oil"})

local advancedoilprocessingtech = data.raw["technology"]["advanced-oil-processing"]
for p, effect in pairs (advancedoilprocessingtech.effects) do
	if effect.recipe == "solid-fuel-from-light-oil" or effect.recipe == "solid-fuel-from-heavy-oil" then
		advancedoilprocessingtech.effects[p] = nil
	end
end