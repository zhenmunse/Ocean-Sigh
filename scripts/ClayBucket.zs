//Created by zhenmunse
//粘土桶 ClayBucket
//未烧制的粘土桶
recipes.remove(<claybucket:unfiredclaybucket>);
recipes.addShaped(<claybucket:unfiredclaybucket> * 1,
  [[null,null,null],
   [<ore:dustClay>,<ore:materialResin>,<ore:dustClay>],
   [<ore:dustClay>,<ore:dustClay>,<ore:dustClay>]]);

//创建水桶矿辞并导入
<ore:bucketWater>.add(<minecraft:water_bucket>);
<ore:bucketWater>.add(<claybucket:claybucket:1>);

//创建桶矿辞并导入
<ore:bucketEmpty>.add(<minecraft:bucket>);
<ore:bucketEmpty>.add(<claybucket:claybucket>);