// Created by zhenmunse
#priority 127
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
//焦炉砖
var CokeOvenBrick = VanillaFactory.createItem("CokeOvenBrick");
CokeOvenBrick.maxStackSize = 64;
CokeOvenBrick.creativeTab = <creativetab:misc>;
CokeOvenBrick.maxDamage = -1;
CokeOvenBrick.register();
//未烧制的焦炉砖
var UnfiredCokeOvenBrick = VanillaFactory.createItem("UnfiredCokeOvenBrick");
UnfiredCokeOvenBrick.maxStackSize = 64;
UnfiredCokeOvenBrick.creativeTab = <creativetab:misc>;
UnfiredCokeOvenBrick.maxDamage = -1;
UnfiredCokeOvenBrick.register();
//木部件
var WoodenPart = VanillaFactory.createItem("WoodenPart");
WoodenPart.maxStackSize = 64;
WoodenPart.creativeTab = <creativetab:misc>;
WoodenPart.maxDamage = -1;
WoodenPart.register();
//高能混合物
var EnergeticBlend = VanillaFactory.createItem("EnergeticBlend");
EnergeticBlend.maxStackSize = 64;
EnergeticBlend.creativeTab = <creativetab:misc>;
EnergeticBlend.maxDamage = -1;
EnergeticBlend.register();
//流明精华
var Luminessence = VanillaFactory.createItem("Luminessence");
Luminessence.maxStackSize = 64;
Luminessence.creativeTab = <creativetab:misc>;
Luminessence.maxDamage = -1;
Luminessence.register();