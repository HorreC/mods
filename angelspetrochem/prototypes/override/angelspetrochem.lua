local OV = angelsmods.functions.OV
local move_item = angelsmods.functions.move_item

-------------------------------------------------------------------------------
-- WATER ENRICHMENT -----------------------------------------------------------
-------------------------------------------------------------------------------
if mods["bobplates"] and data.raw["fluid"]["deuterium"] then
  OV.converter_fluid("heavy-water", "liquid-water-heavy")
  angelsmods.functions.disable_barreling_recipes("heavy-water")
  OV.converter_fluid("deuterium", "gas-deuterium")
  angelsmods.functions.disable_barreling_recipes("deuterium")

  OV.disable_recipe({"bob-heavy-water", "heavy-water-electrolysis"})

  OV.global_replace_technology("heavy-water-processing", "water-chemistry-1")
  OV.disable_technology("heavy-water-processing")
  OV.global_replace_technology("deuterium-processing", "water-chemistry-2")
  OV.disable_technology("deuterium-processing")

  OV.add_unlock("water-chemistry-2", "deuterium-fuel-cell")
  OV.set_science_pack("deuterium-fuel-reprocessing", "utility-science-pack", 1)
  OV.set_science_pack("deuterium-fuel-cell-2", "utility-science-pack", 1)

elseif angelsmods.industries and angelsmods.industries.overhaul then
  -- everything is good, nothing to change

--elseif data.raw["fluid"]["deuterium"] then
  -- not bobs mods, should we do something, usual thing is to do nothing...

else -- no deuterium required, disabling it...
  angelsmods.functions.add_flag("gas-enriched-hydrogen-sulfide", "hidden")
  angelsmods.functions.disable_barreling_recipes("gas-enriched-hydrogen-sulfide")
  angelsmods.functions.add_flag("liquid-water-semiheavy-1", "hidden")
  angelsmods.functions.disable_barreling_recipes("liquid-water-semiheavy-1")
  angelsmods.functions.add_flag("liquid-water-semiheavy-2", "hidden")
  angelsmods.functions.disable_barreling_recipes("liquid-water-semiheavy-2")
  angelsmods.functions.add_flag("liquid-water-semiheavy-3", "hidden")
  angelsmods.functions.disable_barreling_recipes("liquid-water-semiheavy-3")
  angelsmods.functions.add_flag("liquid-water-heavy", "hidden")
  angelsmods.functions.disable_barreling_recipes("liquid-water-heavy")
  angelsmods.functions.add_flag("gas-deuterium", "hidden")
  angelsmods.functions.disable_barreling_recipes("gas-deuterium")

  OV.disable_recipe(
    {
      "angels-hydrogen-sulfide-enrichment",
      "angels-water-enrichment-1",
      "angels-water-enriched-cooling-1",
      "angels-water-enrichment-2",
      "angels-water-enriched-cooling-2",
      "angels-water-enrichment-3",
      "angels-water-enriched-cooling-3",
      "angels-heavy-water-extraction",
      "angels-heavy-water-cooling",
      "angels-heavy-water-separation",
      "angels-heavy-water-separation-2"
    }
  )

  OV.disable_technology({"water-chemistry-1", "water-chemistry-2"})
end

