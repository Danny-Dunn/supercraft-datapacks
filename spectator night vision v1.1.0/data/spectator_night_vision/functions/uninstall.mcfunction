# Desc: Removes all scores within the datapack
#
# Called by: main:uninstall_message

schedule clear spectator_night_vision:tick

scoreboard objectives remove night_vision
scoreboard objectives remove snv_toggle