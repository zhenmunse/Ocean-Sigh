//Created by zhenmunse
//匠魂 Tinkers' Construct
//空白模具
recipes.remove(<tconstruct:pattern>);
recipes.addShaped(<tconstruct:pattern> * 1,
  [[paper,paper,null],
   [paper,paper,null],
   [null,null,null]]);
//合成站
recipes.remove(<tconstruct:tooltables>);
recipes.addShapeless(<tconstruct:tooltables>,
    [<minecraft:crafting_table>,<ore:craftingsaw>]);
//部件加工台
recipes.remove(<tconstruct:tooltables:2>);
recipes.addShaped(<tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}) * 1,
  [[stick,<tconstruct:pattern>,stick],
   [<contenttweaker:wooden_part>,stick,<contenttweaker:wooden_part>],
   [null,<ore:toolMallet>,null]]);
//模具加工台
recipes.remove(<tconstruct:tooltables:1>);
recipes.addShaped(<tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}) * 1,
  [[stick,<tconstruct:pattern>,stick],
   [woodfence,stick,woodfence],
   [null,<ore:toolMallet>,null]]);
//工具装配台
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped(<tconstruct:tooltables:3> * 1,
  [[stick,<tconstruct:pattern>,stick],
   [stick,workbench,stick],
   [null,<ore:toolMallet>,null]]);
//模具箱
recipes.remove(<tconstruct:tooltables:4>);
recipes.addShaped(<tconstruct:tooltables:4> * 1,
  [[stick,<tconstruct:pattern>,stick],
   [stick,woodenchest,stick],
   [null,<ore:toolMallet>,null]]);
//部件箱
recipes.remove(<tconstruct:tooltables:5>);
recipes.addShaped(<tconstruct:tooltables:5> * 1,
  [[null,stick,null],
   [stick,<tconstruct:tooltables:4>,stick],
   [null,<ore:toolMallet>,null]]);
//齿轮铸模
recipes.remove(<tconstruct:cast_custom:4>);
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:4>);
//合金
mods.tconstruct.Alloy.removeRecipe(<liquid:bronze>*4);