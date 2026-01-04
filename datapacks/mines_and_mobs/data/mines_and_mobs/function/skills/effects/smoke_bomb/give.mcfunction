data modify storage mines_and_mobs:give skill_args merge value {id: 1}
data modify storage mines_and_mobs:give skill_args merge value {name: "Smoke Bomb"}
data modify storage mines_and_mobs:give skill_args merge value {cast: 5.0, cooldown: 10.0}
data modify storage mines_and_mobs:give skill_args merge value {animation: "bow"}
data modify storage mines_and_mobs:give skill_args merge value {sound: "minecraft:block.candle.extinguish"}
data modify storage mines_and_mobs:give skill_args merge value {group: "smoke"}

data modify storage mines_and_mobs:give skill_args merge value {give: "mines_and_mobs:skills/effects/smoke_bomb/effect"}
data modify storage mines_and_mobs:give skill_args merge value {on_effect: "mines_and_mobs:skills/effects/smoke_bomb/give"}

execute as @s run function mines_and_mobs:skills/generic/give