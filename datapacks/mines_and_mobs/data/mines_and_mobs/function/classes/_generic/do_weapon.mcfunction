clear @p *[minecraft:custom_data={mines_and_mobs_weapon:1b}]
clear @p arrow
$item replace entity @s weapon.mainhand with $(item)[\
    custom_name={text:"$(name)", color:"$(color)", italic:false}, \
    custom_data={mines_and_mobs_weapon:1b}, \
    $(custom_components), \
    minimum_attack_charge=1, \
    attribute_modifiers=[], \
    enchantment_glint_override=false, \
    tooltip_display={hidden_components:["minecraft:enchantments"]}\
]