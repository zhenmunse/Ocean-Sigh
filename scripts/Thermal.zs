//Created by zhenmunse
//热力系列 Thermal Foundation, Expansion and Dynamics
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

//合金粉合成削弱
recipes.remove(<thermalfoundation:material:97>);  //琥珀金粉
recipes.remove(<thermalfoundation:material:98>);  //殷钢粉
recipes.remove(<thermalfoundation:material:99>);  //青铜粉
recipes.remove(<thermalfoundation:material:100>);  //康铜粉(白铜粉)
recipes.remove(<thermalfoundation:material:101>);  //信素粉
GTmachine_mixer.recipeBuilder()
.inputs([<ore:dustCopper>*3,<ore:dustSilver>*1])
.fluidInputs([<liquid:redstone>*1000])
.outputs([<thermalfoundation:material:101>*4])
.EUt(120)
.duration(240)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:102>);  //流明粉
GTmachine_mixer.recipeBuilder()
.inputs([<contenttweaker:luminessence>*2,<ore:dustSilver>*2,<ore:dustTin>*4])
.fluidInputs([<liquid:glowstone>*288])
.outputs([<gregtech:meta_dust:32202>*9])
.EUt(120)
.duration(240)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:103>);  //末影粉

//齿轮削弱
recipes.remove(<thermalfoundation:material:22>);  //木齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:22>);
recipes.remove(<thermalfoundation:material:23>);  //石齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:23>);
recipes.remove(<thermalfoundation:material:24>);  //铁齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:24>);
recipes.removeShaped(<thermalfoundation:material:25> * 1,
  [[null,<minecraft:gold_ingot>,null],
   [<minecraft:gold_ingot>,null,<minecraft:gold_ingot>],
   [null,<minecraft:gold_ingot>,null]]);          //金齿轮
recipes.remove(<thermalfoundation:material:26>);  //钻石齿轮
recipes.removeShaped(<thermalfoundation:material:25> * 1,
  [[null,<minecraft:emerald>,null],
   [<minecraft:emerald>,null,<minecraft:emerald>],
   [null,<minecraft:emerald>,null]]);             //绿宝石齿轮
recipes.removeShaped(<thermalfoundation:material:256> * 1,
  [[null,<ore:ingotCopper>,null],
   [<ore:ingotCopper>,null,<ore:ingotCopper>],
   [null,<ore:ingotCopper>,null]]);               //铜齿轮
recipes.removeShaped(<thermalfoundation:material:257> * 1,
  [[null,<ore:ingotTin>,null],
   [<ore:ingotTin>,null,<ore:ingotTin>],
   [null,<ore:ingotTin>,null]]);                  //锡齿轮
recipes.removeShaped(<thermalfoundation:material:258> * 1,
  [[null,<ore:ingotSilver>,null],
   [<ore:ingotSilver>,null,<ore:ingotSilver>],
   [null,<ore:ingotSilver>,null]]);               //银齿轮
recipes.removeShaped(<thermalfoundation:material:259> * 1,
  [[null,<ore:ingotLead>,null],
   [<ore:ingotLead>,null,<ore:ingotLead>],
   [null,<ore:ingotLead>,null]]);                 //铅齿轮
recipes.remove(<thermalfoundation:material:260>); //铝齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:260>);
recipes.remove(<thermalfoundation:material:261>); //镍齿轮
recipes.addShaped(<thermalfoundation:material:261> * 1,
  [[<ore:stickNickel>,<ore:plateNickel>,<ore:stickNickel>],
   [<ore:plateNickel>,<ore:craftingToolWrench>,<ore:plateNickel>],
   [<ore:stickNickel>,<ore:plateNickel>,<ore:stickNickel>]]);
recipes.removeShaped(<thermalfoundation:material:262> * 1,
  [[null,<ore:ingotPlatinum>,null],
   [<ore:ingotPlatinum>,null,<ore:ingotPlatinum>],
   [null,<ore:ingotPlatinum>,null]]);             //铂齿轮
