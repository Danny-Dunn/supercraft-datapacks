scoreboard objectives add bh_hopper_ca dummy
scoreboard objectives add bh_hopper_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add bh_hopper_xp dummy
scoreboard objectives add bh_config dummy
scoreboard objectives add bh_dummy dummy
scoreboard objectives add bh_filter dummy

scoreboard players set 16 bh_hopper_xp 16

execute unless score #vacuum bh_config matches 0..1 run scoreboard players set #vacuum bh_config 1
execute unless score #filter bh_config matches 0..1 run scoreboard players set #filter bh_config 1
execute unless score #xp bh_config matches 0..1 run scoreboard players set #xp bh_config 1
execute unless score #cooldown bh_config matches 0..1 run scoreboard players set #cooldown bh_config 1

tellraw @a ["",{"text":"Filter Hopper DataPack successfully loaded !! ","color":"dark_aqua","hoverEvent":{"action":"show_text","value":"By Kikipunk"}},{"text":"Version 1.3!!\n","color":"gold","hoverEvent":{"action":"show_text","value":"By Kikipunk"}},{"text":"[UNINSTALL]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function better_hopper:uninstall"},"hoverEvent":{"action":"show_text","contents":"Deletes all scores, tags and kills all entities related to the datapack."}}]

advancement revoke @a only better_hopper:better_hopper/trigger/place_hopper