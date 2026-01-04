$summon armor_stand ~ ~ ~ { \
  Tags:["Lobby", "Race"], \
  CustomName:[{text:"$(display_name)", color:"$(hex_color)"}], \
  CustomNameVisible:1b, \
  Invisible:1b, \
  NoGravity:1b, \
  ShowArms:1b, \
  DisabledSlots:4144959, \
  equipment:{ \
    head:{ \
      count:1, \
      id:"minecraft:player_head", \
      components:{ \
        "minecraft:profile":$(profile), \
        "minecraft:attribute_modifiers":[ \
          { \
            type:"minecraft:scale", \
            amount:$(scale), \
            operation:"add_value", \
            id:"mines_and_mobs:scale" \
          } \
        ] \
      } \
    } \
  } \
}