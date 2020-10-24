#Refill filter#
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:0b}]} run replaceitem block ~ ~-1 ~ container.0 minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:1b}]} run replaceitem block ~ ~-1 ~ container.1 minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:2b}]} run replaceitem block ~ ~-1 ~ container.2 minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:3b}]} run replaceitem block ~ ~-1 ~ container.3 minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:4b}]} run replaceitem block ~ ~-1 ~ container.4 minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}

scoreboard players set Count bh_filter 1
execute store result score Count bh_filter run data get block ~ ~-1 ~ Items[{Slot:0b}].Count 1
execute if score Count bh_filter matches 1 run function better_hopper:filter/check
