tag @s add bh_hopper_type_xp
tag @s remove bh_hopper_type_basic
item replace entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 with minecraft:air
item replace entity @s armor.head with minecraft:spawner

particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.use master @a[distance=..5]