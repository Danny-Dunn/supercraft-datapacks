summon minecraft:item ~ ~ ~ {Tags:["bh_item"],Item:{id:"minecraft:wheat_seeds",Count:1b,}}
data modify entity @e[type=minecraft:item,tag=bh_item,limit=1,distance=..0.5] Item set from entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] Item
replaceitem entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 minecraft:air