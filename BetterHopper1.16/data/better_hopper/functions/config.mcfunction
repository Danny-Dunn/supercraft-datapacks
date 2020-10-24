tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]
tellraw @p [""]

execute if score #cooldown bh_config matches 0 run tellraw @p ["",{"text":"[Cooldown Reduction]  :  ","bold":true,"color":"gold"},{"text":"On","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #cooldown bh_config 1"}},{"text":"   "},{"text":"Off","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #cooldown bh_config 0"}}]
execute if score #cooldown bh_config matches 1 run tellraw @p ["",{"text":"[Cooldown Reduction]  :  ","bold":true,"color":"gold"},{"text":"On","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #cooldown bh_config 1"}},{"text":"   "},{"text":"Off","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #cooldown bh_config 0"}}]
execute if score #vacuum bh_config matches 0 run tellraw @p ["",{"text":"[Vacuum Hopper]       :  ","bold":true,"color":"dark_purple"},{"text":"On","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #vacuum bh_config 1"}},{"text":"   "},{"text":"Off","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #vacuum bh_config 0"}}]
execute if score #vacuum bh_config matches 1 run tellraw @p ["",{"text":"[Vacuum Hopper]       :  ","bold":true,"color":"dark_purple"},{"text":"On","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #vacuum bh_config 1"}},{"text":"   "},{"text":"Off","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #vacuum bh_config 0"}}]
execute if score #filter bh_config matches 0 run tellraw @p ["",{"text":"[Filter Hopper]         :  ","bold":true,"color":"dark_gray"},{"text":"On","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #filter bh_config 1"}},{"text":"   "},{"text":"Off","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #filter bh_config 0"}}]
execute if score #filter bh_config matches 1 run tellraw @p ["",{"text":"[Filter Hopper]         :  ","bold":true,"color":"dark_gray"},{"text":"On","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #filter bh_config 1"}},{"text":"   "},{"text":"Off","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #filter bh_config 0"}}]
execute if score #xp bh_config matches 0 run tellraw @p ["",{"text":"[Xp Hopper]             :  ","bold":true,"color":"green"},{"text":"On","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #xp bh_config 1"}},{"text":"   "},{"text":"Off","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #xp bh_config 0"}}]
execute if score #xp bh_config matches 1 run tellraw @p ["",{"text":"[Xp Hopper]             :  ","bold":true,"color":"green"},{"text":"On","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #xp bh_config 1"}},{"text":"   "},{"text":"Off","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #xp bh_config 0"}}]









