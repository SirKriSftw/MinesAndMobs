scoreboard players remove #Current selectedSkill 1
execute if score #Current selectedSkill matches 0 run scoreboard players set #Current selectedSkill 2

execute as @a run function mines_and_mobs:game/lobby/skills/give