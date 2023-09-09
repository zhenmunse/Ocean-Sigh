// Created by zhenmunse
#priority 126
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

//焦炉砖
var cokeoven_brick = VanillaFactory.createItem("cokeoven_brick");
cokeoven_brick.maxStackSize = 64;
cokeoven_brick.creativeTab = <creativetab:misc>;
cokeoven_brick.maxDamage = -1;
cokeoven_brick.register();

//未烧制的焦炉砖
var unfired_cokeoven_brick = VanillaFactory.createItem("unfired_cokeoven_brick");
unfired_cokeoven_brick.maxStackSize = 64;
unfired_cokeoven_brick.creativeTab = <creativetab:misc>;
unfired_cokeoven_brick.maxDamage = -1;
unfired_cokeoven_brick.register();

//木部件
var wooden_part = VanillaFactory.createItem("wooden_part");
wooden_part.maxStackSize = 64;
wooden_part.creativeTab = <creativetab:misc>;
wooden_part.maxDamage = -1;
wooden_part.register();

//高能混合物
var energetic_blend = VanillaFactory.createItem("energetic_blend");
energetic_blend.maxStackSize = 64;
energetic_blend.creativeTab = <creativetab:misc>;
energetic_blend.maxDamage = -1;
energetic_blend.register();

//流明精华
var luminessence = VanillaFactory.createItem("luminessence");
luminessence.maxStackSize = 64;
luminessence.creativeTab = <creativetab:misc>;
luminessence.maxDamage = -1;
luminessence.register();

//红石通量通用处理器基底
var rf_universal_processor_base = VanillaFactory.createItem("rf_universal_processor_base");
rf_universal_processor_base.maxStackSize = 64;
rf_universal_processor_base.creativeTab = <creativetab:misc>;
rf_universal_processor_base.maxDamage = -1;
rf_universal_processor_base.register();

//红石通量通用处理器
var rf_universal_processor = VanillaFactory.createItem("rf_universal_processor");
rf_universal_processor.maxStackSize = 64;
rf_universal_processor.creativeTab = <creativetab:misc>;
rf_universal_processor.maxDamage = -1;
rf_universal_processor.register();

//绝缘硼玻璃罩
var insulated_boron_glass_cover = VanillaFactory.createItem("insulated_boron_glass_cover");
insulated_boron_glass_cover.maxStackSize = 64;
insulated_boron_glass_cover.creativeTab = <creativetab:misc>;
insulated_boron_glass_cover.maxDamage = -1;
insulated_boron_glass_cover.register();

//蓝石接收线圈
var power_coil_bluestone = VanillaFactory.createItem("power_coil_bluestone");
power_coil_bluestone.maxStackSize = 64;
power_coil_bluestone.creativeTab = <creativetab:misc>;
power_coil_bluestone.maxDamage = -1;
power_coil_bluestone.register();