execute store result score @s selectedSkill run data get entity @s SelectedItem.components."minecraft:custom_data".skill_id

execute as @s if score @s selectedSkill matches 0 run function mines_and_mobs:skills/effects/test/use
execute as @s if score @s selectedSkill matches 1 run function mines_and_mobs:skills/effects/smoke_bomb/use
execute as @s if score @s selectedSkill matches 2 run function mines_and_mobs:skills/effects/mega_jump/use

advancement revoke @s from mines_and_mobs:use_skill