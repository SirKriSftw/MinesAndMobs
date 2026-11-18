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