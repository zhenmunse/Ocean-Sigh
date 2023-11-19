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
<ore:blockGlassEnhanced>.add(<thermalfoundation:glass:3>);
<ore:blockGlassEnhanced>.add(<appliedenergistics2:quartz_glass>);
<ore:blockGlassEnhanced>.add(<ic2:glass>);
<ore:blockGlassEnhanced>.add(<gregtech:transparent_casing:2>);
<ore:blockGlassEnhanced>.add(<railcraft:glass>);

val bolt = [  //螺栓
  <gregtech:meta_bolt:2>,
  <gregtech:meta_bolt:22>,
  <gregtech:meta_bolt:27>,
  <gregtech:meta_bolt:41>,
  <gregtech:meta_bolt:50>,
  <gregtech:meta_bolt:51>,
  <gregtech:meta_bolt:55>,
  <gregtech:meta_bolt:61>,
  <gregtech:meta_bolt:64>,
  <gregtech:meta_bolt:66>,
  <gregtech:meta_bolt:75>,
  <gregtech:meta_bolt:75>,
  <gregtech:meta_bolt:80>,
  <gregtech:meta_bolt:90>,
  <gregtech:meta_bolt:100>,
  <gregtech:meta_bolt:112>,
  <gregtech:meta_bolt:113>,
  <gregtech:meta_bolt:115>,
  <gregtech:meta_bolt:124>,
  <gregtech:meta_bolt:126>,
  <gregtech:meta_bolt:127>,
  <gregtech:meta_bolt:128>,
  <gregtech:meta_bolt:130>,
  <gregtech:meta_bolt:252>,
  <gregtech:meta_bolt:112>,
  <gregtech:meta_bolt:259>,
  <gregtech:meta_bolt:260>,
  <gregtech:meta_bolt:276>,
  <gregtech:meta_bolt:277>,
  <gregtech:meta_bolt:277>,
  <gregtech:meta_bolt:287>,
  <gregtech:meta_bolt:290>,
  <gregtech:meta_bolt:296>,
  <gregtech:meta_bolt:300>,
  <gregtech:meta_bolt:301>,
  <gregtech:meta_bolt:302>,
  <gregtech:meta_bolt:303>,
  <gregtech:meta_bolt:323>,
  <gregtech:meta_bolt:324>,
  <gregtech:meta_bolt:328>,
  <gregtech:meta_bolt:331>,
  <gregtech:meta_bolt:335>,
  <gregtech:meta_bolt:338>,
  <gregtech:meta_bolt:344>,
  <gregtech:meta_bolt:395>,
  <gregtech:meta_bolt:396>,
  <gregtech:meta_bolt:1068>,
  <gregtech:meta_bolt:1617>,
  <gregtech:meta_bolt:2007>,
  <gregtech:meta_bolt:2010>,
  <gregtech:meta_bolt:2013>,
  <gregtech:meta_bolt:2014>,
  <gregtech:meta_bolt:2036>,
  <gregtech:meta_bolt:2037>,
  <gregtech:meta_bolt:2042>,
  <gregtech:meta_bolt:2062>,
  <gregtech:meta_bolt:2516>,
  <gregtech:meta_bolt:2517>,
  <gregtech:meta_bolt:2519>,
  <gregtech:meta_bolt:2013>,
  <gregtech:meta_bolt:2014>,
  <gregtech:meta_bolt:2520>,
  <gregtech:meta_bolt:2527>,
  <gregtech:meta_bolt:32201>,
  <gregtech:meta_bolt:32202>,
  <gregtech:meta_bolt:32203>,
  <gregtech:meta_bolt:32204>
  ] as IItemStack[];
for item in bolt{
  <ore:boltAny>.add(item);
}
