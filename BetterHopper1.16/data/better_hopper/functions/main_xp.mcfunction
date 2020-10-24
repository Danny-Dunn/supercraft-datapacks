execute as @a[scores={bh_hopper_sneak=1..},distance=..0.5,level=2..] at @s run function better_hopper:xp/stock_xp

execute if entity @s[tag=!bh_hopper_upgrade_gold,tag=!bh_hopper_upgrade_emerald,tag=!bh_hopper_upgrade_diamond,tag=!bh_hopper_upgrade_netherite] if entity @e[type=minecraft:experience_orb,distance=..1] run function better_hopper:xp/storeorb
execute if entity @s[tag=bh_hopper_upgrade_gold] if entity @e[type=minecraft:experience_orb,distance=..2] run function better_hopper:xp/storeorb
execute if entity @s[tag=bh_hopper_upgrade_emerald] if entity @e[type=minecraft:experience_orb,distance=..3] run function better_hopper:xp/storeorb
execute if entity @s[tag=bh_hopper_upgrade_diamond] if entity @e[type=minecraft:experience_orb,distance=..5] run function better_hopper:xp/storeorb
execute if entity @s[tag=bh_hopper_upgrade_netherite] if entity @e[type=minecraft:experience_orb,distance=..7] run function better_hopper:xp/storeorb

execute if entity @s[scores={bh_hopper_xp=16..}] if block ~ ~-1 ~ hopper{Items:[{id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion
execute if entity @s[scores={bh_hopper_xp=16..}] if score NEW bh_dummy matches 0 if block ~ ~-1 ~ hopper{Items:[{id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion
scoreboard players set NEW bh_dummy 0