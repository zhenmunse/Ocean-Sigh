//Created by zhenmunse
//更多实用设备 2 Extra Utilities 2

//锥刺
recipes.remove(<extrautils2:spike_wood>);  //木锥刺
recipes.addShaped(<extrautils2:spike_wood> * 1,
  [[<ore:craftingsaw>,<minecraft:wooden_sword>,<ore:craftingToolScrewdriver>],
   [<ore:screwWood>,<ore:plateWood>,<ore:screwWood>],
   [<ore:plateWood>,<ore:logWood>,<ore:plateWood>]]);

recipes.remove(<extrautils2:spike_stone>);  //石锥刺
mods.jei.JEI.removeAndHide(<extrautils2:spike_stone>);

recipes.remove(<extrautils2:spike_iron>);  //铁锥刺
mods.jei.JEI.removeAndHide(<extrautils2:spike_iron>);

recipes.remove(<extrautils2:spike_gold>);  //金锥刺
recipes.addShaped(<extrautils2:spike_gold> * 1,
  [[<ore:craftingsaw>,<minecraft:golden_sword>,<ore:craftingToolScrewdriver>],
   [<ore:screwGold>,<ore:plateGold>,<ore:screwGold>],
   [<ore:plateGold>,<ore:blockGold>,<ore:plateGold>]]);

recipes.remove(<extrautils2:spike_diamond>);  //钻石锥刺
recipes.addShaped(<extrautils2:spike_diamond> * 1,
  [[<ore:craftingsaw>,<minecraft:diamond_sword>,<ore:craftingToolScrewdriver>],
   [<ore:screwDiamond>,<ore:plateDiamond>,<ore:screwDiamond>],
   [<ore:plateDiamond>,<ore:blockDiamond>,<ore:plateDiamond>]]);