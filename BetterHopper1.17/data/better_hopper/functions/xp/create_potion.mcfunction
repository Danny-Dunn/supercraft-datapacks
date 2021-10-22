execute if entity @s[scores={bh_hopper_xp=16..}] if block ~ ~-1 ~ hopper{Items:[{Slot:0b,id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion/slot0
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:1b,id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion/slot1
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:2b,id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion/slot2
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:3b,id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion/slot3
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:4b,id:"minecraft:glass_bottle",Count:1b}]} run function better_hopper:xp/create_potion/slot4
scoreboard players remove @s bh_hopper_xp 16
scoreboard players set @s bh_dummy 0