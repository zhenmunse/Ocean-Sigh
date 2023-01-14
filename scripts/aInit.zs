//Created by zhenmunse
//初始化 init
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
//物品变量 valiables of item
global dswood as IItemStack = <extrautils2:decorativesolidwood:2>;  //ExU2錾制木头
global craftingSword as IItemStack = <gregtech:meta_tool>;  //GT剑
global craftingPickaxe as IItemStack = <gregtech:meta_tool:1>;  //GT镐
global craftingShovel as IItemStack = <gregtech:meta_tool:2>;  //GT锹
global craftingAxe as IItemStack = <gregtech:meta_tool:3>;  //GT斧
global craftingHoe as IItemStack = <gregtech:meta_tool:4>;  //GT锄
global craftingSaw as IItemStack = <gregtech:meta_tool:5>;  //GT锯
global craftingHardHammer as IItemStack = <gregtech:meta_tool:6>;  //GT锻造锤
global craftingSoftHammer as IItemStack = <gregtech:meta_tool:7>;  //GT软锤
global craftingWrench as IItemStack = <gregtech:meta_tool:8>;  //GT扳手
global craftingFile as IItemStack = <gregtech:meta_tool:9>;  //GT锉
global craftingCrowbar as IItemStack = <gregtech:meta_tool:10>;  //GT撬棍
global craftingScrewDriver as IItemStack = <gregtech:meta_tool:11>;  //GT螺丝刀
global craftingMortar as IItemStack = <gregtech:meta_tool:12>;  //GT研钵
global craftingWireCutter as IItemStack = <gregtech:meta_tool:13>;  //GT剪线钳
global craftingBranchCutter as IItemStack = <gregtech:meta_tool:14>;  //GT剪枝器
global craftingKnife as IItemStack = <gregtech:meta_tool:15>;  //GT刀
global craftingAnimalKillingBlade as IItemStack = <gregtech:meta_tool:16>;  //GT屠刀
global craftingHarvestBlade as IItemStack = <gregtech:meta_tool:17>;  //GT镰刀
global craftingPlunger as IItemStack = <gregtech:meta_tool:18>;  //GT搋子
global craftingMiningHammer as IItemStack = <gregtech:meta_tool:19>;  //GT采矿锤
global craftingMiningDrillLV as IItemStack = <gregtech:meta_tool:20>;  //GT电钻(LV)
global craftingMiningDrillMV as IItemStack = <gregtech:meta_tool:21>;  //GT电钻(MV)
global craftingMiningDrillHV as IItemStack = <gregtech:meta_tool:22>;  //GT电钻(HV)
global craftingMiningDrillEV as IItemStack = <gregtech:meta_tool:23>;  //GT电钻(EV)
global craftingMiningDrillIV as IItemStack = <gregtech:meta_tool:24>;  //GT电钻(IV)
global craftingMiningChainSawLV as IItemStack = <gregtech:meta_tool:25>;  //GT链锯(LV)
global craftingMiningChainSawMV as IItemStack = <gregtech:meta_tool:26>;  //GT链锯(MV)
global craftingMiningChainSawHV as IItemStack = <gregtech:meta_tool:27>;  //GT链锯(HV)
global craftingWrenchLV as IItemStack = <gregtech:meta_tool:28>;  //GT扳手(LV)
global craftingWrenchMV as IItemStack = <gregtech:meta_tool:29>;  //GT扳手(MV)
global craftingWrenchHV as IItemStack = <gregtech:meta_tool:30>;  //GT扳手(HV)
global craftingScrewDriverLV as IItemStack = <gregtech:meta_tool:31>;  //GT螺丝刀(LV)
global craftingBuzzSaw as IItemStack = <gregtech:meta_tool:32>;  //GT圆锯(LV)
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

