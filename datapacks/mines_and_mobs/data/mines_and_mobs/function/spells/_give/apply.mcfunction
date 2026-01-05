clear @p *[minecraft:custom_data={mines_and_mobs_weapon:1b}]
$item replace entity @s weapon.mainhand with $(item)[ \
  minecraft:custom_name={text:"$(name)", color:"$(color)", italic:false}, \
  lore=$(lore), \
  custom_data={ \
    mines_and_mobs_weapon:1b, \
    range:$(range), \
    speed:$(speed), \
    is_hitscan:$(is_hitscan), \
    p_mobs:$(p_mobs), \
    p_blocks:$(p_blocks), \
    bounce:$(bounce), \
    chain:$(chain), \
    on_hit_mob:'$(on_hit_mob)', \
    on_hit_block:'$(on_hit_block)', \
    on_travel:'$(on_travel)', \
    on_end:'$(on_end)' \
  }, \
  attribute_modifiers=[], \
  minecraft:piercing_weapon={min_reach:0, max_reach:0, hitbox_margin:0}, \
  enchantments={"mines_and_mobs:wand":1}, \
  minecraft:tooltip_display={hidden_components:["enchantments"]} \
]