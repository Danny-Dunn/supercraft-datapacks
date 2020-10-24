setblock ~ 255 ~ minecraft:chest
data modify block ~ 255 ~ Items insert 0 from entity @s Item.tag.BlockEntityTag.Items[]
setblock ~ 255 ~ minecraft:air destroy

execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:ancient_debris"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_scrap"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_ingot"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_block"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_sword"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_shovel"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_axe"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_hoe"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_helmet"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_chestplate"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_leggings"}}] run tag @s add netherite_item
execute as @e[type=minecraft:item, y=255, distance=..3, nbt={Item:{id:"minecraft:netherite_boots"}}] run tag @s add netherite_item

execute as @e[tag=netherite_item] run data merge entity @s {PickupDelay:10s}
kill @e[type=minecraft:item, y=255, distance=..3, tag=!netherite_item]
tp @e[tag=netherite_item] ~ ~ ~

tag @e[tag=netherite_item] remove netherite_item
tag @s add removed_items
