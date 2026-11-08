$item modify entity @s weapon.mainhand {\
    "type":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:attack_speed","id":"mines_and_mobs:dex_level","amount":$(dex_lvl),"operation":"add_multiplied_base","slot":"mainhand"}\
    ],\
    "replace":false\
}

advancement revoke @s from mines_and_mobs:stats/hold_weapon