recipes.remove(<thermalfoundation:material:263>); //铱齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:263>);
recipes.remove(<thermalfoundation:material:264>); //蕴魔秘银齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:264>);
recipes.remove(<thermalfoundation:material:288>); //钢齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:288>);
recipes.removeShaped(<thermalfoundation:material:289> * 1,
  [[null,<ore:ingotElectrum>,null],
   [<ore:ingotElectrum>,null,<ore:ingotElectrum>],
   [null,<ore:ingotElectrum>,null]]);             //琥珀金齿轮
recipes.remove(<thermalfoundation:material:290>); //殷钢齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:290>);
recipes.remove(<thermalfoundation:material:291>); //青铜齿轮
mods.jei.JEI.removeAndHide(<thermalfoundation:material:291>);
recipes.remove(<thermalfoundation:material:292>); //康铜齿轮
recipes.addShaped(<thermalfoundation:material:292> * 1,
  [[<ore:stickCupronickel>,<ore:plateCupronickel>,<ore:stickCupronickel>],
   [<ore:plateCupronickel>,<ore:craftingToolWrench>,<ore:plateCupronickel>],
   [<ore:stickCupronickel>,<ore:plateCupronickel>,<ore:stickCupronickel>]]);
recipes.remove(<thermalfoundation:material:293>); //信素齿轮
GTmachine_fluid_solidifier.recipeBuilder()
.notConsumable([<gregtech:meta_item_1:13>])
.fluidInputs([<liquid:signalum>*576])
.outputs([<thermalfoundation:material:293>*1])
.EUt(7)
.duration(100)
.buildAndRegister();
GTmachine_alloy.recipeBuilder()
.inputs(<thermalfoundation:material:165>*8)
.notConsumable(<gregtech:meta_item_1:13>)
.outputs(<thermalfoundation:material:293>*1)
.EUt(14)
.duration(760)
.buildAndRegister();
GTmachine_extruder.recipeBuilder()
.inputs(<thermalfoundation:material:165>*4)
.notConsumable(<gregtech:meta_item_1:52>)
.outputs(<thermalfoundation:material:293>*1)
.EUt(56)
.duration(380)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:294>); //流明齿轮
GTmachine_fluid_solidifier.recipeBuilder()
.notConsumable(<gregtech:meta_item_1:13>)
.fluidInputs([<liquid:lumium>*576])
.outputs([<thermalfoundation:material:294>*1])
.EUt(7)
.duration(100)
.buildAndRegister();
GTmachine_alloy.recipeBuilder()
.inputs(<thermalfoundation:material:166>*8)
.notConsumable(<gregtech:meta_item_1:13>)
.outputs(<thermalfoundation:material:294>*1)
.EUt(28)
.duration(760)
.buildAndRegister();
GTmachine_extruder.recipeBuilder()
.inputs(<thermalfoundation:material:166>*4)
.notConsumable(<gregtech:meta_item_1:52>)
.outputs(<thermalfoundation:material:294>*1)
.EUt(112)
.duration(380)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:295>); //末影齿轮
recipes.remove(<thermalexpansion:augment:337>);  //齿轮工作模具

recipes.remove(<thermalfoundation:material:160>);  //钢
mods.jei.JEI.removeAndHide(<thermalfoundation:material:160>);

for item in loadedMods["thermalfoundation"].items{ //工具、装备
	if(item.name.startsWith("thermalfoundation:tool")){
		recipes.remove(item);	
	}
	if(item.name.startsWith("thermalfoundation:armor")){
		recipes.remove(item);
	}
}

//铁匠辞典
recipes.remove(<thermalfoundation:tome_lexicon>);
recipes.addShaped(<thermalfoundation:tome_lexicon> * 1,
  [[<ore:craftingToolHardHammer>,<ore:blockSteel>,<ore:craftingToolWrench>],
   [<ore:blockRedAlloy>,<minecraft:book>,<ore:blockLapis>],
   [<ore:craftingToolSaw>,<ore:blockGold>,<ore:craftingToolWireCutter>]]);
