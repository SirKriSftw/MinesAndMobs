clear @s stick[minecraft:custom_data={skill_id:0}]
item replace entity @s weapon.mainhand with stick
item replace entity @s weapon.mainhand with stick[custom_name="Test", minecraft:custom_data={skill_id:0, mines_and_mobs_skill:true}, minecraft:consumable={consume_seconds:0.1f, animation:"bow", has_consume_particles:false, sound:"minecraft:block.candle.extinguish"}, minecraft:use_cooldown={seconds:1f, cooldown_group:"test"}]
function mines_and_mobs:skills/calc_cooldown