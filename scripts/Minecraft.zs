//Created by zhenmunse
//原版 Minecraft
//箱子 chest
recipes.removeShaped(chest);
recipes.addShaped(chest * 1,
  [[dswood,dswood,dswood],
   [dswood,null,dswood],
   [dswood,dswood,dswood]]);

//熔炉 furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace> * 1,
  [[cobble,cobble,cobble],
   [flint,flint,flint],
   [cobble,cobble,cobble]]);

//床 bed
recipes.remove(<minecraft:bed>);
recipes.addShaped(<minecraft:bed> * 1,
  [[woolMat,woolMat,woolMat],
   [plank,plank,plank],
   [slabWood,slabWood,slabWood]]);

//种子削弱 Nurf of seeds
  //南瓜种子 pumpkin_seeds
  recipes.remove(<minecraft:pumpkin_seeds>);
  recipes.addShapeless(<minecraft:pumpkin_seeds> * 4,
    [<minecraft:pumpkin>,<ore:toolMallet>]);
  recipes.addShapeless(<minecraft:pumpkin_seeds> * 1,
    [<harvestcraft:harvestpumpkinitem>,<ore:toolMallet>]);
  //西瓜种子 watermelon_seeds
  recipes.remove(<minecraft:melon_seeds>);
  recipes.addShapeless(<minecraft:melon_seeds> * 1,
    [<minecraft:melon>,<ore:toolMallet>]);

//纸
recipes.removeShapeless(paper * 3,
  [<minecraft:reeds>,<minecraft:reeds>,<minecraft:reeds>]);
recipes.addShaped(paper * 4,
  [[dustWood,dustWood,dustWood],
   [dustWood,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),dustWood],
   [dustWood,dustWood,dustWood]]);
recipes.addShaped(paper * 4,
  [[dustWood,dustWood,dustWood],
   [dustWood,<claybucket:claybucket:1>.transformReplace(<claybucket:claybucket>),dustWood],
   [dustWood,dustWood,dustWood]]);
//活塞
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>,
  [[<ore:nuggetRedAlloy>,<ore:gearSmallIron>,<ore:nuggetRedAlloy>],
   [<minecraft:cobblestone>,<projectred-core:resource_item:2>,<minecraft:cobblestone>],
   [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]]);
//玻璃
furnace.remove(<minecraft:glass>);
//钻石
furnace.setFuel(<ore:gemDiamond>,102400);
//钻石块
furnace.setFuel(<ore:blockDiamond>,1024000);