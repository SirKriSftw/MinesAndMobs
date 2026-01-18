$item modify entity @s weapon.mainhand {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:attack_damage","id":"mines_and_mobs:str_level","amount":$(str_lvl),"operation":"add_value","slot":"mainhand"},\
        {"attribute":"minecraft:attack_speed","id":"mines_and_mobs:dex_level","amount":$(dex_lvl),"operation":"add_multiplied_base","slot":"mainhand"}\
    ],\
    "replace":true\
}

advancement revoke @s from mines_and_mobs:stats/hold_weapon