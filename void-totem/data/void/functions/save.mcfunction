execute if block ~ 0 ~ air run setblock ~ 0 ~ obsidian
execute unless block ~ 1 ~ air run setblock ~ 1 ~ air
execute unless block ~ 2 ~ air run setblock ~ 2 ~ air
tp @s ~ 1 ~
summon leash_knot ~ 1 ~ {Tags:[positioned]}
tp @s @e[limit=1,sort=nearest,type=leash_knot,tag=positioned]
kill @e[limit=1,sort=nearest,type=leash_knot,tag=positioned]


