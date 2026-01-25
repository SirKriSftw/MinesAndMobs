# If using given items
$execute unless score _showSkin GameOptions matches 1 run item modify entity @s armor.head {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:max_health","id":"mines_and_mobs:wis_level","amount":$(wis_lvl),"operation":"add_value","slot":"head"}\
    ],\
    "replace":false\
}

# If Showing base Skin
$execute if score _showSkin GameOptions matches 1 run item modify entity @s armor.head {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:max_health","id":"mines_and_mobs:wis_level","amount":$(wis_lvl),"operation":"add_value","slot":"head"}\
    ],\
    "replace":false\
}