$execute unless score _showSkin GameOptions matches 1 run item modify entity @s armor.feet {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:movement_speed","id":"mines_and_mobs:dex_spd","amount":$(dex_spd),"operation":"add_multiplied_base","slot":"feet"},\
    ],\
    "replace":true\
}