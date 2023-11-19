//Created by zhenmunse
//工业时代2 IndustrialCraft 2
#priority 126
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val GTmachine_hammer = RecipeMap.getByName("forge_hammer");
val GTmachine_compressor = RecipeMap.getByName("compressor");
val GTmachine_macerator = RecipeMap.getByName("macerator");
val GTmachine_assembler = RecipeMap.getByName("assembler");
val GTmachine_alloy = RecipeMap.getByName("alloy_smelter");
val GTmachine_extractor = RecipeMap.getByName("extractor");
val GTmachine_lathe = RecipeMap.getByName("lathe");
val GTmachine_canner = RecipeMap.getByName("canner");
val GTmachine_fluid_canner = RecipeMap.getByName("fluid_canner");
val GTmachine_fluid_extractor = RecipeMap.getByName("fluid_extractor");
val GTmachine_freezer = RecipeMap.getByName("vacuum_freezer");
val GTmachine_mixer = RecipeMap.getByName("mixer");
val GTmachine_thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val GTmachine_sifter = RecipeMap.getByName("sifter");
val GTmachine_autoclave = RecipeMap.getByName("autoclave");
val GTmachine_reactor = RecipeMap.getByName("chemical_reactor");
val GTmachine_fluid_solidifier = RecipeMap.getByName("fluid_solidifier");
val GTmachine_saw = RecipeMap.getByName("cutting_saw");
val GTmachine_forming = RecipeMap.getByName("forming_press");
val GTmachine_electrolyzer = RecipeMap.getByName("electrolyzer");
val GTmachine_circuit_assembler = RecipeMap.getByName("circuit_assembler");
val GTmachine_implosion = RecipeMap.getByName("implosion_compressor");
val GTmachine_engraver = RecipeMap.getByName("laser_engraver");
val GTmachine_attractor = RecipeMap.getByName("attractor");
val GTmachine_packer = RecipeMap.getByName("packer");
val GTmachine_unpacker = RecipeMap.getByName("unpacker");
val GTmachine_arc = RecipeMap.getByName("arc_furnace");
val GTmachine_plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
val GTmachine_bath = RecipeMap.getByName("chemical_bath");
val GTmachine_mill = RecipeMap.getByName("wiremill");
val GTmachine_centrifuge = RecipeMap.getByName("centrifuge");
val GTmachine_extruder = RecipeMap.getByName("extruder");
val GTmachine_metal_bender = RecipeMap.getByName("metal_bender");
val GTmachine_electric_blast_furnace = RecipeMap.getByName("electric_blast_furnace");
//青铜粉
recipes.remove(<ic2:dust>);
//板材
recipes.remove(<ic2:plate:*>);
mods.jei.JEI.removeAndHide(<ic2:plate:*>);
//管道
recipes.remove(<ic2:pipe:*>);
mods.jei.JEI.removeAndHide(<ic2:pipe:*>);
//青铜套装
recipes.remove(<ic2:bronze_boots>);
mods.jei.JEI.removeAndHide(<ic2:bronze_boots>);
recipes.remove(<ic2:bronze_chestplate>);
mods.jei.JEI.removeAndHide(<ic2:bronze_chestplate>);
recipes.remove(<ic2:bronze_helmet>);
mods.jei.JEI.removeAndHide(<ic2:bronze_helmet>);
recipes.remove(<ic2:bronze_leggings>);
mods.jei.JEI.removeAndHide(<ic2:bronze_leggings>);
//焦煤
recipes.remove(<ic2:coke>);
mods.jei.JEI.removeAndHide(<ic2:coke>);
//作物架
recipes.remove(<ic2:crop_stick>);
recipes.addShaped(<ic2:crop_stick> * 1,
  [[<ore:stickLongWood>,null,<ore:stickLongWood>],
   [<ore:stickLongWood>,null,<ore:stickLongWood>],
   [null,null,null]]);
//铁炉
recipes.remove(<ic2:te:46>);
recipes.addShaped(<ic2:te:46> * 1,
  [[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
   [<ore:plateIron>,<ore:craftingFurnace>,<ore:plateIron>],
   [<ore:plateIron>,<ore:craftingToolHardHammer>,<ore:plateIron>]]);
//锻造锤
recipes.remove(<ic2:forge_hammer>);
mods.jei.JEI.removeAndHide(<ic2:forge_hammer>);
//板材切割剪刀
recipes.remove(<ic2:cutter>);
mods.jei.JEI.removeAndHide(<ic2:cutter>);
<ore:craftingToolWireCutter>.remove(<ic2:cutter>);

//合金锭
recipes.remove(<ic2:ingot>);
mods.jei.JEI.removeAndHide(<ic2:ingot>);

//高级合金
GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<ore:plateSteel> * 1, <ore:plateBronze> * 1, <ore:plateTinAlloy> * 1])
.outputs([<ic2:crafting:3> * 3])
.EUt(120)
.duration(200)
.property("temperature",1700)
.buildAndRegister();

//密封反应堆隔热板
recipes.remove(<ic2:containment_plating>);
GTmachine_assembler.recipeBuilder()
.inputs([<ore:plateInvar> * 2, <ore:plateAdvancedAlloy> * 1])
.fluidInputs([<liquid:lead> * 144])
.outputs([<ic2:containment_plating> * 1])
.EUt(240)
.duration(100)
.buildAndRegister();

for i in loadedMods["mets"].items{
  recipes.remove(i);
}

val removeListIC2 = [
  <ic2:te:*>,
  <ic2:mining_laser:*>,
  <ic2:bronze_axe>,
  <ic2:bronze_hoe>,
  <ic2:bronze_pickaxe>,
  <ic2:bronze_shovel>,
  <ic2:bronze_sword>,
  <ic2:wrench>,
  <ic2:wrench_new>,
  <ic2:upgrade:3>
] as IItemStack[];
for i in removeListIC2{
  recipes.remove(i);
}
recipes.addShaped(<ic2:upgrade:3>,
  [[<ore:plateCopper>,<ore:plateCopper>,<ore:plateCopper>],
   [<ore:plateCopper>,<ore:circuitLv>,<ore:plateCopper>],
   [null,<projectred-integration:gate:2>,null]]);