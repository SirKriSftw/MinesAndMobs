data modify storage mines_and_mobs:npc trades set value [\
  {buy:{id:"copper_nugget", count:10}, sell:{id:"copper_ingot", count:1}, maxUses:2147483647, rewardExp: 0}\
]

execute at @s run function mines_and_mobs:npc/_generic/summon {\
  name: "NAME_HERE",\
  type: "Banker",\
  texture:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTkwYzVlMzk2ODVlZTU1OGY2ZDU1YjRlOTBmN2QzZjRmMzJiYzY3MDFlZDdkZTcxM2I5NmQ1NDYwMWFlOGEwMiJ9fX0="\
}