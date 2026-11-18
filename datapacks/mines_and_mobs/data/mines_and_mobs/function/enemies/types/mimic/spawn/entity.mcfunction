summon slime ~ ~ ~ {NoAI:1b, Size:0, Silent:1b, Tags:["mimic"], \
    attributes:[{id:scale,base:1.8f}, {id:max_health, base:20f}], \
    DeathLootTable:"", \
    active_effects:[{id:"minecraft:invisibility",amplifier:1,show_particles:false,duration:-1}, {id:"glowing", duration:-1}]\
}

summon item_display ~ ~ ~ {Tags:["mimic", "needs_owner"], item:{id:"chest"}}
execute as @e[type=item_display, tag=needs_owner, limit=1, sort=nearest] run function mines_and_mobs:enemies/types/mimic/util/set_owner
summon interaction ~ ~ ~ {Tags:["mimic"]}