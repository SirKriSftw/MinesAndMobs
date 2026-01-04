$item modify entity @s armor.chest {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:armor","id":"mines_and_mobs:con_level","amount":$(con_lvl),"operation":"add_value","slot":"chest"},\
        {"attribute":"minecraft:max_health","id":"mines_and_mobs:wis_level","amount":$(wis_lvl),"operation":"add_value","slot":"chest"}\
    ],\
    "replace":true\
}