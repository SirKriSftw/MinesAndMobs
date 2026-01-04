scoreboard players add #Current selectedSkill 1
execute if score #Current selectedSkill matches 3 run scoreboard players set #Current selectedSkill 1

execute as @a run function mines_and_mobs:game/lobby/skills/give