# Desc: All commands here run every tick
#
# Called by: main:tick

schedule function spectator_night_vision:tick 1t

# Initialise players
# Scores → 0
scoreboard players add @a night_vision 0
scoreboard players add @a snv_toggle 0
# Set toggle to -1
scoreboard players set @a[scores={snv_toggle=0}] snv_toggle -1
# Enable trigger
scoreboard players enable @a night_vision

# Handle gamemode change
execute as @a[gamemode=!spectator,tag=has_night_vision] at @s run function spectator_night_vision:gamemode_change

# Track player initiating toggle
execute as @a[scores={night_vision=1..}] at @s run tag @s add snv_toggle
execute as @a[scores={night_vision=..-1}] at @s run tag @s add snv_toggle

# Toggle
execute as @a[tag=snv_toggle,gamemode=spectator] at @s[tag=!switched_gamemode] run function spectator_night_vision:toggle
execute as @a[tag=snv_toggle,gamemode=!spectator] at @s[tag=!switched_gamemode] run tellraw @s {"text": "You may only use that in spectator mode!", "color":"red"}

# Reset
scoreboard players set @a[tag=snv_toggle] night_vision 0
tag @a[tag=snv_toggle] remove snv_toggle
tag @a[tag=switched_gamemode] remove switched_gamemode