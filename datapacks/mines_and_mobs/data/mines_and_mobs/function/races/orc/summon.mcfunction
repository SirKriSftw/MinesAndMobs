data modify storage mines_and_mobs:race args merge value {name: "orc", display_name: "Orc"}
data modify storage mines_and_mobs:race args merge value {hex_color: "#005500"}
data modify storage mines_and_mobs:race args merge value {scale: 0.2}
data modify storage mines_and_mobs:race args merge value { \
  profile: { \
    id:[I;2080793942,-524468218,-1541115779,1949756395], \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODJkNmI2MjJmMDZkYmQzYjE5YmY3NjUzOGNhNzA0NzMzZWQwYjAyZTQ0MzhjOWQ4OTY4YTA0YmZiYjI4ZWY2MyJ9fX0=" \
    }] \
  } \
}

function mines_and_mobs:races/_generic/summon