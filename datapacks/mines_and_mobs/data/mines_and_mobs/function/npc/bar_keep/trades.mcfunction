data modify storage mines_and_mobs:npc vil.trades set value [\
  {\
    buy:{id:"copper_nugget", count:10, \
      components:{\
        custom_name:{"text":"Bronze Nugget","italic":false,"color":"#CE8946"}\
      }\
    },\ 
    sell:{id:"potion", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "Ale", "italic": false, "color": "#F2C626"},\
          potion_contents:{custom_color:15910438, custom_effects:[{id:nausea, amplifier:2, duration: 200,show_particles:false}]}\
      }\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  }\
]