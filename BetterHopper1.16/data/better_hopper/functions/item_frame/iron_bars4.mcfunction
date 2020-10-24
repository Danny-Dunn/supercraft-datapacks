tag @s add bh_hopper_type_xp
tag @s remove bh_hopper_type_vacuum
replaceitem entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 minecraft:air
replaceitem entity @s armor.head minecraft:spawner
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1b}}

particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.use master @a[distance=..5]