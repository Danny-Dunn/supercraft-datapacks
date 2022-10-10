execute as @e[distance=..1,type=!player] at @e[distance=..1,type=!player] run data merge entity @s {NoAI:0b}
execute as @e[type=!player] if score @s amogus = @p amogus run tag @s add amogus
execute as @e[type=!player] if score @s amogus = @p amogus run data merge entity @s {Invulnerable:0b}
execute as @s at @s as @e[distance=0.01..,type=!player] if score @s amogus = @p amogus run data merge entity @s {NoAI:1b}
execute as @s at @s as @e[distance=0.01..,type=!player] if score @s amogus = @p amogus rotated ~ 0 run tp @s ^ ^ ^-0.5 ~ ~
execute as @e[type=!player] at @s if score @s amogus = @p amogus if block ~ ~1 ~ #decalife:nosolids run effect give @p minecraft:resistance 1 255 true
execute as @e[type=!player] at @s if score @s amogus = @p amogus if block ~ ~ ~ #decalife:nosolids run effect give @p minecraft:resistance 1 255 true
execute as @e[type=!player] at @s if score @s amogus = @p amogus if block ~ ~1 ~ #decalife:nosolids run effect give @p minecraft:invisibility 1 1 true
execute as @e[type=!player] at @s if score @s amogus = @p amogus if block ~ ~ ~ #decalife:nosolids run effect give @p minecraft:invisibility 1 1 true
execute as @s at @s as @e[distance=0.01..,type=!player] if score @s amogus = @p amogus at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=!player] at @s if score @s amogus = @p amogus unless block ~ ~1 ~ #decalife:nosolids run effect give @s minecraft:invisibility 1 1 true
execute as @e[type=!player] at @s if score @s amogus = @p amogus unless block ~ ~ ~ #decalife:nosolids run effect give @s minecraft:invisibility 1 1 true
execute as @e[type=!player] at @s if score @s amogus = @p amogus unless block ~ ~1 ~ #decalife:nosolids run data merge entity @s {Invulnerable:1b}
execute as @e[type=!player] at @s if score @s amogus = @p amogus unless block ~ ~ ~ #decalife:nosolids run data merge entity @s {Invulnerable:1b}
execute as @e[type=!player] if score @s amogus = @p amogus run team join amogus @s
