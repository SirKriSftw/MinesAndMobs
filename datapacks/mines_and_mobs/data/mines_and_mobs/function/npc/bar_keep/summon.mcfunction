data modify storage mines_and_mobs:npc vil.name set value "bar_keep"
data modify storage mines_and_mobs:npc vil.display_name set value "Bar Keep"

function mines_and_mobs:npc/bar_keep/trades

execute at @s run function mines_and_mobs:npc/_generic/summon {\
  name: "bar_keep",\
  texture:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGIyMWRhNjhmMzlhNDVjNzU4OGQ3NzZkYmFmOTYyMWM2YTJiYTVlOTIyMjdmMDU5YmVmYWU4MjRlZTIzODliMiJ9fX0="\
}