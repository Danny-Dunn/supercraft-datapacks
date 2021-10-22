tag @s add bh_hopper_upgrade_gold
tag @s remove bh_hopper_upgrade_basic
item replace entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 with minecraft:air
data merge block ~ ~-1 ~ {CustomName: '{"text":"§6Better Golden Hopper"}'}
particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.place master @a[distance=..5]