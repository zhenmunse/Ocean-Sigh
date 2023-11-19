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

var eng_processor = <appliedenergistics2:material:24>;
var log_processor = <appliedenergistics2:material:22>;
var calc_processor = <appliedenergistics2:material:23>;
var form_core = <appliedenergistics2:material:43>;
var anni_core = <appliedenergistics2:material:44>;
//削弱合成表
recipes.remove(<appliedenergistics2:material:40>);  //木齿轮

//压印模板
GTmachine_engraver.recipeBuilder()  //运算压印模板
.inputs([<ore:blockIron>])
.notConsumable(<ore:craftingLensBlue>)
.outputs([<appliedenergistics2:material:13>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //工程压印模板
.inputs([<ore:blockIron>])
.notConsumable(<ore:craftingLensCyan>)
.outputs([<appliedenergistics2:material:14>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //硅压印模板
.inputs([<ore:blockIron>])
.notConsumable(<ore:craftingLensWhite>)
.outputs([<appliedenergistics2:material:19>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

GTmachine_engraver.recipeBuilder()  //逻辑压印模板
.inputs([<ore:blockIron>])
.notConsumable(<ore:craftingLensYellow>)
.outputs([<appliedenergistics2:material:15>*1])
.EUt(1920)
.duration(1000)
.buildAndRegister();

//陨石罗盘
recipes.remove(<appliedenergistics2:sky_compass>);
recipes.addShaped(<appliedenergistics2:sky_compass> * 1,
  [[<ore:plateSteel>,<contenttweaker:insulated_boron_glass_cover>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:gemFlawlessCertusQuartz>,<ore:plateSteel>],
   [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]]);

//压印器
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber> * 1,
  [[<ore:plateDoubleTitanium>,<contenttweaker:insulated_boron_glass_cover>,<ore:plateDoubleTitanium>],
   [<gregtech:meta_item_1:99>,<gregtech:machine:428>,<gregtech:meta_item_1:99>],
   [<ore:plateDoubleTitanium>,<ore:crystalPureFluix>,<ore:plateDoubleTitanium>]]);

//电路板
GTmachine_forming.recipeBuilder()  //运算电路板
.inputs([<ore:crystalPureCertusQuartz>])
.notConsumable([<appliedenergistics2:material:13>])
.outputs([<appliedenergistics2:material:16>*1])
.EUt(16)
.duration(200)
.buildAndRegister();

GTmachine_forming.recipeBuilder()  //工程电路板
.inputs([<ore:plateDiamond>])
.notConsumable([<appliedenergistics2:material:14>])
.outputs([<appliedenergistics2:material:17>*1])
.EUt(16)
.duration(200)
.buildAndRegister();

GTmachine_forming.recipeBuilder()  //逻辑电路板
.inputs([<ore:plateGold>])
.notConsumable([<appliedenergistics2:material:15>])
.outputs([<appliedenergistics2:material:18>*1])
.EUt(16)
.duration(200)
.buildAndRegister();

GTmachine_forming.recipeBuilder()  //硅板
.inputs([<ore:plateSilicon>])
.notConsumable([<appliedenergistics2:material:19>])
.outputs([<appliedenergistics2:material:20>*1])
.EUt(16)
.duration(200)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //运算处理器
.inputs(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>)
.outputs(<appliedenergistics2:material:23>)
.fluidInputs(<liquid:red_alloy>*144)
.EUt(16)
.duration(80)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //工程处理器
.inputs(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>)
.outputs(<appliedenergistics2:material:24>)
.fluidInputs(<liquid:red_alloy>*144)
.EUt(16)
.duration(80)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //逻辑处理器
.inputs(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>)
.outputs(<appliedenergistics2:material:22>)
.fluidInputs(<liquid:red_alloy>*144)
.EUt(16)
.duration(80)
.buildAndRegister();

// 赛特斯石英块 * 1
<recipemap:compressor>.findRecipe(2, [<metaitem:gemCertusQuartz> * 9], null).remove();
mods.jei.JEI.removeAndHide(<gregtech:meta_block_compressed_13:6>);
recipes.remove(<appliedenergistics2:quartz_block>); //赛特斯石英块
GTmachine_compressor.recipeBuilder()
.inputs(<ore:crystalCertusQuartz>*4)
.outputs(<appliedenergistics2:quartz_block>)
.EUt(2)
.duration(300)
.buildAndRegister();
GTmachine_compressor.recipeBuilder()
.inputs(<ore:crystalPureCertusQuartz>*8)
.outputs(<appliedenergistics2:quartz_block>)
.EUt(2)
.duration(300)
.buildAndRegister();

GTmachine_electric_blast_furnace.recipeBuilder()  //石英玻璃
.inputs([<ore:dustQuartz>,<ore:dustCertusQuartz>])
.outputs([<appliedenergistics2:quartz_glass>*2])
.EUt(120)
.duration(50)
.property("temperature",1000)
.buildAndRegister();

GTmachine_alloy.recipeBuilder()
.inputs([<ore:dustQuartz>,<ore:dustCertusQuartz>])
.outputs([<appliedenergistics2:quartz_glass>*2])
.EUt(16)
.duration(100)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //聚能石英玻璃
.inputs([<appliedenergistics2:quartz_glass>,<contenttweaker:energetic_blend>*8])
.outputs([<appliedenergistics2:quartz_vibrant_glass>])
.EUt(30)
.duration(200)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()
.inputs([<extrautils2:decorativeglass:4>,<ore:dustFluix>*2])
.outputs([<appliedenergistics2:quartz_vibrant_glass>])
.EUt(60)
.duration(200)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //充能石英火把
.inputs([<appliedenergistics2:material:1>,<ore:stickIron>])
.outputs([<appliedenergistics2:quartz_fixture>])
.EUt(30)
.duration(200)
.buildAndRegister();

recipes.remove(<appliedenergistics2:fluix_block>); //赛特斯石英块
GTmachine_compressor.recipeBuilder()
.inputs(<ore:crystalFluix>*4)
.outputs(<appliedenergistics2:fluix_block>)
.EUt(2)
.duration(300)
.buildAndRegister();
GTmachine_compressor.recipeBuilder()
.inputs(<appliedenergistics2:material:12>*8)
.outputs(<appliedenergistics2:fluix_block>)
.EUt(2)
.duration(300)
.buildAndRegister();

recipes.remove(<appliedenergistics2:sky_stone_chest>);  //陨石箱子
GTmachine_assembler.recipeBuilder()  
.inputs([<appliedenergistics2:sky_stone_block>*8,<minecraft:chest>])
.outputs([<appliedenergistics2:sky_stone_chest>])
.EUt(30)
.duration(200)
.buildAndRegister();

recipes.remove(<appliedenergistics2:smooth_sky_stone_chest>);  //陨石块箱子
GTmachine_assembler.recipeBuilder()  
.inputs([<appliedenergistics2:smooth_sky_stone_block>*8,<minecraft:chest>])
.outputs([<appliedenergistics2:smooth_sky_stone_chest>])
.EUt(30)
.duration(200)
.buildAndRegister();

recipes.remove(<appliedenergistics2:grindstone>);  //石英磨具
mods.jei.JEI.removeAndHide(<appliedenergistics2:grindstone>);
recipes.remove(<appliedenergistics2:crank>);  //木质曲柄
mods.jei.JEI.removeAndHide(<appliedenergistics2:crank>);

recipes.remove(<appliedenergistics2:wireless_access_point>);  //ME无线访问点
recipes.addShaped(<appliedenergistics2:wireless_access_point> * 1,
  [[null,<appliedenergistics2:material:41>,null],
   [<ore:screwEnhancedAlloy>,<appliedenergistics2:material:23>,<ore:screwEnhancedAlloy>],
   [<ore:toolScrewdriver>,<appliedenergistics2:part:16>,<ore:toolWrench>]]);

recipes.remove(<appliedenergistics2:charger>);  //充能器
recipes.addShaped(<appliedenergistics2:charger> * 1,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:material:41>,<ore:plateEnhancedAlloy>],
   [<thermaldynamics:duct_0:1>,<thermalexpansion:machine:9>,<thermaldynamics:duct_0:1>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:tiny_tnt>);  //迷你TNT
recipes.addShapeless(<appliedenergistics2:tiny_tnt> * 4,
  [<minecraft:tnt>,<ore:toolSaw>]);

recipes.remove(<appliedenergistics2:security_station>);  //ME安全终端
recipes.addShaped(<appliedenergistics2:security_station> * 1,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:chest>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:part:16>,<appliedenergistics2:material:37>,<appliedenergistics2:part:16>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:24>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:quantum_ring>);  //ME量子环
recipes.addShaped(<appliedenergistics2:quantum_ring> * 1,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:material:22>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:material:24>,<appliedenergistics2:energy_cell>,<appliedenergistics2:part:16>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:22>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:quantum_link>);  //ME量子链接仓
recipes.addShaped(<appliedenergistics2:quantum_link> * 1,
  [[<ore:plateEnhancedAlloy>,<ore:pearlFluix>,<ore:plateEnhancedAlloy>],
   [<ore:pearlFluix>,<appliedenergistics2:quartz_vibrant_glass>,<ore:pearlFluix>],
   [<ore:plateEnhancedAlloy>,<ore:pearlFluix>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:spatial_pylon>);  //空间塔
recipes.addShaped(<appliedenergistics2:spatial_pylon> * 1,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>],
   [<ore:dustFluix>,<ore:crystalFluix>,<ore:dustFluix>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:spatial_io_port>);  //空间IO端口
recipes.addShaped(<appliedenergistics2:spatial_io_port>,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:spatial_pylon>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:part:16>,<appliedenergistics2:io_port>,<appliedenergistics2:part:16>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:24>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:controller>);  //ME控制器
recipes.addShaped(<appliedenergistics2:controller>,
  [[<ore:plateEnhancedAlloy>,<ore:circuitHv>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:material:24>,<appliedenergistics2:fluix_block>,<appliedenergistics2:material:24>],
   [<ore:plateEnhancedAlloy>,<ore:circuitHv>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:drive>);  //ME驱动器
recipes.addShaped(<appliedenergistics2:drive>,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:material:24>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:part:16>,<appliedenergistics2:chest>,<appliedenergistics2:part:16>],
   [<ore:plateEnhancedAlloy>,<ore:circuitHv>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:chest>);  //ME箱子
recipes.addShaped(<appliedenergistics2:chest>,
  [[<ore:plateHardenedAlloy>,<ore:circuitMv>,<ore:plateHardenedAlloy>],
   [<appliedenergistics2:part:16>,<ironchest:iron_chest:6>,<appliedenergistics2:part:16>],
   [<ore:plateHardenedAlloy>,<ore:circuitMv>,<ore:plateHardenedAlloy>]]);

recipes.remove(<appliedenergistics2:interface>);  //ME接口
recipes.addShaped(<appliedenergistics2:interface>,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:material:43>,<gregtech:machine:989>,<appliedenergistics2:material:44>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:fluid_interface>);  //ME流体接口
recipes.addShaped(<appliedenergistics2:fluid_interface>,
  [[<ore:plateHardenedAlloy>,<appliedenergistics2:part:16>,<ore:plateHardenedAlloy>],
   [<appliedenergistics2:material:54>,<appliedenergistics2:interface>,<appliedenergistics2:material:54>],
   [<ore:plateHardenedAlloy>,<appliedenergistics2:part:16>,<ore:plateHardenedAlloy>]]);

recipes.remove(<appliedenergistics2:cell_workbench>);  //元件工作台
recipes.addShaped(<appliedenergistics2:cell_workbench>,
  [[<ore:toolScrewdriver>,<gregtech:meta_item_1:307>,<ore:toolWrench>],
   [<ore:screwEnhancedAlloy>,<minecraft:crafting_table>,<ore:screwEnhancedAlloy>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:23>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:io_port>);  //ME-IO端口
recipes.addShaped(<appliedenergistics2:io_port>,
  [[<appliedenergistics2:part:16>,<ore:plateEnhancedAlloy>,<appliedenergistics2:part:16>],
   [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:24>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:condenser>);  //物质聚合器
recipes.addShaped(<appliedenergistics2:condenser>,
  [[<ore:plateEnhancedAlloy>,<gregtech:meta_item_1:175>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_item_1:175>,<gregtech:machine:989>,<gregtech:meta_item_1:175>],
   [<ore:plateEnhancedAlloy>,<gregtech:meta_item_1:175>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:energy_acceptor>);  //能源接收器
recipes.addShaped(<appliedenergistics2:energy_acceptor>,
  [[<ore:plateEnhancedAlloy>,<ore:crystalFluix>,<ore:plateEnhancedAlloy>],
   [<ore:crystalFluix>,<ore:plateLumium>,<ore:crystalFluix>],
   [<ore:plateEnhancedAlloy>,<ore:crystalFluix>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:vibration_chamber>);  //谐振仓
mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);

recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);  //晶体催生器
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:quartz_vibrant_glass>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:part:16>,<gregtech:machine:127>,<appliedenergistics2:part:16>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:24>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:energy_cell>);  //能源元件
recipes.addShaped(<appliedenergistics2:energy_cell>,
  [[<ore:plateCertusQuartz>,<ore:dustFluix>,<ore:plateCertusQuartz>],
   [<ore:circuitHv>,<appliedenergistics2:fluix_block>,<ore:circuitHv>],
   [<ore:plateCertusQuartz>,<ore:cableGtOctalAluminium>,<ore:plateCertusQuartz>]]);

recipes.remove(<appliedenergistics2:dense_energy_cell>);  //致密能源元件
recipes.addShaped(<appliedenergistics2:dense_energy_cell>,
  [[<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>,<appliedenergistics2:energy_cell>],
   [<ore:circuitIv>,<gregtech:machine:1319>,<ore:circuitIv>],
   [<appliedenergistics2:energy_cell>,<appliedenergistics2:material:24>,<appliedenergistics2:energy_cell>]]);

recipes.remove(<appliedenergistics2:crafting_unit>);  //合成单元
recipes.addShaped(<appliedenergistics2:crafting_unit>,
  [[<ore:plateEnhancedAlloy>,<appliedenergistics2:material:22>,<ore:plateEnhancedAlloy>],
   [<ore:circuit:Lv>,<appliedenergistics2:material:24>,<ore:circuit:Lv>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:23>,<ore:plateEnhancedAlloy>]]);

GTmachine_assembler.recipeBuilder()  //并行处理单元
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:24>*2])
.outputs([<appliedenergistics2:crafting_accelerator>])
.EUt(120)
.duration(400)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //1k合成存储器
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:35>])
.outputs([<appliedenergistics2:crafting_storage_1k>])
.EUt(480)
.duration(400)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //4k合成存储器
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:36>])
.outputs([<appliedenergistics2:crafting_storage_4k>])
.EUt(480)
.duration(400)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //16k合成存储器
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:37>])
.outputs([<appliedenergistics2:crafting_storage_16k>])
.EUt(480)
.duration(400)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //64k合成存储器
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:material:38>])
.outputs([<appliedenergistics2:crafting_storage_64k>])
.EUt(480)
.duration(400)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //合成监控器
.inputs([<appliedenergistics2:crafting_unit>,<appliedenergistics2:part:400>])
.outputs([<appliedenergistics2:crafting_monitor>])
.EUt(480)
.duration(400)
.buildAndRegister();

recipes.remove(<appliedenergistics2:molecular_assembler>);  //分子装配室
recipes.addShaped(<appliedenergistics2:molecular_assembler>,
  [[<ore:plateEnhancedAlloy>,<ore:blockGlass>,<ore:plateEnhancedAlloy>],
   [<appliedenergistics2:material:43>,<gregtech:machine:112>,<appliedenergistics2:material:44>],
   [<ore:plateEnhancedAlloy>,<ore:blockGlass>,<ore:plateEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:light_detector>);  //光亮探测器
GTmachine_assembler.recipeBuilder()
.inputs([<ore:crystalCertusQuartz>,<ore:stickIron>])
.outputs([<appliedenergistics2:light_detector>])
.EUt(30)
.duration(200)
.buildAndRegister();

val AE2Decoration = [  //装饰性物品/方块
  <appliedenergistics2:sky_stone_stairs>,
  <appliedenergistics2:smooth_sky_stone_stairs>,
  <appliedenergistics2:sky_stone_brick_stairs>,
  <appliedenergistics2:sky_stone_small_brick_stairs>,
  <appliedenergistics2:fluix_stairs>,
  <appliedenergistics2:quartz_stairs>,
  <appliedenergistics2:chiseled_quartz_stairs>,
  <appliedenergistics2:quartz_pillar_stairs>,
  <appliedenergistics2:sky_stone_slab>,
  <appliedenergistics2:smooth_sky_stone_slab>,
  <appliedenergistics2:sky_stone_brick_slab>,
  <appliedenergistics2:sky_stone_small_brick_slab>,
  <appliedenergistics2:fluix_slab>,
  <appliedenergistics2:quartz_slab>,
  <appliedenergistics2:chiseled_quartz_slab>,
  <appliedenergistics2:quartz_pillar_slab>,
  <appliedenergistics2:paint_ball:*>
  ] as IItemStack[];
for item in AE2Decoration{
  recipes.remove(item);
  mods.jei.JEI.removeAndHide(item);
}

recipes.remove(<appliedenergistics2:biometric_card>);  //身份卡
recipes.addShaped(<appliedenergistics2:biometric_card>,
  [[<appliedenergistics2:material:24>,<gregtech:meta_item_1:307>,<ore:plateEnhancedAlloy>],
   [<ore:plateGold>,<ore:plateRedAlloy>,<ore:plateGold>],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:memory_card>);  //内存卡
recipes.addShaped(<appliedenergistics2:memory_card>,
  [[<appliedenergistics2:material:23>,<ore:circuitEv>,<ore:plateEnhancedAlloy>],
   [<ore:plateGold>,<ore:plateRedAlloy>,<ore:plateGold>],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:network_tool>);  //网络工具
recipes.addShaped(<appliedenergistics2:network_tool>,
  [[<thermalfoundation:wrench>,<ore:itemIlluminatedPanel>,<appliedenergistics2:material:23>],
   [<ore:chest>,null,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:view_cell>);  //显示元件
recipes.addShaped(<appliedenergistics2:view_cell>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<ore:crystalCertusQuartz>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:storage_cell_1k>);  //1k-ME存储元件
recipes.addShaped(<appliedenergistics2:storage_cell_1k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:35>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:storage_cell_4k>);  //4k-ME存储元件
recipes.addShaped(<appliedenergistics2:storage_cell_4k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:36>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:storage_cell_16k>);  //16k-ME存储元件
recipes.addShaped(<appliedenergistics2:storage_cell_16k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:37>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:storage_cell_64k>);  //64k-ME存储元件
recipes.addShaped(<appliedenergistics2:storage_cell_64k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:38>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:fluid_storage_cell_1k>);  //1k-ME流体存储元件
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_1k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:54>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:fluid_storage_cell_4k>);  //4k-ME流体存储元件
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_4k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:55>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:fluid_storage_cell_16k>);  //16k-ME流体存储元件
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_16k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:56>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:fluid_storage_cell_64k>);  //64k-ME流体存储元件
recipes.addShaped(<appliedenergistics2:fluid_storage_cell_64k>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:57>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);  //2³-ME空间存储元件
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_2_cubed>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:32>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);  //16³-ME空间存储元件
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_16_cubed>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:32>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);  //128³k-ME空间存储元件
recipes.addShaped(<appliedenergistics2:spatial_storage_cell_128_cubed>,
  [[<ore:toolHammer>,<ore:plateCertusQuartz>,<gregtech:meta_screw:32204>],
   [<ore:plateEnhancedAlloy>,<appliedenergistics2:material:34>,<ore:plateEnhancedAlloy>],
   [<gregtech:meta_screw:32204>,<ore:plateHardenedAlloy>,<ore:toolScrewdriver>]]);

GTmachine_assembler.recipeBuilder()  //赛特斯石英种子
.inputs([<ore:dustCertusQuartz>,<ore:sand>])
.outputs([<appliedenergistics2:crystal_seed>*2])
.EUt(7)
.duration(64)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //下界石英种子
.inputs([<ore:dustNetherQuartz>,<ore:sand>])
.outputs([<appliedenergistics2:crystal_seed:600>*2])
.EUt(7)
.duration(64)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //福鲁伊克斯种子
.inputs([<ore:dustFluix>,<ore:sand>])
.outputs([<appliedenergistics2:crystal_seed:1200>*2])
.EUt(7)
.duration(64)
.buildAndRegister();

recipes.remove(<appliedenergistics2:material:28>);  //高级卡
recipes.addShaped(<appliedenergistics2:material:28>,
  [[<ore:platePlatinum>,<ore:plateEnhancedAlloy>,null],
   [<ore:plateRedAlloy>,<appliedenergistics2:material:23>,<ore:plateEnhancedAlloy>],
   [<ore:platePlatinum>,<ore:plateEnhancedAlloy>,null]]);

recipes.remove(<appliedenergistics2:material:44>);  //破坏核心
recipes.addShaped(<appliedenergistics2:material:44>,
  [[<ore:stickEnhancedAlloy>,<appliedenergistics2:material:22>,<ore:stickEnhancedAlloy>],
   [<appliedenergistics2:material:22>,<ore:crystalPureFluix>,<appliedenergistics2:material:22>],
   [<ore:stickEnhancedAlloy>,<appliedenergistics2:material:22>,<ore:stickEnhancedAlloy>]]);

recipes.remove(<appliedenergistics2:material:43>);  //成型核心
recipes.addShaped(<appliedenergistics2:material:43>,
  [[<ore:stickLumium>,<appliedenergistics2:material:22>,<ore:stickLumium>],
   [<appliedenergistics2:material:22>,<ore:crystalPureFluix>,<appliedenergistics2:material:22>],
   [<ore:stickLumium>,<appliedenergistics2:material:22>,<ore:stickLumium>]]);

recipes.remove(<appliedenergistics2:material:28>);  //基础卡
recipes.addShaped(<appliedenergistics2:material:28>,
  [[<ore:plateElectrum>,<ore:plateHardenedAlloy>,null],
   [<ore:plateRedAlloy>,<appliedenergistics2:material:23>,<ore:plateHardenedAlloy>],
   [<ore:plateElectrum>,<ore:plateHardenedAlloy>,null]]);

recipes.remove(<appliedenergistics2:material:52>);  //空白样板
recipes.addShaped(<appliedenergistics2:material:52>,
  [[<ore:blockGlassEnhanced>,<ore:plateLumium>,<ore:blockGlassEnhanced>],
   [<ore:plateLumium>,<ore:crystalCertusQuartz>,<ore:plateLumium>],
   [<ore:plateHardenedAlloy>,<ore:plateHardenedAlloy>,<ore:plateHardenedAlloy>]]);

recipes.remove(<appliedenergistics2:material:27>);  //容量卡
recipes.addShaped(<appliedenergistics2:material:27>,
  [[<appliedenergistics2:material:25>,<appliedenergistics2:material:35>,null],
   [<appliedenergistics2:material:35>,<appliedenergistics2:material:1>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:53>);  //合成卡
recipes.addShaped(<appliedenergistics2:material:53>,
  [[<appliedenergistics2:material:25>,<appliedenergistics2:material:35>,null],
   [<appliedenergistics2:material:35>,<ore:workbench>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:29>);  //模糊卡
recipes.addShaped(<appliedenergistics2:material:29>,
  [[<appliedenergistics2:material:28>,<appliedenergistics2:material:24>,null],
   [<appliedenergistics2:material:22>,<appliedenergistics2:material:23>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:31>);  //反相卡
recipes.addShaped(<appliedenergistics2:material:31>,
  [[<appliedenergistics2:material:28>,<ic2:upgrade:3>,null],
   [<ic2:upgrade:3>,<appliedenergistics2:material:23>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:26>);  //红石卡
recipes.addShaped(<appliedenergistics2:material:26>,
  [[<appliedenergistics2:material:26>,<ore:craftingRedstoneTorch>,null],
   [<ore:craftingRedstoneTorch>,<appliedenergistics2:material:23>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:30>);  //加速卡
recipes.addShaped(<appliedenergistics2:material:30>,
  [[<appliedenergistics2:material:28>,<appliedenergistics2:material:24>,null],
   [<appliedenergistics2:material:22>,<ore:crystalFluix>,null],
   [null,null,null]]);

recipes.remove(<appliedenergistics2:material:35>);  //1k-ME存储组件
recipes.addShaped(<appliedenergistics2:material:35>,
  [[<ore:circuitUlv>,<ore:dustQuartzite>,<ore:circuitUlv>],
   [<ore:dustQuartzite>,<appliedenergistics2:material:22>,<ore:dustQuartzite>],
   [<ore:circuitUlv>,<ore:dustQuartzite>,<ore:circuitUlv>]]);

recipes.remove(<appliedenergistics2:material:36>);  //4k-ME存储组件
recipes.addShaped(<appliedenergistics2:material:36>,
  [[<ore:circuitLv>,<appliedenergistics2:material:35>,<ore:circuitLv>],
   [<appliedenergistics2:material:35>,<appliedenergistics2:material:22>,<appliedenergistics2:material:35>],
   [<ore:circuitLv>,<appliedenergistics2:material:35>,<ore:circuitLv>]]);

recipes.remove(<appliedenergistics2:material:37>); //16k-ME存储组件
recipes.addShaped(<appliedenergistics2:material:37>,
  [[<ore:circuitMv>,<appliedenergistics2:material:36>,<ore:circuitMv>],
   [<appliedenergistics2:material:36>,<contenttweaker:crafting_processor>,<appliedenergistics2:material:36>],
   [<ore:circuitMv>,<appliedenergistics2:material:36>,<ore:circuitMv>]]);

recipes.remove(<appliedenergistics2:material:38>);  //64k-ME存储组件
recipes.addShaped(<appliedenergistics2:material:38>,
  [[<ore:circuitHv>,<appliedenergistics2:material:37>,<ore:circuitHv>],
   [<appliedenergistics2:material:37>,<contenttweaker:crafting_processor>,<appliedenergistics2:material:37>],
   [<ore:circuitHv>,<appliedenergistics2:material:37>,<ore:circuitHv>]]);

recipes.remove(<extracells:storage.component>);  //256k-ME存储组件
recipes.addShaped(<extracells:storage.component>,
  [[<ore:circuitEv>,<appliedenergistics2:material:37>,<ore:circuitEv>],
   [<appliedenergistics2:material:37>,<contenttweaker:crafting_assembly>,<appliedenergistics2:material:37>],
   [<ore:circuitEv>,<appliedenergistics2:material:37>,<ore:circuitEv>]]);

recipes.remove(<extracells:storage.component:1>);  //1024k-ME存储组件
recipes.addShaped(<extracells:storage.component:1>,
  [[<ore:circuitIv>,<extracells:storage.component>,<ore:circuitIv>],
   [<extracells:storage.component>,<contenttweaker:crafting_assembly>,<extracells:storage.component>],
   [<ore:circuitIv>,<extracells:storage.component>,<ore:circuitIv>]]);

recipes.remove(<extracells:storage.component:2>);  //4096k-ME存储组件
recipes.addShaped(<extracells:storage.component:2>,
  [[<ore:circuitLuv>,<extracells:storage.component:1>,<ore:circuitLuv>],
   [<extracells:storage.component:1>,<contenttweaker:crafting_computer>,<extracells:storage.component:1>],
   [<ore:circuitLuv>,<extracells:storage.component:1>,<ore:circuitLuv>]]);

recipes.remove(<extracells:storage.component:3>);  //16384k-ME存储组件
recipes.addShaped(<extracells:storage.component:3>,
  [[<ore:circuitZpm>,<extracells:storage.component:2>,<ore:circuitZpm>],
   [<extracells:storage.component:2>,<contenttweaker:crafting_mainframe>,<extracells:storage.component:2>],
   [<ore:circuitZpm>,<extracells:storage.component:2>,<ore:circuitZpm>]]);

recipes.remove(<appliedenergistics2:material:32>);  //2³空间组件
recipes.addShaped(<appliedenergistics2:material:32>,
  [[<ore:plateLumium>,<ore:pearlFluix>,<ore:plateLumium>],
   [<ore:pearlFluix>,<appliedenergistics2:material:24>,<ore:pearlFluix>],
   [<ore:plateLumium>,<ore:pearlFluix>,<ore:plateLumium>]]);

recipes.remove(<appliedenergistics2:material:33>);  //16³空间组件
recipes.addShaped(<appliedenergistics2:material:33>,
  [[<ore:plateEnderPearl>,<appliedenergistics2:material:32>,<ore:plateEnderPearl>],
   [<appliedenergistics2:material:32>,<contenttweaker:crafting_assembly>,<appliedenergistics2:material:32>],
   [<ore:plateEnderPearl>,<appliedenergistics2:material:32>,<ore:plateEnderPearl>]]);

recipes.remove(<appliedenergistics2:material:34>);  //128³空间组件
recipes.addShaped(<appliedenergistics2:material:34>,
  [[<ore:plateEnderEye>,<appliedenergistics2:material:33>,<ore:plateEnderEye>],
   [<appliedenergistics2:material:33>,<contenttweaker:crafting_computer>,<appliedenergistics2:material:33>],
   [<ore:plateEnderEye>,<appliedenergistics2:material:33>,<ore:plateEnderEye>]]);

recipes.remove(<appliedenergistics2:material:39>);  //存储外壳
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:39>);

recipes.remove(<appliedenergistics2:material:54>);  //1k-ME流体存储组件
recipes.addShaped(<appliedenergistics2:material:54>,
  [[<ore:circuitUlv>,<ore:dustFluix>,<ore:circuitUlv>],
   [<ore:dustFluix>,<appliedenergistics2:material:24>,<ore:dustFluix>],
   [<ore:circuitUlv>,<ore:dustFluix>,<ore:circuitUlv>]]);

recipes.remove(<appliedenergistics2:material:55>);  //4k-ME流体存储组件
recipes.addShaped(<appliedenergistics2:material:55>,
  [[<ore:circuitLv>,<appliedenergistics2:material:54>,<ore:circuitLv>],
   [<appliedenergistics2:material:54>,<appliedenergistics2:material:24>,<appliedenergistics2:material:54>],
   [<ore:circuitLv>,<appliedenergistics2:material:54>,<ore:circuitLv>]]);

recipes.remove(<appliedenergistics2:material:56>); //16k-ME流体存储组件
recipes.addShaped(<appliedenergistics2:material:56>,
  [[<ore:circuitMv>,<appliedenergistics2:material:55>,<ore:circuitMv>],
   [<appliedenergistics2:material:55>,<contenttweaker:crafting_processor>,<appliedenergistics2:material:55>],
   [<ore:circuitMv>,<appliedenergistics2:material:55>,<ore:circuitMv>]]);

recipes.remove(<appliedenergistics2:material:57>);  //64k-ME流体存储组件
recipes.addShaped(<appliedenergistics2:material:57>,
  [[<ore:circuitHv>,<appliedenergistics2:material:56>,<ore:circuitHv>],
   [<appliedenergistics2:material:56>,<contenttweaker:crafting_processor>,<appliedenergistics2:material:56>],
   [<ore:circuitHv>,<appliedenergistics2:material:56>,<ore:circuitHv>]]);

recipes.remove(<extracells:storage.component:8>);  //256k-ME流体存储组件
recipes.addShaped(<extracells:storage.component:8>,
  [[<ore:circuitEv>,<appliedenergistics2:material:37>,<ore:circuitEv>],
   [<appliedenergistics2:material:37>,<contenttweaker:crafting_assembly>,<appliedenergistics2:material:37>],
   [<ore:circuitEv>,<appliedenergistics2:material:37>,<ore:circuitEv>]]);

recipes.remove(<extracells:storage.component:9>);  //1024k-ME流体存储组件
recipes.addShaped(<extracells:storage.component:9>,
  [[<ore:circuitIv>,<extracells:storage.component:8>,<ore:circuitIv>],
   [<extracells:storage.component:8>,<contenttweaker:crafting_computer>,<extracells:storage.component:8>],
   [<ore:circuitIv>,<extracells:storage.component:8>,<ore:circuitIv>]]);

recipes.remove(<extracells:storage.component:10>);  //4096k-ME流体存储组件
recipes.addShaped(<extracells:storage.component:10>,
  [[<ore:circuitLuv>,<extracells:storage.component:9>,<ore:circuitLuv>],
   [<extracells:storage.component:9>,<contenttweaker:crafting_mainframe>,<extracells:storage.component:9>],
   [<ore:circuitLuv>,<extracells:storage.component:9>,<ore:circuitLuv>]]);

//高级存储外壳
recipes.remove(<extracells:storage.casing>);
mods.jei.JEI.removeAndHide(<extracells:storage.casing>);
//流体存储外壳
recipes.remove(<extracells:storage.casing:1>);
mods.jei.JEI.removeAndHide(<extracells:storage.casing:1>);



recipes.remove(<appliedenergistics2:material:49>);  //铁粉
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:49>);
recipes.remove(<appliedenergistics2:material:51>);  //金粉
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:51>);

recipes.remove(<appliedenergistics2:material:41>);  //无线接收器
recipes.addShaped(<appliedenergistics2:material:41>,
  [[<appliedenergistics2:part:140>,<ore:pearlFluix>,<appliedenergistics2:part:140>],
   [null,<ore:stickEnderEye>,null],
   [<ore:crystalPureCertusQuartz>,<ore:circuitHv>,<ore:crystalPureCertusQuartz>]]);

recipes.remove(<appliedenergistics2:material:40>);  //木齿轮
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);

recipes.remove(<appliedenergistics2:part:300>);  //ME破坏面板
recipes.addShaped(<appliedenergistics2:part:300>,
  [[<ore:toolScrewdriver>,<minecraft:diamond_pickaxe>,<ore:toolWrench>],
   [<ore:screwEnhancedAlloy>,<appliedenergistics2:material:44>,<ore:screwEnhancedAlloy>],
   [<ore:crystalFluix>,<ore:crystalFluix>,<ore:crystalFluix>]]);

recipes.remove(<appliedenergistics2:part:120>);  //线缆锚
recipes.addShaped(<appliedenergistics2:part:120>*2,
  [[<ore:boltAny>,null,null],
   [null,<ore:boltAny>,null],
   [null,null,<ore:boltAny>]]);

function cable(startN as int,endN as int, oreDict as IOreDictEntry){
  val cableDef = <appliedenergistics2:part>.definition as IItemDefinition;
  for temp in startN to endN{
    recipes.remove(cableDef.makeStack(temp));
    oreDict.add(cableDef.makeStack(temp));
  }
}

cable(20,36,<ore:cableCoveredAE2>);
cable(500,516,<ore:cableDenseCoveredAE2>);
cable(60,76,<ore:cableDenseSmartAE2>);
cable(0,16,<ore:cableGlassAE2>);
cable(40,56,<ore:cableSmartAE2>);

recipes.addShaped(<appliedenergistics2:part:20>,
  [[<ic2:painter>.reuse(),<ore:cableCoveredAE2>,null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:21>,
  [[<ic2:painter>.reuse(),null,<ore:cableCoveredAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:22>,
  [[<ic2:painter>.reuse(),null,null],
   [<ore:cableCoveredAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:23>,
  [[<ic2:painter>.reuse(),null,null],
   [null,<ore:cableCoveredAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:24>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,<ore:cableCoveredAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:25>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [<ore:cableCoveredAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:26>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,<ore:cableCoveredAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:27>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,null,<ore:cableCoveredAE2>]]);

recipes.addShaped(<appliedenergistics2:part:28>,
  [[<ore:cableCoveredAE2>,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:29>,
  [[null,<ic2:painter>.reuse(),<ore:cableCoveredAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:30>,
  [[null,<ic2:painter>.reuse(),null],
   [<ore:cableCoveredAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:31>,
  [[null,<ic2:painter>.reuse(),null],
   [null,<ore:cableCoveredAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:32>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,<ore:cableCoveredAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:33>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [<ore:cableCoveredAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:34>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,<ore:cableCoveredAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:35>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,<ore:cableCoveredAE2>]]);

recipes.addShaped(<appliedenergistics2:part:36>,
  [[<ore:cableCoveredAE2>,null,<ic2:painter>.reuse()],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:500>,
  [[<ic2:painter>.reuse(),<ore:cableDenseCoveredAE2>,null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:501>,
  [[<ic2:painter>.reuse(),null,<ore:cableDenseCoveredAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:502>,
  [[<ic2:painter>.reuse(),null,null],
   [<ore:cableDenseCoveredAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:503>,
  [[<ic2:painter>.reuse(),null,null],
   [null,<ore:cableDenseCoveredAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:504>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,<ore:cableDenseCoveredAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:505>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [<ore:cableDenseCoveredAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:506>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,<ore:cableDenseCoveredAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:507>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,null,<ore:cableDenseCoveredAE2>]]);

recipes.addShaped(<appliedenergistics2:part:508>,
  [[<ore:cableDenseCoveredAE2>,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:509>,
  [[null,<ic2:painter>.reuse(),<ore:cableDenseCoveredAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:510>,
  [[null,<ic2:painter>.reuse(),null],
   [<ore:cableDenseCoveredAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:511>,
  [[null,<ic2:painter>.reuse(),null],
   [null,<ore:cableDenseCoveredAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:512>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,<ore:cableDenseCoveredAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:513>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [<ore:cableDenseCoveredAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:514>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,<ore:cableDenseCoveredAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:515>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,<ore:cableDenseCoveredAE2>]]);

recipes.addShaped(<appliedenergistics2:part:516>,
  [[<ore:cableDenseCoveredAE2>,null,<ic2:painter>.reuse()],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:60>,
  [[<ic2:painter>.reuse(),<ore:cableDenseSmartAE2>,null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:61>,
  [[<ic2:painter>.reuse(),null,<ore:cableDenseSmartAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:62>,
  [[<ic2:painter>.reuse(),null,null],
   [<ore:cableDenseSmartAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:63>,
  [[<ic2:painter>.reuse(),null,null],
   [null,<ore:cableDenseSmartAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:64>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,<ore:cableDenseSmartAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:65>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [<ore:cableDenseSmartAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:66>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,<ore:cableDenseSmartAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:67>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,null,<ore:cableDenseSmartAE2>]]);

recipes.addShaped(<appliedenergistics2:part:68>,
  [[<ore:cableDenseSmartAE2>,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:69>,
  [[null,<ic2:painter>.reuse(),<ore:cableDenseSmartAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:70>,
  [[null,<ic2:painter>.reuse(),null],
   [<ore:cableDenseSmartAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:71>,
  [[null,<ic2:painter>.reuse(),null],
   [null,<ore:cableDenseSmartAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:72>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,<ore:cableDenseSmartAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:73>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [<ore:cableDenseSmartAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:74>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,<ore:cableDenseSmartAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:75>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,<ore:cableDenseSmartAE2>]]);

recipes.addShaped(<appliedenergistics2:part:76>,
  [[<ore:cableDenseSmartAE2>,null,<ic2:painter>.reuse()],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part>,
  [[<ic2:painter>.reuse(),<ore:cableGlassAE2>,null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:1>,
  [[<ic2:painter>.reuse(),null,<ore:cableGlassAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:2>,
  [[<ic2:painter>.reuse(),null,null],
   [<ore:cableGlassAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:3>,
  [[<ic2:painter>.reuse(),null,null],
   [null,<ore:cableGlassAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:4>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,<ore:cableGlassAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:5>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [<ore:cableGlassAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:6>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,<ore:cableGlassAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:7>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,null,<ore:cableGlassAE2>]]);

recipes.addShaped(<appliedenergistics2:part:8>,
  [[<ore:cableGlassAE2>,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:9>,
  [[null,<ic2:painter>.reuse(),<ore:cableGlassAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:10>,
  [[null,<ic2:painter>.reuse(),null],
   [<ore:cableGlassAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:11>,
  [[null,<ic2:painter>.reuse(),null],
   [null,<ore:cableGlassAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:12>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,<ore:cableGlassAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:13>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [<ore:cableGlassAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:14>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,<ore:cableGlassAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:15>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,<ore:cableGlassAE2>]]);

recipes.addShaped(<appliedenergistics2:part:16>,
  [[<ore:cableGlassAE2>,null,<ic2:painter>.reuse()],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:40>,
  [[<ic2:painter>.reuse(),<ore:cableSmartAE2>,null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:41>,
  [[<ic2:painter>.reuse(),null,<ore:cableSmartAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:42>,
  [[<ic2:painter>.reuse(),null,null],
   [<ore:cableSmartAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:43>,
  [[<ic2:painter>.reuse(),null,null],
   [null,<ore:cableSmartAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:44>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,<ore:cableSmartAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:45>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [<ore:cableSmartAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:46>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,<ore:cableSmartAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:47>,
  [[<ic2:painter>.reuse(),null,null],
   [null,null,null],
   [null,null,<ore:cableSmartAE2>]]);

recipes.addShaped(<appliedenergistics2:part:48>,
  [[<ore:cableSmartAE2>,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:49>,
  [[null,<ic2:painter>.reuse(),<ore:cableSmartAE2>],
   [null,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:50>,
  [[null,<ic2:painter>.reuse(),null],
   [<ore:cableSmartAE2>,null,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:51>,
  [[null,<ic2:painter>.reuse(),null],
   [null,<ore:cableSmartAE2>,null],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:52>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,<ore:cableSmartAE2>],
   [null,null,null]]);

recipes.addShaped(<appliedenergistics2:part:53>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [<ore:cableSmartAE2>,null,null]]);

recipes.addShaped(<appliedenergistics2:part:54>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,<ore:cableSmartAE2>,null]]);

recipes.addShaped(<appliedenergistics2:part:55>,
  [[null,<ic2:painter>.reuse(),null],
   [null,null,null],
   [null,null,<ore:cableSmartAE2>]]);

recipes.addShaped(<appliedenergistics2:part:56>,
  [[<ore:cableSmartAE2>,null,<ic2:painter>.reuse()],
   [null,null,null],
   [null,null,null]]);

//ME交换监控器
recipes.remove(<appliedenergistics2:part:420>);
recipes.addShaped(<appliedenergistics2:part:420>,
  [[<ore:toolScrewdriver>,<appliedenergistics2:part:400>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<appliedenergistics2:material:43>,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,<appliedenergistics2:material:44>,<ore:gemFlawlessNetherQuartz>]]);

//ME合成终端
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>,
  [[<ore:toolScrewdriver>,<appliedenergistics2:part:380>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<ore:workbench>,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,eng_processor,<ore:gemFlawlessNetherQuartz>]]);

//暗色照明面板
recipes.remove(<appliedenergistics2:part:200>);
recipes.addShapeless(<appliedenergistics2:part:200>,
  [<appliedenergistics2:part:180>,<ore:toolScrewdriver>]);

//亮色照明面板
recipes.remove(<appliedenergistics2:part:160>);
recipes.addShapeless(<appliedenergistics2:part:160>,
  [<appliedenergistics2:part:200>,<ore:toolScrewdriver>]);

//ME输出总线
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>,
  [[<ore:toolScrewdriver>,<ore:plateTitanium>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,form_core,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,<gregtech:meta_item_1:172>,<ore:gemFlawlessNetherQuartz>]]);

// //ME流体破坏面板
// recipes.remove(<appliedenergistics2:part:302>);
// recipes.addShaped(<appliedenergistics2:part:302>,
//   [[<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>],
//    [<ore:plateLapis>,<appliedenergistics2:part:300>,<ore:plateLapis>],
//    [<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>]]);

// //ME流体输出总线
// recipes.remove(<appliedenergistics2:part:261>);
// recipes.addShaped(<appliedenergistics2:part:261>,
//   [[<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>],
//    [<ore:plateLapis>,<appliedenergistics2:part:260>,<ore:plateLapis>],
//    [<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>]]);

function AE2Fluid(item as IItemStack, product as IItemStack){
  recipes.remove(item);
  recipes.addShaped(item,
  [[<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>],
   [<ore:plateLapis>,product,<ore:plateLapis>],
   [<ore:plateLapis>,<ore:plateLapis>,<ore:plateLapis>]]);
}
//ME流体输出总线
AE2Fluid(<appliedenergistics2:part:260>,<appliedenergistics2:part:261>);
//ME流体破坏面板
AE2Fluid(<appliedenergistics2:part:300>,<appliedenergistics2:part:302>);
//ME流体输入总线
AE2Fluid(<appliedenergistics2:part:240>,<appliedenergistics2:part:241>);
//ME流体接口
recipes.addShapeless(<appliedenergistics2:part:441>,[<appliedenergistics2:fluid_interface>]);
//ME流体标准发信器
AE2Fluid(<appliedenergistics2:part:280>,<appliedenergistics2:part:281>);
//ME流体存储总线
AE2Fluid(<appliedenergistics2:part:220>,<appliedenergistics2:part:221>);
//ME流体终端
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>,
  [[<ore:plateLapis>,<appliedenergistics2:part:16>,<ore:plateLapis>],
   [form_core,<appliedenergistics2:part:380>,anni_core],
   [<ore:plateLapis>,<appliedenergistics2:part:16>,<ore:plateLapis>]]);

//ME成型面板
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>,
  [[<ore:toolScrewdriver>,<minecraft:hopper>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,form_core,<appliedenergistics2:material:44>],
   [<ore:crystalFluix>,<ore:crystalFluix>,<ore:crystalFluix>]]);

//ME精准破坏面板
recipes.remove(<appliedenergistics2:part:301>);
recipes.addShapeless(<appliedenergistics2:part:301>,
  [<appliedenergistics2:part:300>,<ore:pearlFluix>,<ore:toolScrewdriver>]);

//ME输入总线
recipes.remove(<appliedenergistics2:part:240>);
recipes.addShaped(<appliedenergistics2:part:240>,
  [[<ore:toolScrewdriver>,<ore:plateTitanium>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,anni_core,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,<gregtech:meta_item_1:172>,<ore:gemFlawlessNetherQuartz>]]);

//ME接口
recipes.remove(<appliedenergistics2:part:440>);
recipes.addShapeless(<appliedenergistics2:part:440>,
  [<appliedenergistics2:interface>,<ore:toolScrewdriver>]);

//ME接口终端
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>,
  [[<ore:toolScrewdriver>,<appliedenergistics2:part:380>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<appliedenergistics2:part:440>,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,eng_processor,<ore:gemFlawlessNetherQuartz>]]);

//ME触发总线
recipes.remove(<appliedenergistics2:part:80>);
GTmachine_assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:280>,<appliedenergistics2:part:16>*2])
.outputs([<appliedenergistics2:part:80>*1])
.EUt(16)
.duration(100)
.buildAndRegister();
recipes.addShapeless(<appliedenergistics2:part:80>,
  [<appliedenergistics2:part:100>,<ore:toolScrewdriver>]);

//ME反相触发总线
recipes.remove(<appliedenergistics2:part:100>);
recipes.addShapeless(<appliedenergistics2:part:100>,
  [<appliedenergistics2:part:80>,<ore:toolScrewdriver>]);

//ME标准发信器
recipes.remove(<appliedenergistics2:part:280>);
GTmachine_assembler.recipeBuilder()
.inputs([<ore:craftingRedstoneTorch>,calc_processor])
.outputs([<appliedenergistics2:part:280>*1])
.EUt(16)
.duration(100)
.buildAndRegister();

//P2P通道 - ME
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShaped(<appliedenergistics2:part:460>,
  [[<ore:toolScrewdriver>,<ore:plateTitanium>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,eng_processor,<appliedenergistics2:material:44>],
   [<ore:crystalFluix>,<ore:crystalFluix>,<ore:crystalFluix>]]);

//ME样板终端
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>,
  [[<ore:toolScrewdriver>,<appliedenergistics2:part:380>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<appliedenergistics2:material:52>,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,eng_processor,<ore:gemFlawlessNetherQuartz>]]);

//石英纤维
GTmachine_mill.recipeBuilder()
.inputs([<ore:plateCertusQuartz>*2])
.outputs([<appliedenergistics2:part:100>*1])
.EUt(120)
.duration(40)
.buildAndRegister();

GTmachine_mill.recipeBuilder()
.inputs([<ore:plateQuartzite>*4])
.outputs([<appliedenergistics2:part:100>*1])
.EUt(120)
.duration(40)
.buildAndRegister();

GTmachine_mill.recipeBuilder()
.inputs([<ore:plateNetherQuartz>*8])
.outputs([<appliedenergistics2:part:100>*1])
.EUt(120)
.duration(40)
.buildAndRegister();

//照明面板
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>,
  [[<ore:toolScrewdriver>,<ore:plateEnhancedAlloy>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<gregtech:meta_item_1:307>,<appliedenergistics2:material:44>],
   [<ore:plateGlowstone>,<ore:plateRedAlloy>,<ore:plateGlowstone>]]);
recipes.addShapeless(<appliedenergistics2:part:180>,
  [<appliedenergistics2:part:160>,<ore:toolScrewdriver>]);

//ME存储总线
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>,
  [[<ore:toolScrewdriver>,<ore:craftingChest>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<appliedenergistics2:interface>,<appliedenergistics2:material:44>],
   [<ore:gemFlawlessNetherQuartz>,<gregtech:meta_item_1:172>,<ore:gemFlawlessNetherQuartz>]]);

//ME终端
recipes.remove(<appliedenergistics2:part:260>);
recipes.addShaped(<appliedenergistics2:part:260>,
  [[<ore:toolScrewdriver>,<ore:plateTitanium>,<ore:stickEnhancedAlloy>],
   [<appliedenergistics2:part:180>,<ore:circuitMv>,<appliedenergistics2:material:44>],
   [<ore:stickEnhancedAlloy>,<gregtech:meta_item_1:172>,<ore:gemFlawlessNetherQuartz>]]);

//ME存储监控器
recipes.remove(<appliedenergistics2:part:400>);
recipes.addShaped(<appliedenergistics2:part:400>,
  [[<ore:toolScrewdriver>,<appliedenergistics2:part:180>,<ore:toolHammer>],
   [<appliedenergistics2:material:44>,<appliedenergistics2:part:280>,<appliedenergistics2:material:44>],
   [<ore:crystalFluix>,<ore:crystalFluix>,<ore:crystalFluix>]]);

