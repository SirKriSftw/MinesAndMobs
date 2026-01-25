$execute if entity @s[tag=$(name)] run return 0

$item replace entity @s armor.head with $(item)[ \
  minecraft:custom_name=[{"text":"$(display_name)","italic":false,"color":"$(hex_color)"}], \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={"minecraft:binding_curse": 1}, \
  minecraft:tooltip_display={hidden_components:["enchantments"]}, \
  minecraft:attribute_modifiers=[ \
    { \
      type:"minecraft:scale", \
      amount:$(scale), \
      operation:"add_value", \
      id:"mines_and_mobs:scale" \
    } \
  ], \
  $(custom_component), \
  minecraft:profile=$(profile) \
]

function mines_and_mobs:races/clear_tags
$tag @s add $(name)