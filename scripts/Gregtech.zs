//Created by zhenmunse
//格雷科技 Gregtech
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
//砖木模
recipes.remove(<gregtech:meta_item_1:348>);
recipes.addShapeless(<gregtech:meta_item_1:348>,
    [<tconstruct:pattern>,craftingKnife]);
//压缩焦粘土
recipes.remove(<gregtech:meta_item_1:350>);
recipes.addShaped(<gregtech:meta_item_1:350> * 3,
  [[<ore:sand>,<ore:sand>,<ore:sand>],
   [<ore:sand>,<gregtech:meta_item_1:348>.reuse(),<ore:sand>],
   [<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:clay_ball>]]);
//给所有锯类添加通用矿辞
<ore:craftingsaw>.add(<gregtech:meta_tool:5>);  //GT锯子
<ore:craftingsaw>.add(<gregtech:meta_tool:25>);  //GT链锯(LV)
<ore:craftingsaw>.add(<gregtech:meta_tool:26>);  //GT链锯(MV)
<ore:craftingsaw>.add(<gregtech:meta_tool:27>);  //GT链锯(HV)
<ore:craftingsaw>.add(<gregtech:meta_tool:32>);  //GT圆锯(LV)
//货币
recipes.remove(<gregtech:meta_item_1>);
recipes.remove(<gregtech:meta_item_1:1>);
recipes.remove(<gregtech:meta_item_1:2>);
recipes.remove(<gregtech:meta_item_1:3>);
recipes.remove(<gregtech:meta_item_1:4>);
recipes.remove(<gregtech:meta_item_1:5>);
recipes.remove(<gregtech:meta_item_1:6>);
recipes.remove(<gregtech:meta_item_1:7>);
recipes.remove(<gregtech:meta_item_1:8>);
recipes.remove(<gregtech:meta_item_1:9>);
recipes.remove(<gregtech:meta_item_1:10>);
//小型燃煤锅炉
recipes.remove(<gregtech:machine:1>);
recipes.addShaped(<gregtech:machine:1> * 1,
  [[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
   [<ore:plateBronze>,<ore:craftingToolWrench>,<ore:plateBronze>],
   [<ore:blockBrick>,<ic2:te:46>,<ore:blockBrick>]]);
//高压燃煤锅炉
recipes.remove(<gregtech:machine:2>);
recipes.addShaped(<gregtech:machine:2> * 1,
  [[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:craftingToolWrench>,<ore:plateSteel>],
   [<ore:blockBrick>,<ic2:te:46>,<ore:blockBrick>]]);
//小型熔岩锅炉
recipes.remove(<gregtech:machine:5>);
mods.jei.JEI.removeAndHide(<gregtech:machine:5>);
//高压熔岩锅炉
recipes.remove(<gregtech:machine:6>);
recipes.addShaped(<gregtech:machine:6> * 1,
  [[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
   [<ore:plateSteel>,<railcraft:glass>,<ore:plateSteel>],
   [<ore:plateSteel>,<ic2:te:46>,<ore:plateSteel>]]);
//橡胶片
GTmachine_alloy.recipeBuilder()
.inputs([<gregtech:meta_ingot:1068>*2,<gregtech:meta_item_1:12>.reuse()])
.outputs([<gregtech:meta_plate:1068>*1])
.EUt(6)
.duration(10)
.buildAndRegister();
//1x 锡线缆
GTmachine_alloy.recipeBuilder()
.inputs([<gregtech:wire_single:112>*1,<gregtech:meta_ingot:1068>*2])
.outputs([<gregtech:cable_single:112>*1])
.EUt(12)
.duration(20)
.buildAndRegister();
//1x 铜线缆
GTmachine_alloy.recipeBuilder()
.inputs([<gregtech:wire_single:25>*1,<gregtech:meta_ingot:1068>*2])
.outputs([<gregtech:cable_single:25>])
.EUt(12)
.duration(20)
.buildAndRegister();