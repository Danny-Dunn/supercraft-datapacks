# Desc: Toggles night vision on/off based on toggle value
#
# Called by: spectator_night_vision:tick

# Multiply by -1 to invert
scoreboard players operation @s snv_toggle *= snv_toggle snv_toggle

# Tag
tag @s[scores={snv_toggle=1}] add has_night_vision
tag @s[scores={snv_toggle=-1}] remove has_night_vision

# Apply night vision
effect give @s[scores={snv_toggle=1}] night_vision 1000000 99 true
effect clear @s[scores={snv_toggle=-1}] night_vision

# Tellraw
tellraw @s[scores={snv_toggle=1}] {"text":"Night Vision toggled on.","color":"yellow"}
tellraw @s[scores={snv_toggle=-1}] {"text":"Night Vision toggled off.","color":"yellow"}