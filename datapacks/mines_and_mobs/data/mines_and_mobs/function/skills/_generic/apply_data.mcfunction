# Prevent Ghosting
$clear @s stick[custom_data={skill_id:$(id)}] 1
item replace entity @s weapon.mainhand with stick

$item replace entity @s weapon.mainhand with stick[ \
  custom_name="$(name)", \
  minecraft:custom_data={ \
    mines_and_mobs_skill:true, \
    cant_drop: 1b, \
    skill_id:$(id), \
    give:"$(give)", \
    on_effect:"$(on_effect)", \
    cast:$(cast), \
    cooldown:$(cooldown), \
  }, \
  minecraft:consumable={ \
    consume_seconds:$(cast), \
    animation:"$(animation)", \
    has_consume_particles:false, \
    sound:"$(sound)" \
  }, \
  minecraft:use_cooldown={ \
    seconds:$(cooldown), \
    cooldown_group:"$(group)" \
  } \
]