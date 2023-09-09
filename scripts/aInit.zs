//Created by zhenmunse
//初始化 init
#priority 128
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
//物品变量 valiables of item
global dswood as IItemStack = <extrautils2:decorativesolidwood:2>;  //ExU2錾制木头
global craftingSword as IItemStack = <gregtech:sword>;  //GT剑
global craftingPickaxe as IItemStack = <gregtech:pickaxe>;  //GT镐
global craftingShovel as IItemStack = <gregtech:shovel>;  //GT锹
global craftingAxe as IItemStack = <gregtech:axe>;  //GT斧
global craftingHoe as IItemStack = <gregtech:hoe>;  //GT锄
global craftingSaw as IItemStack = <gregtech:saw>;  //GT锯
global craftingHardHammer as IItemStack = <gregtech:hammer>;  //GT锻造锤
global craftingSoftHammer as IItemStack = <gregtech:mallet>;  //GT软锤
global craftingWrench as IItemStack = <gregtech:wrench>;  //GT扳手
global craftingMiningHammer as IItemStack = <gregtech:mining_hammer>;  //GT开采锤
global craftingSpade as IItemStack = <gregtech:spade>;  //GT铲
global craftingFile as IItemStack = <gregtech:file>;  //GT锉
global craftingCrowbar as IItemStack = <gregtech:crowbar>;  //GT撬棍
global craftingScrewDriver as IItemStack = <gregtech:screwdriver>;  //GT螺丝刀
global craftingMortar as IItemStack = <gregtech:mortar>;  //GT研钵
global craftingWireCutter as IItemStack = <gregtech:wire_cutter>;  //GT剪线钳
global craftingKnife as IItemStack = <gregtech:knife>;  //GT刀
global craftingScythe as IItemStack = <gregtech:butchery_knife>;  //GT屠刀
global craftingHarvestBlade as IItemStack = <gregtech:scythe>;  //GT镰刀
global craftingPlunger as IItemStack = <gregtech:plunger>;  //GT搋子
global woolMat as IItemStack = <ic2:sheet:2>;  //IC2羊毛垫
global chest as IItemStack = <minecraft:chest>;  //原版箱子
global paper as IItemStack = <minecraft:paper>;  //原版纸

//矿辞变量 valiables of ore dictionary
global wood as IOreDictEntry = <ore:logWood>;  //原木
global plank as IOreDictEntry = <ore:plankWood>;  //木板
global stick as IOreDictEntry = <ore:stickWood>;  //木棍
global cobble as IOreDictEntry = <ore:stoneCobble>;  //圆石
global slabWood as IOreDictEntry = <ore:slabWood>;  //木台阶(半砖)
global dustWood as IOreDictEntry = <ore:dustWood>;  //木浆(GT/FR)
global flint as IOreDictEntry = <ore:gemFlint>;  //燧石
global clay as IOreDictEntry = <ore:clay>;  //粘土
global stringg as IOreDictEntry = <ore:string>;  //线
global woodfence as IOreDictEntry = <ore:fenceWood>;  //木栅栏
global workbench as IOreDictEntry = <ore:workbench>;  //工作台
global woodenchest as IOreDictEntry = <ore:chestWood>;  //木制箱子
<ore:blockIron>.add(<gregtech:meta_block_compressed_20:15>);
<ore:blockIron>.add(<tconstruct:metal:4>);

//GT机器 machines of Gregtech
// global GTmachine_hammer = RecipeMap.getByName("forge_hammer");
// global GTmachine_compressor = RecipeMap.getByName("compressor");
// global GTmachine_macerator = RecipeMap.getByName("macerator");
// global GTmachine_assembler = RecipeMap.getByName("assembler");
// global GTmachine_alloy = RecipeMap.getByName("alloy_smelter");
// global GTmachine_extractor = RecipeMap.getByName("extractor");
// global GTmachine_lathe = RecipeMap.getByName("lathe");
// global GTmachine_canner = RecipeMap.getByName("canner");
// global GTmachine_fluid_canner = RecipeMap.getByName("fluid_canner");
// global GTmachine_fluid_extractor = RecipeMap.getByName("fluid_extractor");
// global GTmachine_freezer = RecipeMap.getByName("vacuum_freezer");
// global GTmachine_mixer = RecipeMap.getByName("mixer");
// global GTmachine_thermal_sep = RecipeMap.getByName("thermal_centrifuge");
// global GTmachine_sifter = RecipeMap.getByName("sifter");
// global GTmachine_autoclave = RecipeMap.getByName("autoclave");
// global GTmachine_reactor = RecipeMap.getByName("chemical_reactor");
// global GTmachine_fluid_solidifier = RecipeMap.getByName("fluid_solidifier");
// global GTmachine_saw = RecipeMap.getByName("cutting_saw");
// global GTmachine_forming = RecipeMap.getByName("forming_press");
// global GTmachine_electrolyzer = RecipeMap.getByName("electrolyzer");
// global GTmachine_circuit_assembler = RecipeMap.getByName("circuit_assembler");
// global GTmachine_implosion = RecipeMap.getByName("implosion_compressor");
// global GTmachine_engraver = RecipeMap.getByName("laser_engraver");
// global GTmachine_attractor = RecipeMap.getByName("attractor");
// global GTmachine_packer = RecipeMap.getByName("packer");
// global GTmachine_unpacker = RecipeMap.getByName("unpacker");
// global GTmachine_arc = RecipeMap.getByName("arc_furnace");
// global GTmachine_plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
// global GTmachine_bath = RecipeMap.getByName("chemical_bath");
// global GTmachine_mill = RecipeMap.getByName("wiremill");
// global GTmachine_centrifuge = RecipeMap.getByName("centrifuge");
// global GTmachine_extruder = RecipeMap.getByName("extruder");
// global GTmachine_metal_bender = RecipeMap.getByName("metal_bender");