//机器与设备
recipes.remove(<thermalexpansion:machine:*>);
recipes.remove(<thermalexpansion:device:*>);
recipes.remove(<thermalexpansion:dynamo:*>);
recipes.remove(<thermalexpansion:frame:*>);
recipes.remove(<thermalexpansion:augment:*>);
recipes.addShaped(<thermalexpansion:machine> * 1,   //红石炉
  [[<ore:wireGtOctalCopper>,<thermalfoundation:material:513>,<ore:wireGtOctalCopper>],
   [<gregtech:meta_item_1:97>,<gregtech:machine:50>,<gregtech:meta_item_1:97>],
   [<ore:cableGtSingleTin>,<ore:circuitLv>,<ore:cableGtSingleTin>]]);
recipes.addShaped(<thermalexpansion:device:10> * 1, //公式处理器
  [[<ore:cableGtSingleTin>,<thermalfoundation:material:512>,<gregtech:meta_item_1:127>],
   [<gregtech:machine:500>,<ore:cableGtQuadrupleTin>,<gregtech:machine:500>],
   [<gregtech:meta_item_1:172>,<thermalfoundation:material:512>,<ore:cableGtSingleTin>]]);
recipes.addShaped(<thermalexpansion:device:7> * 1,  //矿辞转换器
  [[<ore:cableGtSingleTin>,<thermalfoundation:tome_lexicon>,<ore:cableGtSingleTin>],
   [<projectred-integration:gate:29>,<gregtech:machine:986>,<projectred-integration:gate:29>],
   [<projectred-integration:gate:24>,<ore:circuitLv>,<projectred-integration:gate:24>]]);
//升级套件
recipes.remove(<thermalfoundation:upgrade>);    //硬化
recipes.remove(<thermalfoundation:upgrade:1>);  //强化
recipes.remove(<thermalfoundation:upgrade:2>);  //信素
recipes.remove(<thermalfoundation:upgrade:3>);  //谐振
//转换套件
recipes.remove(<thermalfoundation:upgrade:33>); //强化
recipes.remove(<thermalfoundation:upgrade:34>); //信素
recipes.remove(<thermalfoundation:upgrade:35>); //谐振
//元件

recipes.remove(<thermalfoundation:material:512>);   //红石伺服器
recipes.addShaped(<thermalfoundation:material:512> * 2,
  [[<gregtech:meta_item_1:96>,<ore:plateRedAlloy>,<ore:wireGtQuadrupleIron>],
   [<ore:plateRedAlloy>,<projectred-integration:gate:30>,<ore:plateRedAlloy>],
   [<ore:wireGtQuadrupleIron>,<ore:plateRedAlloy>,<gregtech:meta_item_1:96>]]);

recipes.remove(<thermalfoundation:material:513>);   //红石接收线圈
recipes.addShaped(<thermalfoundation:material:513> * 2,
  [[null,<ore:wireGtDoubleGold>,<gregtech:wire_single:2517>],
   [<ore:wireGtDoubleGold>,<projectred-integration:gate:29>,<ore:wireGtDoubleGold>],
   [<gregtech:wire_single:2517>,<ore:wireGtDoubleGold>,null]]);

recipes.remove(<thermalfoundation:material:514>);   //红石传输线圈
recipes.addShaped(<thermalfoundation:material:514> * 2,
  [[null,<ore:wireGtDoubleSilver>,<gregtech:wire_single:2517>],
   [<ore:wireGtDoubleSilver>,<projectred-integration:gate:30>,<ore:wireGtDoubleSilver>],
   [<gregtech:wire_single:2517>,<ore:wireGtDoubleSilver>,null]]);

recipes.remove(<thermalfoundation:material:515>);   //红石传导线圈
recipes.addShaped(<thermalfoundation:material:515> * 2,
  [[<gregtech:wire_single:2517>,<ore:wireGtDoubleElectrum>,null],
   [<ore:wireGtDoubleElectrum>,<projectred-integration:gate:30>,<ore:wireGtDoubleElectrum>],
   [null,<ore:wireGtDoubleElectrum>,<gregtech:wire_single:2517>]]);

