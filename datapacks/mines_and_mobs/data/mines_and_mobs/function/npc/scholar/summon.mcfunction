data modify storage mines_and_mobs:npc vil.name set value "scholar"
data modify storage mines_and_mobs:npc vil.display_name set value "Scholar"

function mines_and_mobs:npc/scholar/trades

data modify storage mines_and_mobs:npc model.name set value "scholar"
data modify storage mines_and_mobs:npc model.display_name set value "Aldous Bookman"
data modify storage mines_and_mobs:npc model.description set value "Scholar 📚"
data modify storage mines_and_mobs:npc model.texture set value \
  "e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleH\
  R1cmUvNDFmNDMzYjg3OWNkYzYxOTEyYjAxMjk3OTU0MWY1MzM5NjE2MTM2YTg5MzJjYjQ2MjJkNmE4NmU5ZWE2ZGI4In19fQ=="

function mines_and_mobs:npc/_generic/summon/0_npc