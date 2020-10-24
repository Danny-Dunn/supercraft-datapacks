execute store result score @s bh_hopper_xp run data get entity @s Item.tag.xppoints
summon minecraft:experience_orb ~ ~ ~ {Value:0s}
execute store result entity @e[type=minecraft:experience_orb,limit=1,distance=..0.5] Value short 1 run scoreboard players get @s bh_hopper_xp
kill @s