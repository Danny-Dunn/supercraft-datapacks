execute if entity @s[scores={bh_hopper_xp=16..}] if block ~ ~-1 ~ hopper{Items:[{Slot:0b,id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion/slot0
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:1b,id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion/slot1
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:2b,id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion/slot2
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:3b,id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion/slot3
execute if entity @s[scores={bh_hopper_xp=16..,bh_dummy=0}] if block ~ ~-1 ~ hopper{Items:[{Slot:4b,id:"minecraft:potion",tag:{full:0b,CustomPotionColor:9436928}}]} run function better_hopper:xp/fill_potion/slot4
scoreboard players set @s bh_dummy 0
scoreboard players set NEW bh_dummy 1