# Desc: Initializes all scores within the datapack
#
# Called by: main:tick

scoreboard objectives add conduit_power trigger "toggle §econduit power§r for §espectator§r"

# Toggle
scoreboard objectives add scp_toggle dummy
scoreboard players set scp_toggle scp_toggle -1