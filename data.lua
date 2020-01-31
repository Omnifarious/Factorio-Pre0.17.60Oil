local laserturretstech = data.raw["technology"]["laser-turrets"]
laserturretstech.prerequisites = {"turrets", "laser", "military-science-pack"}
laserturretstech.unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 30
    }

local lubricanttech = data.raw["technology"]["lubricant"]
lubricanttech.prerequisites = {"oil-processing"}
lubricanttech.unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local electricenginetech = data.raw["technology"]["electric-engine"]
electricenginetech.prerequisites = {"lubricant"}
electricenginetech.unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local roboticstech = data.raw["technology"]["robotics"]
roboticstech.prerequisites = {"electric-engine", "battery"}
roboticstech.unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local logisticroboticstech = data.raw["technology"]["logistic-robotics"]
logisticroboticstech.prerequisites = {"robotics", "advanced-electronics"}
logisticroboticstech.unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local constructionroboticstech = data.raw["technology"]["construction-robotics"]
constructionroboticstech.prerequisites = {"robotics", "advanced-electronics"}
constructionroboticstech.unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local characterlogisticslots1tech = data.raw["technology"]["character-logistic-slots-1"]
characterlogisticslots1tech.prerequisites = {"logistic-robotics"}
characterlogisticslots1tech.unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local characterlogisticslots2tech = data.raw["technology"]["character-logistic-slots-2"]
characterlogisticslots2tech.prerequisites = {"character-logistic-slots-1"}
characterlogisticslots2tech.unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local characterlogistictrashslots1tech = data.raw["technology"]["character-logistic-trash-slots-1"]
characterlogistictrashslots1tech.prerequisites = {"logistic-robotics"}
characterlogistictrashslots1tech.unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    }

local oilprocessingtech = data.raw["technology"]["oil-processing"]
oilprocessingtech.effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil"
      }
    }

local advancedoilprocessingtech = data.raw["technology"]["advanced-oil-processing"]
advancedoilprocessingtech.effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "light-oil-cracking"
      }
    }

local rocketfueltech = data.raw["technology"]["rocket-fuel"]
rocketfueltech.prerequisites = {"flammables"}
rocketfueltech.unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 45
    }

local basicoilprocessingrecipe = data.raw["recipe"]["basic-oil-processing"]
basicoilprocessingrecipe.results =
    {
      {type="fluid", name="heavy-oil", amount=30},
      {type="fluid", name="light-oil", amount=30},
      {type="fluid", name="petroleum-gas", amount=40}
    }

local advancedoilprocessingrecipe = data.raw["recipe"]["advanced-oil-processing"]
advancedoilprocessingrecipe.results=
    {
      {type="fluid", name="heavy-oil", amount=10},
      {type="fluid", name="light-oil", amount=45},
      {type="fluid", name="petroleum-gas", amount=55}
    }

local chemicalsciencepackrecipe = data.raw["recipe"]["chemical-science-pack"]
chemicalsciencepackrecipe.ingredients =
    {
      {"engine-unit", 2},
      {"advanced-circuit", 3},
      {"solid-fuel", 1}
    }

local flamethrowerammorecipe = data.raw["recipe"]["flamethrower-ammo"]
flamethrowerammorecipe.ingredients =
    {
      {type="item", name="steel-plate", amount=5},
      {type="fluid", name="light-oil", amount=50},
      {type="fluid", name="heavy-oil", amount=50}
    }

local rocketfuelrecipe = data.raw["recipe"]["rocket-fuel"]
rocketfuelrecipe.ingredients =
    {
      {"solid-fuel", 10}
    }