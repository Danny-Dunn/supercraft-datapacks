# Desc: Sets player into normal state
#
# Called by: spectator_conduit_power:tick

effect clear @s conduit_power
scoreboard players set @s scp_toggle -1
tellraw @s {"text":"Conduit Power toggled off due to gamemode change.","color":"red"}
tag @s remove has_conduit_power
tag @s add switched_gamemode