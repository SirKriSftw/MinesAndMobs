# If using given items
$execute unless score _showSkin GameOptions matches 1 run item modify entity @s armor.legs {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:luck","id":"mines_and_mobs:cha_level","amount":$(cha_lvl),"operation":"add_value","slot":"legs"}\
    ],\
    "replace":false\
}

# If Showing base Skin
$execute if score _showSkin GameOptions matches 1 run item modify entity @s armor.head {\
    "function":"minecraft:set_attributes",\
    "modifiers":[\
        {"attribute":"minecraft:luck","id":"mines_and_mobs:cha_level","amount":$(cha_lvl),"operation":"add_value","slot":"head"}\
    ],\
    "replace":false\
}

execute if score _showSkin GameOptions matches 1 run item modify entity @s armor.legs {\
    "function":"minecraft:set_attributes",\
    "modifiers":[],\
    "replace":true\
}