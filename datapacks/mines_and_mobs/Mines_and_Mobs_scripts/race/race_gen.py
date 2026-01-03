import os
import json

def getSpawnContent(data):
    # 1. Handle Scale (Nullable)
    scale_val = data.get("scale", 0) # Default to 0 if not provided
    scale_comp = ""
    if scale_val != 0:
        scale_comp = f' "minecraft:attribute_modifiers":[{{type:"minecraft:scale", amount: {scale_val}, operation: add_value, id:"123123123"}}] ,'

    # 2. Handle Profile (Nullable)
    profile_val = data.get("profile", "")
    profile_comp = f'"minecraft:profile": {{{profile_val}}}' if profile_val else ""

    # 3. Combine into the Head Item
    # We strip trailing commas to keep the JSON valid
    components = f"{{{scale_comp} {profile_comp}}}".replace(", }", "}")
    head = f'head:{{components:{components}, count:1, id:"minecraft:player_head"}}'
    
    equipment = f"equipment:{{{head}}}"
    tags = f'Tags:["Lobby", "Race", "{data["raceName"].lower()}"]'
    name = f'CustomName:[{{text:"{data["raceName"]}", color:"{data["hex_color"]}"}}]'
    settings = "CustomNameVisible:1b,Invisible:1b, NoGravity:1b, ShowArms:1b, DisabledSlots:4144959"

    return f"summon armor_stand ~ ~ ~ {{{equipment}, {tags}, {name}, {settings}}}"

def getAssignContent(data):
    # 1. Base Components
    shared = [
        f'minecraft:custom_name=[{{"text":"{data["raceName"]}","italic":false,"color":"{data["hex_color"]}"}}]',
        'minecraft:enchantment_glint_override=false',
        'minecraft:enchantments={"minecraft:binding_curse": 1}',
        'minecraft:tooltip_display={hidden_components:[enchantments]}'
    ]

    # 2. Handle Profile
    if data.get("profile"):
        shared.append(f'minecraft:profile={{{data["profile"]}}}')

    # 3. Handle Scale
    if data.get("scale"):
        shared.append(f'minecraft:attribute_modifiers=[{{type:"minecraft:scale", amount: {data["scale"]}, operation: add_value, id:"123123123"}}]')

    # 4. Handle Glide (for Elytra/special races)
    if data.get("canGlide"):
        shared.append('minecraft:glider={}')

    # Join components with commas
    head_item = f"minecraft:player_head[{', '.join(shared)}]"
    
    replace = f"item replace entity @s armor.head with {head_item}"
    clear = "function mines_and_mobs:races/clear_tags"
    tag = f"tag @s add {data['raceName'].lower()}"

    return f"{replace}\n\n{clear}\n{tag}"

def generate_race_files(data):
    folder_name = data["raceName"].lower()
    os.makedirs(folder_name, exist_ok=True)
    
    file_map = {
        "spawn.mcfunction": getSpawnContent(data),
        "assign.mcfunction": getAssignContent(data)
    }

    for filename, content in file_map.items():
        with open(os.path.join(folder_name, filename), "w") as f:
            f.write(content.strip())
            
    print(f"✅ Generated Race: {folder_name}")


if __name__ == "__main__":
    # Load the JSON file
    with open('races.json', 'r') as f:
        races_list = json.load(f)

    # Loop through the list and generate for each
    for race_data in races_list:
        generate_race_files(race_data)
        print(f"Generated {race_data['raceName']}")