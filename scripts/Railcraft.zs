//Created by zhenmunse
//铁路 RailCraft
//焦炉砖
recipes.remove(<railcraft:coke_oven>);
recipes.addShaped(<railcraft:coke_oven> * 1,
  [[<contenttweaker:cokeoven_brick>,<contenttweaker:cokeoven_brick>,null],
   [<contenttweaker:cokeoven_brick>,<contenttweaker:cokeoven_brick>,null],
   [null,null,null]]);
//削弱合成表
recipes.remove(<railcraft:gear:*>);  //齿轮
recipes.remove(<railcraft:gear:3>);
recipes.remove(<railcraft:plate>);  //板
mods.jei.JEI.removeAndHide(<railcraft:plate>);
recipes.remove(<railcraft:plate:1>);
mods.jei.JEI.removeAndHide(<railcraft:plate:1>);
recipes.remove(<railcraft:plate:2>);
mods.jei.JEI.removeAndHide(<railcraft:plate:2>);
recipes.remove(<railcraft:plate:3>);
mods.jei.JEI.removeAndHide(<railcraft:plate:3>);
recipes.remove(<railcraft:plate:4>);
mods.jei.JEI.removeAndHide(<railcraft:plate:4>);
recipes.remove(<railcraft:plate:5>);
mods.jei.JEI.removeAndHide(<railcraft:plate:5>);
recipes.remove(<railcraft:plate:6>);
mods.jei.JEI.removeAndHide(<railcraft:plate:6>);
recipes.remove(<railcraft:plate:7>);
mods.jei.JEI.removeAndHide(<railcraft:plate:7>);
recipes.remove(<railcraft:plate:8>);
mods.jei.JEI.removeAndHide(<railcraft:plate:8>);
recipes.remove(<railcraft:plate:9>);
mods.jei.JEI.removeAndHide(<railcraft:plate:9>);
recipes.remove(<railcraft:plate:10>);
mods.jei.JEI.removeAndHide(<railcraft:plate:10>);
recipes.remove(<railcraft:plate:11>);
mods.jei.JEI.removeAndHide(<railcraft:plate:11>);
recipes.remove(<railcraft:tool_pickaxe_steel>);  //钢制工具
mods.jei.JEI.removeAndHide(<railcraft:tool_pickaxe_steel>);
recipes.remove(<railcraft:tool_hoe_steel>);
mods.jei.JEI.removeAndHide(<railcraft:tool_hoe_steel>);
recipes.remove(<railcraft:tool_axe_steel>);
mods.jei.JEI.removeAndHide(<railcraft:tool_axe_steel>);
recipes.remove(<railcraft:tool_axe_steel>);
mods.jei.JEI.removeAndHide(<railcraft:tool_axe_steel>);
recipes.remove(<railcraft:tool_shovel_steel>);
mods.jei.JEI.removeAndHide(<railcraft:tool_shovel_steel>);
//集水器
recipes.remove(<railcraft:tank_water>);
recipes.addShaped(<railcraft:tank_water> * 1,
  [[plank,plank,plank],
   [<ore:stickIron>,craftingHardHammer,<ore:stickIron>],
   [plank,<ore:materialResin>,plank]]);
recipes.addShaped(<railcraft:tank_water> * 2,
  [[plank,plank,plank],
   [<ore:stickSteel>,craftingHardHammer,<ore:stickSteel>],
   [plank,<tconstruct:slime_congealed:1>,plank]]);
recipes.addShaped(<railcraft:tank_water> * 2,
  [[plank,plank,plank],
   [<ore:stickSteel>,craftingHardHammer,<ore:stickSteel>],
   [plank,<tconstruct:slime_congealed>,plank]]);
recipes.addShaped(<railcraft:tank_water> * 4,
  [[plank,plank,plank],
   [<ore:stickStainlessSteel>,craftingHardHammer,<ore:stickStainlessSteel>],
   [plank,<tconstruct:slime_congealed:2>,plank]]);
//高炉(temp)
recipes.remove(<railcraft:blast_furnace>);
mods.jei.JEI.removeAndHide(<railcraft:blast_furnace>);