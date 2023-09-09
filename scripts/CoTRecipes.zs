//Created by zhenmunse
//自定义物品配方 Contenttweaker Item Recipes
import mods.gregtech.recipe.RecipeMap;

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
//焦炉砖
furnace.addRecipe(<contenttweaker:cokeoven_brick>,<contenttweaker:unfired_cokeoven_brick>);
//未烧制的焦炉砖
recipes.addShaped(<contenttweaker:unfired_cokeoven_brick> * 3,
  [[<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>],
   [<ore:sand>,<gregtech:meta_item_1:348>.reuse(),<ore:sand>],
   [<ore:sand>,<ore:sand>,<ore:sand>]]);
//木部件
recipes.addShaped(<contenttweaker:wooden_part> * 2,
  [[null,<ore:logWood>,null],
   [<ore:logWood>,<ore:string>,<ore:logWood>],
   [null,<ore:logWood>,null]]);
//高能混合物
GTmachine_mixer.recipeBuilder()
.inputs([<ore:dustGlowstone>*4,<ore:dustRedstone>*2,<ore:dustAluminium>*1])
.outputs([<contenttweaker:energetic_blend>*4])
.EUt(240)
.duration(240)
.buildAndRegister();
//流明精华
GTmachine_fluid_solidifier.recipeBuilder()
.inputs([<contenttweaker:energetic_blend>*2])
.fluidInputs([<liquid:phosphoric_acid>*4000])
.outputs([<contenttweaker:luminessence>*1])
.EUt(240)
.duration(600)
.buildAndRegister();
//红石通量通用处理器基底
<ore:rfUniversalProcessorBase>.add(<contenttweaker:rf_universal_processor_base>);
GTmachine_assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:403>,<gregtech:meta_item_1:261>,<gregtech:meta_item_1:591>,<ore:plateElectrum> * 4])
.outputs([<contenttweaker:rf_universal_processor_base>])
.EUt(240) 
.duration(200)
.property("cleanroom", "cleanroom")
.buildAndRegister();
//红石通量通用处理器
GTmachine_circuit_assembler.recipeBuilder()
.inputs([<contenttweaker:rf_universal_processor_base>, <gregtech:meta_item_1:600>*4, <gregtech:meta_item_1:601>*4, <ore:wireFineRedAlloy>*8, <ore:boltBlueAlloy>*8])
.fluidInputs([<liquid:soldering_alloy> * 288])
.outputs([<contenttweaker:rf_universal_processor>])
.EUt(240)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

//绝缘硼玻璃罩
GTmachine_assembler.recipeBuilder()
.inputs([<ore:wireFineBorosilicateGlass> * 32, <ore:foilPlastic> * 32])
.fluidInputs([<liquid:borosilicate_glass> * 576])
.outputs([<contenttweaker:insulated_boron_glass_cover> * 4])
.EUt(240)
.duration(200)
.buildAndRegister();

//蓝石接收线圈
recipes.addShaped(<contenttweaker:power_coil_bluestone> * 1,
  [[null,<thermalfoundation:material:513>,<ore:wireGtOctalBlueAlloy>],
   [<thermalfoundation:material:513>,<contenttweaker:rf_universal_processor>,<thermalfoundation:material:513>],
   [<ore:wireGtOctalBlueAlloy>,<thermalfoundation:material:513>,null]]);