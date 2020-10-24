scoreboard objectives remove bh_hopper_ca
scoreboard objectives remove bh_hopper_sneak
scoreboard objectives remove bh_hopper_xp
scoreboard objectives remove bh_config
scoreboard objectives remove bh_dummy
scoreboard objectives remove bh_filter

kill @e[tag=bh_hopper]

datapack disable "file/BetterHopper"
datapack disable "file/BetterHopper.zip"

tellraw @a ["",{"text":"Filter Hopper DataPack successfully Uninstalled !! ","color":"dark_red","hoverEvent":{"action":"show_text","value":"By Kikipunk"}}]