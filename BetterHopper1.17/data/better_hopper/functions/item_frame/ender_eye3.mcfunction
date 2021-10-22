tag @s add bh_hopper_type_vacuum
tag @s remove bh_hopper_type_filter
item replace entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 with minecraft:air
item replace entity @s armor.head with minecraft:end_portal_frame
item replace block ~ ~-1 ~ container.0 with minecraft:air
item replace block ~ ~-1 ~ container.1 with minecraft:air
item replace block ~ ~-1 ~ container.2 with minecraft:air
item replace block ~ ~-1 ~ container.3 with minecraft:air
item replace block ~ ~-1 ~ container.4 with minecraft:air
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:scaffolding",Count:1b}}

particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.use master @a[distance=..5]