$scoreboard players set _list_len Math $(list_len)
scoreboard players remove _list_len Math 1

execute store result storage mines_and_mobs:temp list_len int 1 run scoreboard players get _list_len Math
scoreboard players reset _list_len Math
return run function mines_and_mobs:z_utility/ran_index_2 with storage mines_and_mobs:temp