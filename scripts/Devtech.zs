//Created by zhenmunse
//自定义格雷 custom gregtech
#loader gregtech
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Elements;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemDefinition;
import mods.jei.JEI;

val GTmachine_hammer = RecipeMap.getByName("forge_hammer");
val GTmachine_compressor = RecipeMap.getByName("compressor");
val GTmachine_macerator = RecipeMap.getByName("macerator");
val GTmachine_assembler = RecipeMap.getByName("assembler");
val GTmachine_alloy = RecipeMap.getByName("alloy_smelter");
val GTmachine_extractor = RecipeMap.getByName("extractor");
val GTmachine_lathe = RecipeMap.getByName("lathe");
val GTmachine_canner = RecipeMap.getByName("canner");
val GTmachine_fluid_canner = RecipeMap.getByName("fluid_canner");
val GTmachine_fluid_extractor = RecipeMap.getByName("fluid_extractor");
val GTmachine_freezer = RecipeMap.getByName("vacuum_freezer");
val GTmachine_mixer = RecipeMap.getByName("mixer");
val GTmachine_thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val GTmachine_sifter = RecipeMap.getByName("sifter");
val GTmachine_autoclave = RecipeMap.getByName("autoclave");
val GTmachine_reactor = RecipeMap.getByName("chemical_reactor");
val GTmachine_fluid_solidifier = RecipeMap.getByName("fluid_solidifier");
val GTmachine_saw = RecipeMap.getByName("cutting_saw");
val GTmachine_forming = RecipeMap.getByName("forming_press");
val GTmachine_electrolyzer = RecipeMap.getByName("electrolyzer");
val GTmachine_circuit_assembler = RecipeMap.getByName("circuit_assembler");
val GTmachine_implosion = RecipeMap.getByName("implosion_compressor");
val GTmachine_engraver = RecipeMap.getByName("laser_engraver");
val GTmachine_attractor = RecipeMap.getByName("attractor");
val GTmachine_packer = RecipeMap.getByName("packer");
val GTmachine_unpacker = RecipeMap.getByName("unpacker");
val GTmachine_arc = RecipeMap.getByName("arc_furnace");
val GTmachine_plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
val GTmachine_bath = RecipeMap.getByName("chemical_bath");
val GTmachine_mill = RecipeMap.getByName("wiremill");
val GTmachine_centrifuge = RecipeMap.getByName("centrifuge");
val GTmachine_extruder = RecipeMap.getByName("extruder");
val GTmachine_metal_bender = RecipeMap.getByName("metal_bender");

//神秘锭
MaterialBuilder(32201, "thaumium")
    .ingot()
    .color(0x473B6D)
    .iconSet("INGOT")
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .build();
//流明
MaterialBuilder(32202, "lumium")
    .ingot()
    .color(0xFFF2AD).iconSet("shiny")
    .flags(["generate_plate", "generate_gear", "generate_wire", "generate_wireFine", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .blastTemp(2700,"HIGH",480,1600)
    .build();

//硬化合金
MaterialBuilder(32203, "hardened_alloy")
    .ingot()
    .color(0x79837E).iconSet("shiny")
    .flags(["generate_plate", "generate_gear", "generate_wire", "generate_wireFine", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .blastTemp(2700,"HIGH",480,1600)
    .build();

//强化合金
MaterialBuilder(32204, "enhanced_alloy")
    .ingot()
    .color(0xE0E058).iconSet("shiny")
    .flags(["generate_plate", "generate_gear", "generate_wire", "generate_wireFine", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .blastTemp(3300,"HIGH",480,1600)
    .build();