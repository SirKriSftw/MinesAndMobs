$summon minecraft:mannequin ~ ~ ~ \
{\
  Tags:["mnm_npc", "mnm_man", "$(type)"],\
  CustomName: "$(name)",\
  description: "$(type)",\
  profile:{\
    properties:[\
      {\
        name:"textures", \
        value: "$(texture)"\
      }\
    ]\
  },\
  immovable: 1b,\
  Invulnerable: 1b,\
  Team: mnm_npcs\
}

execute if data storage mines_and_mobs:npc trades at @e[type=minecraft:mannequin, limit=1, sort=nearest] run function mines_and_mobs:npc/_generic/villager with storage mines_and_mobs:npc
data remove storage mines_and_mobs:npc trades