clear @p *[minecraft:custom_data={mines_and_mobs_weapon:1b}]
data modify storage mines_and_mobs:give spell_args merge value {name:"Light Ray", color:"#FFFFFF"}
data modify storage mines_and_mobs:give spell_args merge value {range: 20.0f, speed: 4.0f, is_hitscan:1b}

execute as @p run function mines_and_mobs:spells/_give/spell