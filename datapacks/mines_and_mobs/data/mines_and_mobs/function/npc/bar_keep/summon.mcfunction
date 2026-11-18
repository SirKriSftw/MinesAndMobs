data modify storage mines_and_mobs:npc vil.name set value "bar_keep"
data modify storage mines_and_mobs:npc vil.display_name set value "Bar Keep"
data modify storage mines_and_mobs:npc vil.profession set value cleric

data modify storage mines_and_mobs:npc model.name set value "bar_keep"
data modify storage mines_and_mobs:npc model.display_name set value "Barnaby Brew"
data modify storage mines_and_mobs:npc model.description set value "Bar Keep 🍺"
data modify storage mines_and_mobs:npc model.texture set value \
  "e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cm\
  UvZGIyMWRhNjhmMzlhNDVjNzU4OGQ3NzZkYmFmOTYyMWM2YTJiYTVlOTIyMjdmMDU5YmVmYWU4MjRlZTIzODliMiJ9fX0="

function mines_and_mobs:npc/bar_keep/trades

function mines_and_mobs:npc/_generic/summon/0_npc