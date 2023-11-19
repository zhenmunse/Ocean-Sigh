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
val GTmachine_electric_blast_furnace = RecipeMap.getByName("electric_blast_furnace");

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
<ore:craftingsaw>.add(<gregtech:saw>);  //GT锯子
<ore:craftingsaw>.add(<gregtech:buzzsaw>);  //GT圆锯(LV)
<ore:craftingsaw>.add(<gregtech:chainsaw_lv>);  //GT链锯(LV)

//木浆
recipes.addShapeless(<gregtech:meta_dust:1617> * 6,
  [<ore:logWood>,<ore:toolMortar>]);
//红色合金
recipes.addShapeless(<gregtech:meta_nugget:2517> * 9,
  [<ore:ingotRedAlloy>]);
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
   [<ore:plateBronze>,<ore:toolWrench>,<ore:plateBronze>],
   [<ore:blockBrick>,<ic2:te:46>,<ore:blockBrick>]]);
//高压燃煤锅炉
recipes.remove(<gregtech:machine:2>);
recipes.addShaped(<gregtech:machine:2> * 1,
  [[<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:toolWrench>,<ore:plateSteel>],
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
.inputs([<gregtech:meta_ingot:1068>*2])
.notConsumable([<gregtech:meta_item_1:12>])
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
// HV 电路组装机
recipes.remove(<gregtech:machine:637>);
recipes.addShaped(<gregtech:machine:637> * 1,
  [[<gregtech:meta_item_1:189>,<ore:circuitIv>,<gregtech:meta_item_1:219>],
   [<gregtech:meta_item_1:159>,<gregtech:machine:988>,<gregtech:meta_item_1:159>],
   [<ore:cableGtSingleGold>,<ore:circuitIv>,<ore:cableGtSingleGold>]]);
// 处理器主机 
<recipemap:circuit_assembler>.findRecipe(480, 
[<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], 
[<liquid:soldering_alloy> * 288]).remove();
<recipemap:circuit_assembler>.findRecipe(480, 
[<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], 
[<liquid:tin> * 576]).remove();
<recipemap:circuit_assembler>.findRecipe(480, 
[<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16], 
[<liquid:soldering_alloy> * 288]).remove();
<recipemap:circuit_assembler>.findRecipe(480, 
[<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16]
,[<liquid:tin> * 576]).remove();



GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2,
<metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16])
.fluidInputs([<liquid:soldering_alloy> * 288])
.outputs([<gregtech:meta_item_1:631>])
.EUt(120)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();
GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2,
<metaitem:component.advanced_smd.inductor> * 2, <metaitem:component.advanced_smd.capacitor> * 4, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16])
.fluidInputs([<liquid:tin> * 576])
.outputs([<gregtech:meta_item_1:631>])
.EUt(120)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();
GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16])
.fluidInputs([<liquid:soldering_alloy> * 288])
.outputs([<gregtech:meta_item_1:631>])
.EUt(120)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();
GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.workstation> * 2, 
<metaitem:component.inductor> * 8, <metaitem:component.capacitor> * 16, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 16])
.fluidInputs([<liquid:tin> * 576])
.outputs([<gregtech:meta_item_1:631>])
.EUt(120)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

<ore:plateSapphire>.add(<gregtech:meta_plate:281>);  //给绿色蓝宝石添加蓝宝石矿辞

//硬化合金
GTmachine_mixer.recipeBuilder()
.inputs([<ore:dustInvar> * 5, <ore:dustDiamond> * 2, <ore:dustObsidian> * 2])
.outputs([<gregtech:meta_dust:32203> * 9])
.EUt(240)
.duration(300)
.buildAndRegister();

GTmachine_mixer.recipeBuilder()
.inputs([<ore:dustInvar> * 7, <ore:dustTungstenCarbide> * 2])
.outputs([<gregtech:meta_dust:32203> * 9])
.EUt(240)
.duration(300)
.buildAndRegister();

//强化合金
GTmachine_mixer.recipeBuilder()
.inputs([<ore:dustLumium> * 5, <ore:dustBlueSteel> * 2, <ore:dustHardenedAlloy> * 2])
.outputs([<gregtech:meta_dust:32204> * 9])
.EUt(1920)
.duration(300)
.buildAndRegister();

