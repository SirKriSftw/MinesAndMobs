$summon villager ~ ~ ~ {\
  data:{npc_id: $(npc_id)},\
  CustomName:"$(display_name)",\
  Silent: 1,\ 
  Invulnerable: 1b,\
  Tags: ["mnm_npc", "mnm_vil", "$(name)"],\
  Team: mnm_npcs,\
  Offers:{Recipes:$(trades)},\
  attributes:[\
    {id:"scale", base: 1.1f}\
  ],\
  active_effects:[\
    {id:invisibility,duration:-1,amplifier:1,show_particles:0b},\
    {id:glowing,duration:-1,amplifier:1,show_particles:0b}\
  ],\
  VillagerData:{\
    level: 5,\
    profession: $(profession),\
    type: taiga\
  },\
  home_pos: $(pos),\
  home_radius: $(radius)\
}