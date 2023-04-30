//Created by zhenmunse
//抽屉 Storage Drawers
//转换升级
recipes.remove(<storagedrawers:upgrade_conversion>);
mods.jei.JEI.removeAndHide(<storagedrawers:upgrade_conversion>);
//升级模板
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 1,
  [[<ore:screwSteel>,<ore:craftingPiston>,<ore:screwSteel>],
   [<ore:screwSteel>,<ore:drawerBasic>,<ore:screwSteel>],
   [null,<ore:craftingToolScrewdriver>,null]]);