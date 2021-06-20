# Desc: All commands here run every tick
#
# Called by: main:tick

schedule function spectator_conduit_power:tick 1t

# Initialise players
# Scores → 0
scoreboard players add @a conduit_power 0
scoreboard players add @a scp_toggle 0
# Set toggle to -1
scoreboard players set @a[scores={scp_toggle=0}] scp_toggle -1
# Enable trigger
scoreboard players enable @a conduit_power

# Handle gamemode change
execute as @a[gamemode=!spectator,tag=has_conduit_power] at @s run function spectator_conduit_power:gamemode_change

# Track player initiating toggle
execute as @a[scores={conduit_power=1..}] at @s run tag @s add scp_toggle
execute as @a[scores={conduit_power=..-1}] at @s run tag @s add scp_toggle

# Toggle
execute as @a[tag=scp_toggle,gamemode=spectator] at @s[tag=!switched_gamemode] run function spectator_conduit_power:toggle
execute as @a[tag=scp_toggle,gamemode=!spectator] at @s[tag=!switched_gamemode] run tellraw @s {"text": "You may only use that in spectator mode!", "color":"red"}

# Reset
scoreboard players set @a[tag=scp_toggle] conduit_power 0
tag @a[tag=scp_toggle] remove scp_toggle
tag @a[tag=switched_gamemode] remove switched_gamemode