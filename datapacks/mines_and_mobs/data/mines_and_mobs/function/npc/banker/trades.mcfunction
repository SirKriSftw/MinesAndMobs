$data modify storage mines_and_mobs:npc vil.trades set value [\
  {\
    buy:{id:"$(bronze_nugget_id)", count:10, \
      components: $(bronze_nugget_components)\
    },\ 
    sell:{id:"$(bronze_bar_id)", count:1, \
      components: $(bronze_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"$(bronze_bar_id)", count:10, \
      components: $(bronze_bar_components)\
    },\ 
    sell:{id:"$(silver_nugget_id)", count:1, \
      components:$(silver_nugget_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"$(silver_nugget_id)", count:10, \
      components:$(silver_nugget_components)\
    },\ 
    sell:{id:"$(silver_bar_id)", count:1, \
      components:$(silver_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"$(silver_bar_id)", count:10, \
      components:$(silver_bar_components)\
    },\ 
    sell:{id:"$(gold_nugget_id)", count:1, \
      components:$(gold_nugget_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    buy:{id:"$(gold_nugget_id)", count:10, \
      components:$(gold_nugget_components)\
    },\ 
    sell:{id:"$(gold_bar_id)", count:1, \
      components:$(gold_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  \
  \
  {\
    buy:{id:"barrier", count:1, \
      components:{\
        custom_name:{"text":"","italic":false,"color":"#FFFFFF"}\
      }\
    },\ 
    sell:{id:"barrier", count:1, \
      components:{\
        custom_name:{"text":"","italic":false,"color":"#FFFFFF"}\
      }\
    },\ 
    maxUses:-1, rewardExp: 0\
  },\
  \
  \
  {\
    sell:{id:"$(bronze_nugget_id)", count:10, \
      components:$(bronze_nugget_components)\
    },\ 
    buy:{id:"$(bronze_bar_id)", count:1, \
      components:$(bronze_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    sell:{id:"$(bronze_bar_id)", count:10, \
      components:$(bronze_bar_components)\
    },\ 
    buy:{id:"$(silver_nugget_id)", count:1, \
      components:$(silver_nugget_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    sell:{id:"$(silver_nugget_id)", count:10, \
      components:$(silver_nugget_components)\
    },\ 
    buy:{id:"$(silver_bar_id)", count:1, \
      components:$(silver_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    sell:{id:"$(silver_bar_id)", count:10, \
      components:$(silver_bar_components)\
    },\ 
    buy:{id:"$(gold_nugget_id)", count:1, \
      components:$(gold_nugget_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  },\
  {\
    sell:{id:"$(gold_nugget_id)", count:10, \
      components:$(gold_nugget_components)\
    },\ 
    buy:{id:"$(gold_bar_id)", count:1, \
      components:$(gold_bar_components)\
    },\ 
    maxUses:2147483647, rewardExp: 0\
  }\
]