data modify storage mines_and_mobs:give skill_args merge value {id: 2}
data modify storage mines_and_mobs:give skill_args merge value {name: "Mega Jump"}
data modify storage mines_and_mobs:give skill_args merge value {cast: 0.1, cooldown: 10.0}
data modify storage mines_and_mobs:give skill_args merge value {animation: "bow"}
data modify storage mines_and_mobs:give skill_args merge value {sound: "minecraft:block.candle.extinguish"}
data modify storage mines_and_mobs:give skill_args merge value {group: "mega_jump"}

data modify storage mines_and_mobs:give skill_args merge value {give: "mines_and_mobs:skills/effects/mega_jump/effect"}
data modify storage mines_and_mobs:give skill_args merge value {on_effect: "mines_and_mobs:skills/effects/mega_jump/give"}

execute as @s run function mines_and_mobs:skills/_generic/give