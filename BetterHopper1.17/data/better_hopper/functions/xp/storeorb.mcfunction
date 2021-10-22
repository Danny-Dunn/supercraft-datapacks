execute store result score xporb bh_hopper_xp run data get entity @e[type=minecraft:experience_orb,limit=1,sort=nearest] Value 1
scoreboard players operation @s bh_hopper_xp += xporb bh_hopper_xp
kill @e[type=minecraft:experience_orb,limit=1,sort=nearest]