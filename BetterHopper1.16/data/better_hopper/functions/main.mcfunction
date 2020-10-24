execute as @e[type=minecraft:armor_stand,tag=bh_hopper] at @s positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:hopper run function better_hopper:kill
execute as @e[type=minecraft:item_frame,tag=bh_hopper_item_frame] at @s unless block ~ ~-0.5 ~ minecraft:hopper run kill @s
execute as @e[type=minecraft:item_frame,tag=bh_hopper_item_frame] at @s unless block ~ ~ ~ minecraft:air run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{Tags:["bh_hopper_lock"]}}}] run kill @s
clear @a minecraft:barrier{Tags:["bh_hopper_lock"]}

execute if score #filter bh_config matches 0 as @e[type=minecraft:armor_stand,tag=bh_hopper_type_filter] at @s positioned ~ ~1 ~ if block ~ ~ ~ minecraft:hopper{Items:[{tag:{Tags:["bh_hopper_lock"]}}]} run function better_hopper:clear_lock

execute as @e[type=minecraft:armor_stand,tag=bh_hopper] at @s positioned ~ ~2 ~ if block ~ ~ ~ minecraft:air if entity @a[distance=0.7..2,scores={bh_hopper_sneak=1..}] unless entity @e[type=item_frame,distance=..0.5,tag=bh_hopper_item_frame] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Tags:["bh_hopper_item_frame"],Invulnerable:1b}
execute as @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt=!{Item:{Count:1b}}] at @s unless entity @a[distance=0.7..2,scores={bh_hopper_sneak=1..}] run kill @s

execute as @e[type=minecraft:armor_stand,tag=bh_hopper] at @s positioned ~ ~2 ~ if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{Count:1b}},distance=..0.5,limit=1] run function better_hopper:item_frame/item

execute if score #vacuum bh_config matches 1 as @e[type=minecraft:armor_stand,tag=bh_hopper_type_vacuum] at @s positioned ~ ~2.5 ~ run function better_hopper:main_vacuum
execute if score #xp bh_config matches 1 as @e[type=minecraft:armor_stand,tag=bh_hopper_type_xp] at @s positioned ~ ~2 ~ run function better_hopper:main_xp
execute if score #cooldown bh_config matches 1 as @e[type=minecraft:armor_stand,tag=bh_hopper] at @s positioned ~ ~2 ~ run function better_hopper:main_cooldown
execute if score #filter bh_config matches 1 as @e[type=minecraft:armor_stand,tag=bh_hopper_type_filter] at @s positioned ~ ~2 ~ run function better_hopper:main_filter

execute as @a[scores={bh_hopper_sneak=1..}] run scoreboard players set @s bh_hopper_sneak 0


execute as @e[type=minecraft:item,nbt={Item:{tag:{bhXpBottle:1b}}},tag=!bh_not_dispensered] at @s run function better_hopper:dispensered/dispensered
