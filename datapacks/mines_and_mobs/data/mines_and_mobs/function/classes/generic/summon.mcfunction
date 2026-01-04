$summon armor_stand ~ ~ ~ { \
  Tags:["Lobby", "Class"], \
  CustomName:[{text:"$(display_name)", color:"$(hex_color)"}], \
  CustomNameVisible:1b, \
  Invisible:1b, \
  NoGravity:1b, \
  ShowArms:1b, \
  DisabledSlots:4144959, \
  equipment:{ \
    mainhand:{count:1, id:"$(weapon)"}, \
    feet:{id:"minecraft:leather_boots", count:1, components:{"minecraft:dyed_color":$(dyed_color)}}, \
    legs:{id:"minecraft:leather_leggings", count:1, components:{"minecraft:dyed_color":$(dyed_color)}}, \
    chest:{id:"minecraft:leather_chestplate", count:1, components:{"minecraft:dyed_color":$(dyed_color)}} \
  } \
}