$execute at @s facing entity \
  @e[tag=enemy, distance=0.5..5, nbt=!{data:{hit_by:[$(ray_id)]}}, limit=1, sort=nearest] eyes \
  run tp @s ~ ~ ~ ~ ~