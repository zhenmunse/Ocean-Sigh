//Created by zhenmunse
//自定义格雷材料 custom materials(gregtech)
#loader gregtech

#priority 126
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Elements;
//神秘锭
MaterialBuilder(31000, "thaumium")
    .ingot()
    .color(0x473B6D)
    .iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .build();
//流明
MaterialBuilder(32102, "lumium")
    .ingot()
    .color(0xFFF2AD).iconSet("shiny")
    .flags(["generate_plate", "generate_gear"])
    .blastTemp(5400,"HIGH",480,1600)
    .build();