-- Enforce semiheavy water temp
OV.set_temperature_barreling("liquid-water-semiheavy-1", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-semiheavy-2", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-semiheavy-3", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-semiheavy-1", 100)
OV.set_temperature_barreling("liquid-water-heavy", 25)
-- OV.duplicate_barreling_at_temperature("liquid-water-heavy", 100)

-------------------------------------------------------------------------------
-- CATALYSTS ------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["platinum"] then
  -- angels component and/or science overhaul
  OV.patch_recipes(
    {
      {
        name = "catalyst-metal-red",
        ingredients = {
          {type = "item", name = "iron-ore", amount = 1},
          {type = "item", name = "copper-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-green",
        ingredients = {
          {type = "item", name = "bauxite-ore", amount = 1},
          {type = "item", name = "silver-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-blue",
        ingredients = {
          {type = "item", name = "rutile-ore", amount = 1},
          {type = "item", name = "gold-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-yellow",
        ingredients = {
          {type = "item", name = "tungsten-ore", amount = 1},
          {type = "item", name = "platinum-ore", amount = 1}
        }
      }
    }
  )
elseif mods["bobplates"] or angelsmods.industries and angelsmods.industries.overhaul then
  -- regular overhaul/full angels mode
  OV.patch_recipes(
    {
      {
        name = "catalyst-metal-red",
        ingredients = {
          {type = "item", name = "iron-ore", amount = 1},
          {type = "item", name = "copper-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-green",
        ingredients = {
          {type = "item", name = "bauxite-ore", amount = 1},
          {type = "item", name = "silver-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-blue",
        ingredients = {
          {type = "item", name = "rutile-ore", amount = 1},
          {type = "item", name = "cobalt-ore", amount = 1}
        }
      },
      {
        name = "catalyst-metal-yellow",
        ingredients = {
          {type = "item", name = "tungsten-ore", amount = 1},
          {type = "item", name = "nickel-ore", amount = 1}
        }
      }
    }
  )
else -- special vanilla
  OV.patch_recipes(
    {
      {
        name = "catalyst-metal-red",
        ingredients = {
          {type = "item", name = "angels-ore1", amount = 1},
          {type = "item", name = "angels-ore3", amount = 1}
        }
      },
      {
        name = "catalyst-metal-green",
        ingredients = {
          {type = "item", name = "angels-ore1", amount = 1},
          {type = "item", name = "angels-ore2", amount = 1}
        }
      },
      {
        name = "catalyst-metal-blue",
        ingredients = {
          {type = "item", name = "angels-ore3", amount = 1},
          {type = "item", name = "angels-ore4", amount = 1}
        }
      },
      {
        name = "catalyst-metal-yellow",
        ingredients = {
          {type = "item", name = "angels-ore2", amount = 1},
          {type = "item", name = "angels-ore4", amount = 1}
        }
      }
    }
  )
end

-------------------------------------------------------------------------------
-- VALVES ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.enableconverter then
else
  angelsmods.functions.add_flag("valve-converter", "hidden")
  OV.disable_recipe("valve-converter")
end

-------------------------------------------------------------------------------
-- SPECIAL VANILLA ------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.functions.is_special_vanilla() then
  OV.disable_recipe(
    {
      "solid-calcium-chloride",
      "catalyst-steam-cracking-butane", -- "gas-butadiene"
      "liquid-styrene-catalyst", -- "liquid-styrene"
      "liquid-ethylbenzene-catalyst", -- "liquid-ethylbenzene"
      "cumene-process", -- "gas-acetone"
      "liquid-bisphenol-a",
      "gas-phosgene",
      "gas-ammonium-chloride",
      "gas-melamine"
    }
  )
  angelsmods.functions.add_flag({
    "solid-calcium-chloride",
    "gas-butadiene",
    "liquid-styrene",
    "liquid-ethylbenzene",
    "liquid-bisphenol-a",
    "gas-phosgene",
    "gas-ammonium-chloride",
    "gas-melamine"
  }, "hidden")
  
  if angelsmods.bioprocessing then
  else
    OV.disable_recipe(
      {
        "gas-urea",
      }
    )
    angelsmods.functions.add_flag({
      "gas-urea",
      "gas-acetone",
    }, "hidden")
  end

  if mods["bobrevamp"] then
  else
    angelsmods.functions.add_flag({
      "gas-hydrogen-peroxide",
    }, "hidden")
  end
end

if angelsmods.trigger.resin then
else
  OV.disable_recipe(
    {
      "solid-resin",
      "liquid-resin-1",
      "liquid-resin-2",
      "liquid-resin-3"
    }
  )
  angelsmods.functions.add_flag("solid-resin", "hidden")
  angelsmods.functions.add_flag("liquid-resin", "hidden")
  OV.disable_technology({
    "resins",
    "resin-1",
    "resin-2",
    "resin-3"
  })
end

if angelsmods.trigger.rubber then
else
  OV.disable_recipe(
    {
      "liquid-rubber-1",
      "solid-rubber"
    }
  )
  angelsmods.functions.add_flag("solid-rubber", "hidden")
  angelsmods.functions.add_flag("liquid-rubber", "hidden")
  OV.disable_technology({
    "rubbers",
    "rubber",
  })
end

if angelsmods.trigger.liquid_ferric_chloride_solution then
else
  OV.disable_recipe(
    {
      "liquid-ferric-chloride-solution"
    }
  )
  angelsmods.functions.add_flag("liquid-ferric-chloride-solution", "hidden")
end

if angelsmods.trigger.liquid_cupric_chloride_solution then
else
  OV.disable_recipe(
    {
      "liquid-cupric-chloride-solution"
    }
  )
  angelsmods.functions.add_flag("liquid-cupric-chloride-solution", "hidden")
end