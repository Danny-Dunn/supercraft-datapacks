execute if block ~ ~-2 ~ minecraft:hopper run data merge block ~ ~-2 ~ {TransferCooldown:8}

execute if block ~ ~-1 ~ minecraft:hopper[facing=down] if block ~ ~-2 ~ #better_hopper:container run data merge block ~ ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~ minecraft:hopper[facing=east] if block ~1 ~-1 ~ #better_hopper:container run data merge block ~ ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~ minecraft:hopper[facing=west] if block ~-1 ~-1 ~ #better_hopper:container run data merge block ~ ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~ minecraft:hopper[facing=south] if block ~ ~-1 ~1 #better_hopper:container run data merge block ~ ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~ minecraft:hopper[facing=north] if block ~ ~-1 ~-1 #better_hopper:container run data merge block ~ ~-1 ~ {TransferCooldown:8}

execute if entity @e[type=#better_hopper:container_minecart,distance=..2] run data merge block ~ ~-1 ~ {TransferCooldown:8}


scoreboard players set Counttotal bh_filter 0
execute store result score Count0 bh_filter run data get block ~ ~-1 ~ Items[{Slot:0b}].Count 1
execute store result score Count1 bh_filter run data get block ~ ~-1 ~ Items[{Slot:1b}].Count 1
execute store result score Count2 bh_filter run data get block ~ ~-1 ~ Items[{Slot:2b}].Count 1
execute store result score Count3 bh_filter run data get block ~ ~-1 ~ Items[{Slot:3b}].Count 1
execute store result score Count4 bh_filter run data get block ~ ~-1 ~ Items[{Slot:4b}].Count 1

scoreboard players operation Counttotal bh_filter += Count0 bh_filter
scoreboard players operation Counttotal bh_filter += Count1 bh_filter
scoreboard players operation Counttotal bh_filter += Count2 bh_filter
scoreboard players operation Counttotal bh_filter += Count3 bh_filter
scoreboard players operation Counttotal bh_filter += Count4 bh_filter
execute if score Counttotal bh_filter matches 6.. run function better_hopper:filter/turn
