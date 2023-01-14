//Created by zhenmunse
//焦炉砖
furnace.addRecipe(<contenttweaker:cokeovenbrick>,<contenttweaker:unfiredcokeovenbrick>);
//未烧制的焦炉砖
recipes.addShaped(<contenttweaker:unfiredcokeovenbrick> * 3,
  [[<ore:clay>,<ore:clay>,<ore:clay>],
   [<ore:sand>,<gregtech:meta_item_1:348>.reuse(),<ore:sand>],
   [<ore:sand>,<ore:sand>,<ore:sand>]]);
