# If using given items
$execute unless score _showSkin GameOptions matches 1 run item modify entity @s armor.feet {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:movement_speed","id":"mines_and_mobs:dex_spd","amount":$(dex_spd),"operation":"add_multiplied_base","slot":"feet"},\
    ],\
    "replace":false\
}

# If Showing base Skin
$execute if score _showSkin GameOptions matches 1 run item modify entity @s armor.head {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:movement_speed","id":"mines_and_mobs:dex_spd","amount":$(dex_spd),"operation":"add_multiplied_base","slot":"head"}\
    ],\
    "replace":false\
}

execute if score _showSkin GameOptions matches 1 run item modify entity @s armor.feet {\
    "function":"minecraft:set_attributes",\
    "modifiers":[],\
    "replace":true\
}