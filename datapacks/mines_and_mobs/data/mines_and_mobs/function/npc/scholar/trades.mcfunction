data modify storage mines_and_mobs:npc vil.trades set value [\
  {\
    buy:{id:"copper_nugget", count:10, \
      components:{\
        custom_name:{"text":"Bronze Nugget","italic":false,"color":"#CE8946"}\
      }\
    },\ 
    sell:{id:"book", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Intelligence", "italic": false, "color": "#3333CC"}\
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
    sell:{id:"golden_apple", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Wisdom", "italic": false, "color": "#800080"}\
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
    sell:{id:"emerald", count:1, \
      components:{\
          custom_data:{mines_and_mobs_upgrade: true},\
          custom_name:{"text": "+1 Charisma", "italic": false, "color": "#FF6678"}\
      }\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  }\
]