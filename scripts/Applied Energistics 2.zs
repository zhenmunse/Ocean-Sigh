//Created by zhenmunse
//应用能源2 Applied Energistics 2
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

//削弱合成表
recipes.remove(<appliedenergistics2:material:40>);  //木齿轮

//压印模板
GTmachine_engraver.recipeBuilder()  //运算压印模板
.inputs([<ore:blockIron>, <ore:craftingLensBlue>.reuse()])
.outputs([<appliedenergistics2:material:13>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //工程压印模板
.inputs([<ore:blockIron>, <ore:craftingLensYellow>.reuse()])
.outputs([<appliedenergistics2:material:13>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //硅压印模板
.inputs([<ore:blockIron>, <ore:craftingLensWhite>.reuse()])
.outputs([<appliedenergistics2:material:13>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //逻辑压印模板
.inputs([<ore:blockIron>, <ore:craftingLensCyan>.reuse()])
.outputs([<appliedenergistics2:material:13>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

recipes.addShaped(<appliedenergistics2:sky_compass> * 1,  //陨石罗盘
  [[<ore:plateSteel>,<contenttweaker:insulated_boron_glass_cover>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:gemFlawlessCertusQuartz>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);