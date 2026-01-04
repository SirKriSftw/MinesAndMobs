tag @s add hit
data modify entity @e[type=marker,tag=ray_worker,limit=1,distance=..2, sort=nearest] data.hit_mob set value 1b

$data modify entity @s[nbt=!{data:{hit_by:[$(ray_id)]}}] data.hit_by append value $(ray_id)

$function $(on_hit_mob)