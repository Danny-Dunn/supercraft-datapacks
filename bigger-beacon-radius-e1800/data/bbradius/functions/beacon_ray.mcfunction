scoreboard players add #ray_length bbr.dummy 1
execute if block ~ ~1 ~ minecraft:beacon run function bbradius:beacon_check
execute if block ~ ~ ~ minecraft:beacon run function bbradius:beacon_check
execute if block ~ ~ ~ #bbradius:ray_ignore if score #ray_length bbr.dummy < #player_reach bbr.dummy positioned ^ ^ ^0.05 run function bbradius:beacon_ray