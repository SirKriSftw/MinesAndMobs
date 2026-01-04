$item modify entity @s weapon.mainhand { \
  "function": "minecraft:set_components", \
  "components": { \
    "minecraft:consumable": { \
      "consume_seconds": $(cast_time), \
      "animation": "$(cast_animation)", \
      "has_consume_particles": false, \
      "sound": "$(cast_sound)" \
    }, \
    "minecraft:use_cooldown": { \
      "seconds": $(cooldown_time), \
      "cooldown_group": "$(skill_group)" \
    } \
  } \
}