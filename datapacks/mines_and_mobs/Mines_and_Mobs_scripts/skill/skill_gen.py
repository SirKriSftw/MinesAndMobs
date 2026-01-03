import os
import json

def getGiveContent(data):
    # Prepare the components
    custom_name = f'custom_name="{data["name"]}"'
    custom_data = f'minecraft:custom_data={{skill_id:{data["id"]}, mines_and_mobs_skill:true}}'
    
    consumable = (
        f'minecraft:consumable={{consume_seconds:{data["cast"]}f, '
        f'animation:"{data["animation"]}", has_consume_particles:false, '
        f'sound:"{data["sound"]}"}}'
    )
    
    cooldown = (
        f'minecraft:use_cooldown={{seconds:{data["cooldown"]}f, '
        f'cooldown_group:"{data["group"]}"}}'
    )
    
    all_components = f"{custom_name}, {custom_data}, {consumable}, {cooldown}"
    
    clear_cmd = f"clear @s stick[minecraft:custom_data={{skill_id:{data['id']}}}]"
    prevent_ghost_cmd = "item replace entity @s weapon.mainhand with stick"
    give_cmd = f"item replace entity @s weapon.mainhand with stick[{all_components}]"
    calc_cmd = "function mines_and_mobs:skills/calc_cooldown"

    return f"{clear_cmd}\n{prevent_ghost_cmd}\n{give_cmd}\n{calc_cmd}"

def getUseContent(path_name):
    # Logic path for effect and the re-give function
    effect_path = f"function mines_and_mobs:skills/effects/{path_name}/effect"
    give_path = f"function mines_and_mobs:skills/effects/{path_name}/give"
    return f"{effect_path}\n{give_path}"

def generate_skill_files(data):
    # Create a folder name based on the skill name (e.g., "Smoke Bomb" -> "smoke_bomb")
    path_name = data["name"].lower().replace(" ", "_")
    base_dir = os.path.join("skills", path_name)
    os.makedirs(base_dir, exist_ok=True)
    
    # Generate content
    file_map = {
        "give.mcfunction": getGiveContent(data),
        "use.mcfunction": getUseContent(path_name),
        "effect.mcfunction": "" # Intentionally blank as requested
    }

    # Write files
    for filename, content in file_map.items():
        with open(os.path.join(base_dir, filename), "w") as f:
            f.write(content.strip())
            
    print(f"✅ Generated Skill: {path_name}")

if __name__ == "__main__":
    # Load the JSON file
    with open('skills.json', 'r') as f:
        skills_list = json.load(f)

    # Loop through the list and generate for each
    for skill_data in skills_list:
        generate_skill_files(skill_data)
        print(f"Generated {skill_data['name']}")