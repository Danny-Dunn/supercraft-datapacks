execute if entity @s[tag=bh_hopper_type_vacuum] positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if entity @s[tag=bh_hopper_type_filter] positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:scaffolding",Count:1b}}
execute if entity @s[tag=bh_hopper_type_xp] positioned ~ ~1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_bars",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_gold] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_emerald] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_emerald] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_diamond] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b}}
execute if entity @s[tag=bh_hopper_upgrade_netherite] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute if entity @s[tag=bh_hopper_type_xp,scores={bh_hopper_xp=1..}] run summon minecraft:experience_orb ~ ~1 ~ {Value:0s}
execute positioned ~ ~1 ~ store result entity @e[type=minecraft:experience_orb,limit=1,distance=..0.5] Value short 1 run scoreboard players get @s bh_hopper_xp
data merge entity @e[limit=1,distance=..1,type=item,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:'{"text":"Better Hopper"}'}}}}] {Item:{tag:{RepairCost: 0,display:{Name:'{"text":"Better"}'}}}}
kill @s