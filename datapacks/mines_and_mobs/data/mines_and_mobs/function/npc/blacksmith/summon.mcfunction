data modify storage mines_and_mobs:npc vil.name set value "blacksmith"
data modify storage mines_and_mobs:npc vil.display_name set value "Blacksmith"

function mines_and_mobs:npc/blacksmith/trades

execute at @s run function mines_and_mobs:npc/_generic/summon {\
  name: "blacksmith",\
  texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzFhZjA4OGJiNTM4ZjljZTdlM2M5YWM2ODQ5NjcwODcxNjNmMDk2ZWU1YzFiNDIzYTUyMTQ2YTZiM2JkZDI3MDAifX19"\
}