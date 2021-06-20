# Desc: Toggles Conduit Power on/off based on toggle value
#
# Called by: spectator_conduit_power:tick

# Multiply by -1 to invert
scoreboard players operation @s scp_toggle *= scp_toggle scp_toggle

# Tag
tag @s[scores={scp_toggle=1}] add has_conduit_power
tag @s[scores={scp_toggle=-1}] remove has_conduit_power

# Apply Conduit Power
effect give @s[scores={scp_toggle=1}] conduit_power 1000000 99 true
effect clear @s[scores={scp_toggle=-1}] conduit_power

# Tellraw
tellraw @s[scores={scp_toggle=1}] {"text":"Conduit Power toggled on.","color":"yellow"}
tellraw @s[scores={scp_toggle=-1}] {"text":"Conduit Power toggled off.","color":"yellow"}