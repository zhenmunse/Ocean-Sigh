//Created by zhenmunse
//红石计划 ProjectRed
//红石合金
recipes.remove(<projectred-core:resource_item:103>);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:103>);
//红铁混合物
recipes.remove(<projectred-core:resource_item:251>);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:251>);
//蓝石合金
recipes.remove(<projectred-core:resource_item:104>);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:104>);
//蓝石铁化合物
recipes.remove(<projectred-core:resource_item:252>);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:252>);
//电路板
recipes.remove(<projectred-core:resource_item>);
recipes.addShaped(<projectred-core:resource_item> * 6,
  [[<ore:dustRedstone>,<ore:craftingToolHardHammer>,<ore:dustRedstone>],
   [<tconstruct:large_plate>.withTag({Material: "stone"}),<tconstruct:large_plate>.withTag({Material: "stone"}),<tconstruct:large_plate>.withTag({Material: "stone"})],
   [null,null,null]]);