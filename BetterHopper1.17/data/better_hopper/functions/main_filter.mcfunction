#Refill filter#
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:0b}]} run item replace block ~ ~-1 ~ container.0 with minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:1b}]} run item replace block ~ ~-1 ~ container.1 with minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:2b}]} run item replace block ~ ~-1 ~ container.2 with minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:3b}]} run item replace block ~ ~-1 ~ container.3 with minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}
execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:4b}]} run item replace block ~ ~-1 ~ container.4 with minecraft:barrier{Tags:["bh_hopper_lock"],display:{Name:"{\"text\":\"§fPlace Item Here\"}"}}

scoreboard players set Count bh_filter 1
execute store result score Count bh_filter run data get block ~ ~-1 ~ Items[{Slot:0b}].Count 1
execute if score Count bh_filter matches 1 run function better_hopper:filter/check
