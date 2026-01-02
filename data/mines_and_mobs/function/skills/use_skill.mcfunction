execute as @a store result score @s selectedSkill run data get entity @s SelectedItem.components."minecraft:custom_data".skill_id

execute as @s if score @s selectedSkill matches 1 run function mines_and_mobs:skills/effects/smoke_bomb/use
execute as @s if score @s selectedSkill matches 2 run function mines_and_mobs:skills/effects/mega_jump/use

scoreboard players set @s usedSkill 0