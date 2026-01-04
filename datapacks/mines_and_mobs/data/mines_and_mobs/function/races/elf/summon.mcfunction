data modify storage mines_and_mobs:race args merge value {name: "elf", display_name: "Elf"}
data modify storage mines_and_mobs:race args merge value {hex_color: "#00FF00"}
data modify storage mines_and_mobs:race args merge value { \
  profile: { \
    id:[I;2080793942,-524468218,-1541115779,1949756395], \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYxMGViZWNkN2Y0NGRlZjYwZmIwYjc5MjRkMDZjOWI4OWZlNzUyMzQ2MjRhMmY3ZjMwYTg0ZTM3Mjg2OTBlMyJ9fX0=" \
    }] \
  } \
}

function mines_and_mobs:races/_generic/summon