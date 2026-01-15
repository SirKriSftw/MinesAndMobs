$summon minecraft:mannequin ~ ~ ~ \
{\
  CustomName: "$(display_name)",\
  description: "$(description)",\
  CustomNameVisible: 1b,\
  Tags:["mnm_npc", "mnm_man", "$(name)"],\
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

execute as @e[type=minecraft:mannequin, limit=1, sort=nearest] at @s \
  run function mines_and_mobs:npc/_generic/villager
data remove storage mines_and_mobs:npc vil