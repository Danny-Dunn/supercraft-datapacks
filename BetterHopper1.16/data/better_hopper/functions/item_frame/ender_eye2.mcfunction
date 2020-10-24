tag @s add bh_hopper_type_vacuum
tag @s remove bh_hopper_type_basic
replaceitem entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 minecraft:air
replaceitem entity @s armor.head minecraft:end_portal_frame

particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.use master @a[distance=..5]