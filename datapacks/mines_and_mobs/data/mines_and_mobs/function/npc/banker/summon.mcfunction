data modify storage mines_and_mobs:npc vil.name set value "banker"
data modify storage mines_and_mobs:npc vil.display_name set value "Banker"

function mines_and_mobs:items/money/all
function mines_and_mobs:npc/banker/trades with storage mines_and_mobs:items money
data remove storage mines_and_mobs:items money

data modify storage mines_and_mobs:npc model.name set value "banker"
data modify storage mines_and_mobs:npc model.display_name set value "Benedict Bankes"
data modify storage mines_and_mobs:npc model.description set value "Banker 💰"
data modify storage mines_and_mobs:npc model.texture set value \
  "e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3Rle\
  HR1cmUvOTkwYzVlMzk2ODVlZTU1OGY2ZDU1YjRlOTBmN2QzZjRmMzJiYzY3MDFlZDdkZTcxM2I5NmQ1NDYwMWFlOGEwMiJ9fX0="

function mines_and_mobs:npc/_generic/summon/0_npc