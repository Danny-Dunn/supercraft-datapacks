execute if block ~ ~ ~ minecraft:beacon{Levels:1} positioned ~-40 ~-40 ~-40 run effect give @a[dx=80, dy=336, dz=80] minecraft:speed 16 0 true
execute if block ~ ~ ~ minecraft:beacon{Levels:2} positioned ~-60 ~-60 ~-60 run effect give @a[dx=120, dy=376, dz=120] minecraft:speed 16 0 true
execute if block ~ ~ ~ minecraft:beacon{Levels:3} positioned ~-80 ~-80 ~-80 run effect give @a[dx=160, dy=416, dz=160] minecraft:speed 16 0 true
execute if block ~ ~ ~ minecraft:beacon{Levels:4} unless block ~ ~ ~ minecraft:beacon{Secondary:1} positioned ~-100 ~-100 ~-100 run effect give @a[dx=200, dy=456, dz=200] minecraft:speed 16 0 true
execute if block ~ ~ ~ minecraft:beacon{Levels:4, Secondary:1} positioned ~-100 ~-100 ~-100 run effect give @a[dx=200, dy=456, dz=200] minecraft:speed 16 1 true