# Calculate increment value
$execute store result score _upgrade_stat Math run clear @s $(item)[custom_data~{mines_and_mobs_upgrade:true}]
$scoreboard players operation @s $(stat) += _upgrade_stat Math

$function $(update_fn)

# Notify User Of Upgrade
$title @s actionbar ["",{"text":"+", "color":"$(color)"},{"score":{"name":"_upgrade_stat","objective":"Math"}},{"text":" $(name)!","color":"$(color)"}]
$playsound $(sound) player @s ~ ~ ~ 1 1.2

# Cleanup
scoreboard players reset _upgrade_stat Math