clear @s book 1

scoreboard players add @s int 1
function mines_and_mobs:stats/int/calculate

title @s actionbar {"text":"Weapon Upgraded!","color":"gold"}
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.2