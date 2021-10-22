execute if entity @s[tag=bh_hopper_type_xp,scores={bh_hopper_xp=1..}] run summon minecraft:experience_orb ~ ~ ~ {Value:0s}
execute store result entity @e[type=minecraft:experience_orb,limit=1,distance=..0.5] Value short 1 run scoreboard players get @s bh_hopper_xp
scoreboard players reset @s bh_hopper_xp

tag @s add bh_hopper_type_filter
tag @s remove bh_hopper_type_xp
item replace entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,distance=..0.5,limit=1] container.0 with minecraft:air
item replace entity @s armor.head with minecraft:scaffolding
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_bars",Count:1b}}

particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
playsound minecraft:block.anvil.use master @a[distance=..5]