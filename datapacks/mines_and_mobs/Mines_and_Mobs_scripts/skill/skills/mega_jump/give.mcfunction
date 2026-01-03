clear @s stick[minecraft:custom_data={skill_id:2}]
item replace entity @s weapon.mainhand with stick
item replace entity @s weapon.mainhand with stick[custom_name="Mega Jump", minecraft:custom_data={skill_id:2, mines_and_mobs_skill:true}, minecraft:consumable={consume_seconds:0.1f, animation:"bow", has_consume_particles:false, sound:"minecraft:block.enchantment_table.use"}, minecraft:use_cooldown={seconds:10.0f, cooldown_group:"jump"}]
function mines_and_mobs:skills/calc_cooldown