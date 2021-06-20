# Desc: Sets player into normal state
#
# Called by: spectator_night_vision:tick

effect clear @s night_vision
scoreboard players set @s snv_toggle -1
tellraw @s {"text":"Night Vision toggled off due to gamemode change.","color":"red"}
tag @s remove has_night_vision
tag @s add switched_gamemode