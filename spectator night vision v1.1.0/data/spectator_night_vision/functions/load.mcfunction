# Desc: Initializes all scores within the datapack
#
# Called by: main:tick

scoreboard objectives add night_vision trigger "toggle §enight vision§r for §espectator§r"

# Toggle
scoreboard objectives add snv_toggle dummy
scoreboard players set snv_toggle snv_toggle -1