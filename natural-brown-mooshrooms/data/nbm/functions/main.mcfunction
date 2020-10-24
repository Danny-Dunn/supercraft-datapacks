execute as @e[type=minecraft:mooshroom, predicate=nbm:is_baby] run tag @s add checked
execute as @e[type=minecraft:mooshroom, tag=!unchecked, tag=!checked] run tag @s add unchecked
execute as @e[type=minecraft:mooshroom, tag=unchecked, predicate=nbm:chance] run data merge entity @s {Type:brown}
execute as @e[type=minecraft:mooshroom, tag=unchecked] run tag @s add checked
execute as @e[type=minecraft:mooshroom, tag=unchecked, tag=checked] run tag @s remove unchecked
