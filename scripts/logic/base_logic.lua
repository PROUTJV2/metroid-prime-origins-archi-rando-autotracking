-- this is the file to put all your custom logic functions into.
-- if you dont want to use the json based logic you can switch to a graph-based logic method.
-- the needed functions for that are in `/scripts/logic/graph_logic/logic_main.lua`.
function can_morph()
    return HAS("morphball")
end
function can_use_bomb_slots()
    return ANY(can_lay_bomb(), can_lay_power_bomb())
end
function can_boost()
    return ALL(HAS("boostball"), HAS("morphball"))
end
function can_spider()
    return ALL(HAS("spiderball"), HAS("morphball"))
end
function can_lay_power_bomb()
    return ALL(HAS("powerbombtank", 1, 1), HAS("morphball"))
end
function can_lay_bomb()
    return ALL(HAS("morphballbomb"), HAS("morphball"))
end
function can_break_bomb_blocks()
    return ALL(can_morph(), ANY(can_lay_power_bomb(), can_lay_bomb(), HAS("screwattack")))
end
function can_high_ledge()
    return ANY(can_space_jump(),can_grapple())
end
function can_space_jump()
    return HAS("spacejumpboots")
end
function can_grapple()
    return HAS("grapplebeam")
end
function can_beam(beam)
    return HAS(beam)
end
function can_charge_beam()
    return can_beam("chargebeam")
end
function can_wave_beam()
    return can_beam("wavebeam")
end
function can_ice_beam()
    return can_beam("icebeam")
end
function can_plasma_beam()
    return can_beam("plasmabeam")
end
function can_break_green_case()
    return ALL(HAS("supermissile"), HAS("missiletank"))
end
function can_missile()
    return HAS("missiletank")
end
function can_super_missile()
    return can_break_green_case()
end
function can_resist_heat()
    return HAS("variasuit")
end
function can_resist_water()
    return HAS("gravitysuit")
end
function can_phazon_beam()
    return HAS("phazonsuit")
end
function can_move_frigate()
    return ANY(ALL(can_resist_water(), HAS("spacejumpboots")), can_grapple())
end
function can_move_underwater()
    return ANY(can_resist_water(), can_grapple())
end
function can_break_glass()
    return ANY(can_missile(), can_charge_beam())
end
function can_screw_attack()
    return HAS("screwattack")
end
-- function <name> (<parameters if needed>)
--     <actual code>
--     <indentations are just for readability>
-- end
--