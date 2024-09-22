local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["zinc"].ingot = true
  angelsmods.trigger.smelting_products["zinc"].plate = true
  angelsmods.trigger.smelting_products["zinc"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["zinc"] then
else
  angelsmods.functions.hide("zinc-ore")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].ingot then
  if angelsmods.trigger.smelting_products["zinc"].plate then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-zinc")
    OV.disable_recipe({ "molten-zinc-smelting" })
    OV.disable_technology({ "angels-zinc-casting-2", "angels-zinc-casting-3" })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-zinc-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-zinc-smelting-2"][property])
    end
  end

  if mods["angelsindustries"] and angelsmods.industries.components then
  else
    OV.disable_recipe({ "zinc-ore-processing-alt" })
    OV.patch_recipes({
      {
        name = "pellet-zinc-smelting",
        icons = angelsmods.functions.get_object_icons("solid-zinc-oxide"),
      },
    })
  end
else
  angelsmods.functions.hide("processed-zinc")
  angelsmods.functions.hide("pellet-zinc")
  angelsmods.functions.hide("solid-zinc-oxide")
  angelsmods.functions.hide("cathode-zinc")
  angelsmods.functions.hide("ingot-zinc")
  angelsmods.functions.hide("liquid-molten-zinc")
  OV.disable_recipe({ "zinc-ore-processing", "zinc-processed-processing", "zinc-ore-processing-alt" })
  OV.disable_recipe({ "pellet-zinc-smelting", "solid-zinc-oxide-smelting" })
  OV.disable_recipe({ "zinc-ore-smelting", "processed-zinc-smelting", "cathode-zinc-smelting" })
  OV.disable_recipe({ "molten-zinc-smelting" })
  OV.disable_recipe({ "molten-zinc-smelting" })
  OV.disable_technology({ "angels-zinc-smelting-1", "angels-zinc-smelting-2", "angels-zinc-smelting-3" })
  OV.disable_technology({ "angels-zinc-casting-2", "angels-zinc-casting-3" })
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].plate then
  -- REPLACE ITEMS (use bob version)
  if mods["bobplates"] then
    OV.global_replace_item("angels-plate-zinc", "zinc-plate")
    angelsmods.functions.hide("angels-plate-zinc")
    angelsmods.functions.move_item("zinc-plate", "angels-zinc-casting", "j")
    data.raw["item"]["zinc-plate"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-zinc.png"
    data.raw["item"]["zinc-plate"].icon_size = 32
    OV.disable_recipe({ "bob-zinc-plate" })
    OV.remove_prereq("battery-3", "zinc-processing")
    OV.add_prereq("battery-3", "angels-zinc-smelting-1")
  end
else
  angelsmods.functions.hide("angels-plate-zinc")
  angelsmods.functions.hide("angels-roll-zinc")
  OV.disable_recipe({ "roll-zinc-casting", "roll-zinc-casting-fast" })
  OV.disable_recipe({ "angels-plate-zinc", "angels-roll-zinc-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["zinc"].powder then
else
  angelsmods.functions.hide("powder-zinc")
  OV.disable_recipe({ "powder-zinc" })
end