//钛

<recipemap:electric_blast_furnace>.findRecipe(480, 
[<metaitem:dustMagnesium> * 2], 
[<liquid:titanium_tetrachloride> * 1000]).remove();

<recipemap:electric_blast_furnace>.findRecipe(480, 
[<metaitem:dustTitanium>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

<recipemap:electric_blast_furnace>.findRecipe(480, 
[<metaitem:dustTitanium>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], 
[<liquid:helium> * 100]).remove();

GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<metaitem:dustTitanium>])
.outputs([<gregtech:meta_ingot_hot:113>])
.circuit(1)
.EUt(1920)
.duration(500)
.property("temperature",3300)
.buildAndRegister();

GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<metaitem:dustTitanium>])
.outputs([<gregtech:meta_ingot_hot:113>])
.fluidInputs([<liquid:helium> * 100])
.circuit(2)
.EUt(1920)
.duration(250)
.property("temperature",3300)
.buildAndRegister();

GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<ore:dustMagnesium> * 2])
.outputs([<gregtech:meta_ingot_hot:113> * 1, <gregtech:meta_dust:357> * 6])
.fluidInputs([<liquid:titanium_tetrachloride> * 1000])
.EUt(960)
.duration(500)
.property("temperature",3300)
.buildAndRegister();

GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<ore:dustSodium> * 4])
.outputs([<gregtech:meta_ingot_hot:113> * 1, <gregtech:meta_dust:312> * 12])
.fluidInputs([<liquid:titanium_tetrachloride> * 1000])
.EUt(960)
.duration(250)
.property("temperature",3300)
.buildAndRegister();

GTmachine_electric_blast_furnace.recipeBuilder()
.inputs([<ore:dustPotassium> * 4])
.outputs([<gregtech:meta_ingot_hot:113> * 1, <gregtech:meta_dust:309> * 12])
.fluidInputs([<liquid:titanium_tetrachloride> * 1000])
.EUt(1920)
.duration(150)
.property("temperature",3300)
.buildAndRegister();

// 纳米处理器主机 * 1
<recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, 
<metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:soldering_alloy> * 288]).remove();
// 纳米处理器主机 * 1
<recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, 
<metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:tin> * 576]).remove();
// 纳米处理器主机 * 1
<recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, 
<metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:soldering_alloy> * 288]).remove();
// 纳米处理器主机 * 1
<recipemap:circuit_assembler>.findRecipe(1920, [<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2, 
<metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, <metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32], [<liquid:tin> * 576]).remove();
GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2,
<metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32])
.fluidInputs([<liquid:soldering_alloy> * 288])
.outputs([<gregtech:meta_item_1:635>])
.EUt(480)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2,
<metaitem:component.advanced_smd.inductor> * 4, <metaitem:component.advanced_smd.capacitor> * 8, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32])
.fluidInputs([<liquid:tin> * 576])
.outputs([<gregtech:meta_item_1:635>])
.EUt(480)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2,
<metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32])
.fluidInputs([<liquid:soldering_alloy> * 288])
.outputs([<gregtech:meta_item_1:635>])
.EUt(480)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

GTmachine_circuit_assembler.recipeBuilder()
.inputs([<metaitem:frameAluminium> * 2, <metaitem:circuit.nano_computer> * 2,
<metaitem:component.smd.inductor> * 16, <metaitem:component.smd.capacitor> * 32, 
<metaitem:plate.random_access_memory> * 16, <metaitem:wireGtSingleAnnealedCopper> * 32])
.fluidInputs([<liquid:tin> * 576])
.outputs([<gregtech:meta_item_1:635>])
.EUt(480)
.duration(400)
.property("cleanroom", "cleanroom")
.buildAndRegister();

//EV电路组装机
recipes.remove(<gregtech:machine:638>);
recipes.addShaped(<gregtech:machine:638> * 1,
  [[<gregtech:meta_item_1:190>,<ore:circuitLuv>,<gregtech:meta_item_1:220>],
   [<gregtech:meta_item_1:160>,<gregtech:machine:989>,<gregtech:meta_item_1:160>],
   [<ore:cableGtSingleAluminium>,<ore:circuitLuv>,<ore:cableGtSingleAluminium>]]);