# Chestplate
$item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={"minecraft:binding_curse": 1}, \
  minecraft:tooltip_display={hidden_components:["enchantments"]}, \
  minecraft:unbreakable={}, \
  minecraft:attribute_modifiers=[], \
  minecraft:dyed_color=$(dyed_color), \
  minecraft:custom_name=[{text:"$(display_name)\'s Shirt",italic:false,color:"$(hex_color)"}] \
]

# Leggings
$item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={"minecraft:binding_curse": 1}, \
  minecraft:tooltip_display={hidden_components:["enchantments"]}, \
  minecraft:unbreakable={}, \
  minecraft:attribute_modifiers=[], \
  minecraft:dyed_color=$(dyed_color), \
  minecraft:custom_name=[{text:"$(display_name)\'s Pants",italic:false,color:"$(hex_color)"}] \
]

# Boots
$item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={"minecraft:binding_curse": 1}, \
  minecraft:tooltip_display={hidden_components:["enchantments"]}, \
  minecraft:unbreakable={}, \
  minecraft:attribute_modifiers=[], \
  minecraft:dyed_color=$(dyed_color), \
  minecraft:custom_name=[{text:"$(display_name)\'s Shoes",italic:false,color:"$(hex_color)"}] \
]

# Logic
$execute unless entity @s[tag=$(name)] run function mines_and_mobs:classes/$(name)/weapon
function mines_and_mobs:classes/clear_tags
$tag @s add $(name)