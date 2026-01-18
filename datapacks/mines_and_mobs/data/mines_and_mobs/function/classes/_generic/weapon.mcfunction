clear @p *[minecraft:custom_data={mines_and_mobs_weapon:1b}]
$item replace entity @s weapon.mainhand with $(item)[\
    custom_name={text:"$(name)", color:"$(color)", italic:false}, \
    custom_data={mines_and_mobs_weapon:1b}, \
    unbreakable={}, \
    minimum_attack_charge=1, \
    attribute_modifiers=[]\
]