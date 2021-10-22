execute if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand

execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={fh_hopper_ca=90..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand
execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:hopper{CustomName:'{"text":"Better"}'} align xyz positioned ~ ~-1.1 ~ unless entity @e[dx=0,dy=0,dz=0,tag=bh_hopper] run function better_hopper:place_hopper/place_hopper_armorstand

scoreboard players add @s bh_hopper_ca 1

execute unless entity @s[scores={bh_hopper_ca=90..}] positioned ^ ^ ^0.1 run function better_hopper:place_hopper/place_hopper_reccursif
