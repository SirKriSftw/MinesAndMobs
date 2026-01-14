data modify storage mines_and_mobs:npc vil.trades set value [\
  {\
    buy:{id:"copper_nugget", count:10, \
      components:{\
        custom_name:{"text":"Bronze Nugget","italic":false,"color":"#CE8946"}\
      }\
    },\ 
    sell:{id:"blaze_powder", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Strength", "italic": false, "color": "#FF0000"}\
      }\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"copper_nugget", count:10, \
      components:{\
        custom_name:{"text":"Bronze Nugget","italic":false,"color":"#CE8946"}\
      }\
    },\ 
    sell:{id:"rabbit_foot", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Dexterity", "italic": false, "color": "#00FF00"}\
      }\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"copper_nugget", count:10, \
      components:{\
        custom_name:{"text":"Bronze Nugget","italic":false,"color":"#CE8946"}\
      }\
    },\ 
    sell:{id:"iron_ingot", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Constitution", "italic": false, "color": "#FFA500"}\
      }\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  }\
]