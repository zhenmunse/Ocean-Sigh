//Created by zhenmunse
//工业时代2 IndustrialCraft 2
//青铜粉
recipes.remove(<ic2:dust>);
//板材
recipes.remove(<ic2:plate:*>);
mods.jei.JEI.removeAndHide(<ic2:plate:*>);
//管道
recipes.remove(<ic2:pipe:*>);
mods.jei.JEI.removeAndHide(<ic2:pipe:*>);
//青铜套装
recipes.remove(<ic2:bronze_boots>);
mods.jei.JEI.removeAndHide(<ic2:bronze_boots>);
recipes.remove(<ic2:bronze_chestplate>);
mods.jei.JEI.removeAndHide(<ic2:bronze_chestplate>);
recipes.remove(<ic2:bronze_helmet>);
mods.jei.JEI.removeAndHide(<ic2:bronze_helmet>);
recipes.remove(<ic2:bronze_leggings>);
mods.jei.JEI.removeAndHide(<ic2:bronze_leggings>);
//焦煤
recipes.remove(<ic2:coke>);
mods.jei.JEI.removeAndHide(<ic2:coke>);
//作物架
recipes.remove(<ic2:crop_stick>);
recipes.addShaped(<ic2:crop_stick> * 1,
  [[<ore:stickLongWood>,null,<ore:stickLongWood>],
   [<ore:stickLongWood>,null,<ore:stickLongWood>],
   [null,null,null]]);
//铁炉
recipes.remove(<ic2:te:46>);
recipes.addShaped(<ic2:te:46> * 1,
  [[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
   [<ore:plateIron>,<ore:craftingFurnace>,<ore:plateIron>],
   [<ore:plateIron>,<ore:craftingToolHardHammer>,<ore:plateIron>]]);
//锻造锤
recipes.remove(<ic2:forge_hammer>);
mods.jei.JEI.removeAndHide(<ic2:forge_hammer>);
//板材切割剪刀
recipes.remove(<ic2:cutter>);
mods.jei.JEI.removeAndHide(<ic2:cutter>);
<ore:craftingToolWireCutter>.remove(<ic2:cutter>);