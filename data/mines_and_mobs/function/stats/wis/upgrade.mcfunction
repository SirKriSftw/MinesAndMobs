clear @s golden_apple 1

scoreboard players add @s wis 1

function mines_and_mobs:stats/update

title @s actionbar {"text":"Weapon Upgraded!","color":"gold"}
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.2