# Desc: Controls the size of phatoms around players who haven't slept
#
# Called by: #minecraft:load

execute as @e[type=phantom,tag=!larPha.done] at @s if score @p lp_rest matches 144000..216000 run data merge entity @s {Size:3,Tags:["larPha.done"],Attributes:[{Base:25.0d,Name:"generic.max_health"},{Base:1.0d,Name:"generic.movement_speed"},{Base:20.0d,Name:"generic.follow_range"},{Base:15.0d,Name:"generic.attack_damage"}],Health:25.0f}
execute as @e[type=phantom,tag=!larPha.done] at @s if score @p lp_rest matches 216000..288000 run data merge entity @s {Size:5,Tags:["larPha.done"],Attributes:[{Base:30.0d,Name:"generic.max_health"},{Base:1.3d,Name:"generic.movement_speed"},{Base:24.0d,Name:"generic.follow_range"},{Base:17.0d,Name:"generic.attack_damage"}],Health:30.0f}
execute as @e[type=phantom,tag=!larPha.done] at @s if score @p lp_rest matches 288000..2400000 run data merge entity @s {Size:7,Tags:["larPha.done"],Attributes:[{Base:35.0d,Name:"generic.max_health"},{Base:1.6d,Name:"generic.movement_speed"},{Base:28.0d,Name:"generic.follow_range"},{Base:20.0d,Name:"generic.attack_damage"}],Health:35.0f}
execute as @e[type=phantom,tag=!larPha.done] at @s if score @p lp_rest matches 2400000.. run data merge entity @s {Size:20,Tags:["larPha.done"],Attributes:[{Base:100.0d,Name:"generic.max_health"},{Base:2d,Name:"generic.movement_speed"},{Base:50.0d,Name:"generic.follow_range"},{Base:30.0d,Name:"generic.attack_damage"}],Health:100.0f}

schedule function larger_phantoms:second 1s