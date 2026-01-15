$execute if entity @s[type=mannequin] run tp @s @e[type=villager,nbt={data:{npc_id:$(npc_id)}}, limit=1]
$execute if entity @s[type=villager] unless entity @e[type=mannequin,nbt={data:{npc_id:$(npc_id)}}, limit=1] run kill @s
$execute if entity @s[type=mannequin] unless entity @e[type=villager,nbt={data:{npc_id:$(npc_id)}}, limit=1] run kill @s