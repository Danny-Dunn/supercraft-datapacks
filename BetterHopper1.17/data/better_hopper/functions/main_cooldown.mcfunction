execute as @e[type=minecraft:armor_stand,tag=bh_hopper_upgrade_gold] at @s if block ~ ~1 ~ minecraft:hopper{TransferCooldown:8} run data merge block ~ ~1 ~ {TransferCooldown:6}
execute as @e[type=minecraft:armor_stand,tag=bh_hopper_upgrade_emerald] at @s if block ~ ~1 ~ minecraft:hopper{TransferCooldown:8} run data merge block ~ ~1 ~ {TransferCooldown:4}
execute as @e[type=minecraft:armor_stand,tag=bh_hopper_upgrade_diamond] at @s if block ~ ~1 ~ minecraft:hopper{TransferCooldown:8} run data merge block ~ ~1 ~ {TransferCooldown:2}
execute as @e[type=minecraft:armor_stand,tag=bh_hopper_upgrade_netherite] at @s run data merge block ~ ~1 ~ {TransferCooldown:0}