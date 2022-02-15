# Controls everything to do with datapack_name

schedule function thunder_shrine:tick 1t

scoreboard players enable @a ts_help
execute as @a if score @s ts_help matches 1.. run function thunder_shrine:show_help

execute as @e[tag=ts_itemDetection] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:copper_ingot",Count:64b}}] run function thunder_shrine:initiate_storm
execute as @e[tag=ts_itemDetection] at @s run particle minecraft:enchant ~ ~ ~ .1 .1 .1 1 1
