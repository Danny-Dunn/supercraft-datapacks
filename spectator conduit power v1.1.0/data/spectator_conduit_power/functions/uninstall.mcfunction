# Desc: Removes all scores within the datapack
#
# Called by: main:uninstall_message

schedule clear spectator_conduit_power:tick

scoreboard objectives remove conduit_power
scoreboard objectives remove scp_toggle