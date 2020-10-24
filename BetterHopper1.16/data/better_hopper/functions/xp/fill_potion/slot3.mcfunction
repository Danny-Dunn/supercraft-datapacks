scoreboard players remove @s bh_hopper_xp 16
execute store result score TEMP bh_hopper_xp run data get block ~ ~-1 ~ Items[{Slot:3b}].tag.xppoints
scoreboard players operation TEMP bh_hopper_xp += 16 bh_hopper_xp
execute store result block ~ ~-1 ~ Items[{Slot:3b}].tag.xppoints short 1 run scoreboard players get TEMP bh_hopper_xp

execute if score TEMP bh_hopper_xp matches 1408.. run replaceitem block ~ ~-1 ~ container.3 minecraft:potion{xppoints:1408s,bhXpBottle:1b,full:1b,CustomPotionColor:9436928,HideFlags:63,display:{Lore:['[{"text":"§2XP: 1408/1408"}]'],Name: "{\"text\":\"§eExperienceb Bottle\"}"},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}]}

function better_hopper:xp/lore/slot3
scoreboard players set @s bh_dummy 1