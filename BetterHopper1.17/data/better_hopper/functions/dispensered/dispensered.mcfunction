execute if block ~ ~ ~-1 minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
execute if block ~ ~ ~1 minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
execute if block ~ ~1 ~ minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
execute if block ~ ~-1 ~ minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
execute if block ~-1 ~ ~ minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
execute if block ~1 ~ ~ minecraft:dispenser[triggered=true] run function better_hopper:dispensered/convert
tag @s add bh_not_dispensered