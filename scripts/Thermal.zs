//Created by zhenmunse
//热力系列 Thermal Foundation, Expansion and Dynamics
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
.inputs([<contenttweaker:luminessence>*2,<ore:dustSterlingSilver>*2,<ore:dustTinAlloy>*4])
.fluidInputs([<liquid:glowstone>*288])
.outputs([<thermalfoundation:material:102>*1])
.EUt(120)
.duration(240)
.buildAndRegister();
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
.inputs([<gregtech:meta_item_1:13>.reuse()])
.fluidInputs([<liquid:signalum>*576])
.outputs([<thermalfoundation:material:293>*1])
.EUt(7)
.duration(100)
.buildAndRegister();
GTmachine_alloy.recipeBuilder()
.inputs(<thermalfoundation:material:165>*8,<gregtech:meta_item_1:13>.reuse())
.outputs(<thermalfoundation:material:293>*1)
.EUt(14)
.duration(760)
.buildAndRegister();
GTmachine_extruder.recipeBuilder()
.inputs(<thermalfoundation:material:165>*4,<gregtech:meta_item_1:52>.reuse())
.outputs(<thermalfoundation:material:293>*1)
.EUt(56)
.duration(380)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:294>); //流明齿轮
GTmachine_fluid_solidifier.recipeBuilder()
.inputs([<gregtech:meta_item_1:13>.reuse()])
.fluidInputs([<liquid:lumium>*576])
.outputs([<thermalfoundation:material:294>*1])
.EUt(7)
.duration(100)
.buildAndRegister();
GTmachine_alloy.recipeBuilder()
.inputs(<thermalfoundation:material:166>*8,<gregtech:meta_item_1:13>.reuse())
.outputs(<thermalfoundation:material:294>*1)
.EUt(28)
.duration(760)
.buildAndRegister();
GTmachine_extruder.recipeBuilder()
.inputs(<thermalfoundation:material:166>*4,<gregtech:meta_item_1:52>.reuse())
.outputs(<thermalfoundation:material:294>*1)
.EUt(112)
.duration(380)
.buildAndRegister();
recipes.remove(<thermalfoundation:material:295>); //末影齿轮
recipes.remove(<thermalexpansion:augment:337>);  //齿轮工作模具

recipes.remove(<thermalfoundation:material:160>);  //钢
mods.jei.JEI.removeAndHide(<thermalfoundation:material:160>);

for item in loadedMods["thermalfoundation"].items{ //工具、装备
	if(item.name.startsWith("thermalfoudation:tool")){
		recipes.remove(item);	
	}
	if(item.name.startsWith("thermalfoudation:armor")){
		recipes.remove(item);
	}
	}