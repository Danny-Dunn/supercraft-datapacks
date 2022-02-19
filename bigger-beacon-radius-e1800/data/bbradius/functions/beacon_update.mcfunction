execute unless block ~ ~ ~ minecraft:beacon run kill @s

execute if block ~ ~ ~ minecraft:beacon{Primary:1} unless block ~ ~ ~ minecraft:beacon{Levels:0} run function bbradius:effect/speed
execute if block ~ ~ ~ minecraft:beacon{Primary:3} unless block ~ ~ ~ minecraft:beacon{Levels:0} run function bbradius:effect/haste
execute if block ~ ~ ~ minecraft:beacon{Primary:5} unless block ~ ~ ~ minecraft:beacon{Levels:0} run function bbradius:effect/strength
execute if block ~ ~ ~ minecraft:beacon{Primary:8} unless block ~ ~ ~ minecraft:beacon{Levels:0} run function bbradius:effect/jump_boost
execute if block ~ ~ ~ minecraft:beacon{Primary:11} unless block ~ ~ ~ minecraft:beacon{Levels:0} run function bbradius:effect/resistance

execute if block ~ ~ ~ minecraft:beacon{Secondary:10, Levels:4} positioned ~-100 ~-100 ~-100 run effect give @a[dx=200, dy=456, dz=200] minecraft:regeneration 16 0 true