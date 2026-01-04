scoreboard objectives add Math dummy
scoreboard objectives add Constants dummy
scoreboard players set #100000 Constants 100000
scoreboard players set #1000 Constants 1000
scoreboard players set #100 Constants 100
scoreboard players set #20 Constants 20
scoreboard players set #10 Constants 10
scoreboard players set #5 Constants 5
scoreboard players set #2 Constants 2

scoreboard objectives add GameStates dummy "Game States"

scoreboard objectives add RayCast dummy "Ray Cast"
scoreboard objectives add last_x dummy
scoreboard objectives add last_y dummy
scoreboard objectives add last_z dummy

scoreboard objectives add Timer dummy
scoreboard objectives add Seconds dummy

scoreboard objectives add isCrouching minecraft.custom:minecraft.sneak_time

function mines_and_mobs:game/ray/helper/default

# Global IDs for Rays
execute unless data storage mines_and_mobs:ray_id next_id run data modify storage mines_and_mobs:ray_id next_id set value 1