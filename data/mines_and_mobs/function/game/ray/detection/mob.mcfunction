tag @s add hit

data modify entity @e[tag=ray_worker,limit=1,distance=..1.5] data.hit_mob set value 1b

$function $(on_hit_mob)