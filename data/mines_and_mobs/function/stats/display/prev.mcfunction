scoreboard players remove #Current selectedStat 1
execute if score #Current selectedStat matches 0 run scoreboard players set #Current selectedStat 6

function mines_and_mobs:stats/display/stat