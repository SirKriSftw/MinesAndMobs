data modify storage mines_and_mobs:race args merge value {name: "dwarf", display_name: "Dwarf"}
data modify storage mines_and_mobs:race args merge value {hex_color: "#FF0000"}
data modify storage mines_and_mobs:race args merge value {scale: -0.2}
data modify storage mines_and_mobs:race args merge value { \
  profile: { \
    id:[I;2080793942, -524468218, -1541115779, 1949756395], \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzIxNmEwYTU3ZjE2NWM3ZTZkYmM3MjJmNTI5NmZhNWI5N2M1YzJjNGJjYjg3MWE3YjJjYTFjNDY0YWI4ZGY2NCJ9fX0=" \
    }] \
  } \
}

function mines_and_mobs:races/_generic/summon