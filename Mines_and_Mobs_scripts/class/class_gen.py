import json
import os

def getSpawnContent(data):
    # Breakdown equipment into a list for clarity
    eq_list = [
        f'mainhand:{{count:1, id:"{data["weapon"]}"}}',
        f'legs:{{components:{{"minecraft:dyed_color":{data["dyed_color"]}}},count:1, id:"minecraft:leather_leggings"}}',
        f'chest:{{components:{{"minecraft:dyed_color":{data["dyed_color"]}}},count:1, id:"minecraft:leather_chestplate"}}',
        f'feet:{{components:{{"minecraft:dyed_color":{data["dyed_color"]}}},count:1, id:"minecraft:leather_boots"}}'
    ]
    
    # Main summon components
    summon_components = [
        f"equipment:{{{', '.join(eq_list)}}}",
        'Tags:["Lobby", "Class"]',
        f'CustomName:[{{text:"{data["className"]}", color:"{data["hex_color"]}"}}]',
        'CustomNameVisible:1b',
        'Invisible:1b',
        'NoGravity:1b',
        'ShowArms:1b',
        'DisabledSlots:4144959'
    ]
    
    return f"summon armor_stand ~ ~ ~ {{{', '.join(summon_components)}}}"

def getAssignContent(data):
    # Shared item components list
    shared = [
        'minecraft:enchantment_glint_override=false',
        'minecraft:enchantments={"minecraft:binding_curse": 1}',
        'minecraft:tooltip_display={hidden_components:[enchantments]}',
        'minecraft:unbreakable={}',
        'minecraft:attribute_modifiers=[]',
        f'minecraft:dyed_color={data["dyed_color"]}'
    ]
    
    def make_name(suffix):
        return f'minecraft:custom_name=[{{"text":"{data["className"]}\'s {suffix}","italic":false,"color":"{data["hex_color"]}"}}]'

    # Build the item replace commands
    item_replace = "item replace entity @s"
    
    chest = f"{item_replace} armor.chest with minecraft:leather_chestplate[{', '.join(shared)}, {make_name('Shirt')}]"
    legs = f"{item_replace} armor.legs with minecraft:leather_leggings[{', '.join(shared)}, {make_name('Pants')}]"
    feet = f"{item_replace} armor.feet with minecraft:leather_boots[{', '.join(shared)}, {make_name('Shoes')}]"
    
    armor = f"{chest}\n{legs}\n{feet}" 
    
    # Logic strings
    class_tag = data["className"].lower()
    logic = [
        f"execute unless entity @s[tag={class_tag}] run function mines_and_mobs:classes/{class_tag}/weapon",
        "function mines_and_mobs:classes/clear_tags",
        f"tag @s add {class_tag}"
    ]

    logic_joined = "\n".join(logic)

    return f"{armor}\n\n{logic_joined}"

def getWeaponContent(data):
    # Build item components list
    components = [
        f'minecraft:custom_name={{text:"{data["weapon_name"]}", color:"{data["hex_color"]}", italic:false}}',
        'custom_data={mines_and_mobs_weapon:1b}',
        'attribute_modifiers=[]'
    ]
    
    clear_cmd = "clear @p *[minecraft:custom_data={mines_and_mobs_weapon:1b}]"
    replace_cmd = f"item replace entity @s weapon.mainhand with {data['weapon']}[{', '.join(components)}]"
    
    return f"{clear_cmd}\n{replace_cmd}"

def generate_class_files(data):
    folder_name = data["className"].lower()
    os.makedirs(folder_name, exist_ok=True)
    
    file_map = {
        "spawn.mcfunction": getSpawnContent(data),
        "assign.mcfunction": getAssignContent(data),
        "weapon.mcfunction": getWeaponContent(data)
    }

    for filename, content in file_map.items():
        with open(os.path.join(folder_name, filename), "w") as f:
            f.write(content.strip())
            
    print(f"Successfully generated files for: {folder_name}")

if __name__ == "__main__":
    try:
        with open('classes.json', 'r') as f:
            classes_list = json.load(f)
        for class_data in classes_list:
            generate_class_files(class_data)
    except FileNotFoundError:
        print("Error: classes.json not found.")