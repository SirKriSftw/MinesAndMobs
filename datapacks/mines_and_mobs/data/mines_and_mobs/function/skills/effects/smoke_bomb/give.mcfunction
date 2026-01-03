clear @s stick[minecraft:custom_data={skill_id:1}]
item replace entity @s weapon.mainhand with stick
item replace entity @s weapon.mainhand with stick[custom_name="Smoke Bomb", minecraft:custom_data={skill_id:1, mines_and_mobs_skill:true}, minecraft:consumable={consume_seconds:5.0f, animation:"bow", has_consume_particles:false, sound:"minecraft:block.candle.extinguish"}, minecraft:use_cooldown={seconds:10.0f, cooldown_group:"smoke"}]
function mines_and_mobs:skills/calc_cooldown