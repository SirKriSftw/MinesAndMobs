scoreboard objectives add str dummy Strength
scoreboard objectives add dex dummy Dexterity
scoreboard objectives add cons dummy Constitution
scoreboard objectives add int dummy Intelligence
scoreboard objectives add wis dummy Wisdom
scoreboard objectives add cha dummy Charisma

scoreboard objectives add selectedStat dummy "Selected Stat"
scoreboard players set #Current selectedStat 1

scoreboard objectives add give_stat trigger "Give Stat"

# Set BASE stats
execute as @a run attribute @s minecraft:attack_speed base set 1
execute as @a run attribute @s minecraft:movement_speed base set 0.075
execute as @a run attribute @s minecraft:max_health base set 6