recipes.remove(<thermalfoundation:material:640>);   //红石工具箱

recipes.addShaped(<thermalexpansion:dynamo> * 1,  //蒸汽能源炉
  [[null,<thermalfoundation:material:514>,null],
   [<ore:rotorSteel>,<gregtech:machine:986>,<ore:rotorSteel>],
   [<ore:plateDoubleIron>,<thermaldynamics:duct_0>,<ore:plateDoubleIron>]]);

val tdPipes = [  //TD 管道
  <thermaldynamics:duct_0:*>,<thermaldynamics:duct_16:*>,<thermaldynamics:duct_32>,<thermaldynamics:duct_48>,<thermaldynamics:duct_64>] as IItemStack[];
for i in tdPipes{
  recipes.remove(i);
}
recipes.addShaped(<thermaldynamics:duct_0> * 6,  //铅石能量管道
  [[<ore:ingotRawRubber>,<ore:ingotRawRubber>,<ore:ingotRawRubber>],
   [<ore:wireGtDoubleLead>,<ore:wireGtDoubleRedAlloy>,<ore:wireGtDoubleLead>],
   [<ore:ingotRawRubber>,<ore:ingotRawRubber>,<ore:ingotRawRubber>]]);
recipes.addShaped(<thermaldynamics:duct_0> * 16,  
  [[<ore:ingotRubber>,<ore:ingotRubber>,<ore:ingotRubber>],
   [<ore:wireGtQuadrupleLead>,<ore:wireGtQuadrupleRedAlloy>,<ore:wireGtQuadrupleLead>],
   [<ore:ingotRubber>,<ore:ingotRubber>,<ore:ingotRubber>]]);

GTmachine_assembler.recipeBuilder()  //硬化能量管道
.inputs([<thermaldynamics:duct_0> * 8,<ore:plateHardenedAlloy> * 2])
.fluidInputs([<liquid:redstone> * 720])
.outputs([<thermaldynamics:duct_0:1> * 8])
.EUt(30)
.duration(100)
.buildAndRegister();

recipes.addShaped(<thermalexpansion:machine:6> * 1,  //熔岩炉
  [[null,<contenttweaker:insulated_boron_glass_cover>,null],
   [<ore:plateSapphire>,<gregtech:machine:988>,<ore:plateSapphire>],
   [<ore:gearStainlessSteel>,<contenttweaker:power_coil_bluestone>,<ore:gearStainlessSteel>]]);

recipes.addShaped(<thermalexpansion:machine:3> * 1,  //感应炉
  [[<ic2:containment_plating>,<gregtech:meta_item_1:159>,<ic2:containment_plating>],
   [<gregtech:machine:52>,<gregtech:machine:988>,<gregtech:machine:52>],
   [<ic2:containment_plating>,<contenttweaker:power_coil_bluestone>,<ic2:containment_plating>]]);

GTmachine_assembler.recipeBuilder()  //硬化升级
.inputs([<ore:plateDoubleHardenedAlloy> * 4, <contenttweaker:rf_universal_processor> * 1, <ore:gearSmallAluminium> * 2])
.outputs([<thermalfoundation:upgrade>])
.EUt(240)
.duration(250)
.buildAndRegister();

GTmachine_assembler.recipeBuilder()  //强化升级
.inputs([<gregtech:meta_plate_double:32204> * 4, <contenttweaker:rf_universal_processor> * 2, <ore:gearSmallStainlessSteel> * 2])
.outputs([<thermalfoundation:upgrade:1>])
.EUt(480)
.duration(250)
.buildAndRegister();

recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}) * 1,  //便携储罐
  [[<ore:plateBrass>,<extrautils2:decorativeglass>,<ore:plateBrass>],
   [<ore:plateBrass>,<extrautils2:decorativeglass>,<ore:plateBrass>],
   [<ore:plateBrass>,<thermalfoundation:material:512>,<ore:plateBrass>]]);

   