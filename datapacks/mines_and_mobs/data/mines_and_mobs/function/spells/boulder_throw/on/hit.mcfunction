execute at @s run particle minecraft:block_crumble{block_state:{Name:packed_mud}} ~ ~0.6 ~ 1 0.2 1 5 200 force

function mines_and_mobs:spells/boulder_throw/sound/start

execute as @e[type=#mines_and_mobs:enemy, distance=..2] \
  run function mines_and_mobs:spells/_generic/damage with entity @e[type=marker,tag=ray_worker,limit=1,distance=..2, sort=nearest] data