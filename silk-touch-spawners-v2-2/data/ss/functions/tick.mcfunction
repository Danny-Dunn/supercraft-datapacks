#Set player's selected spawner type
execute as @a[scores={SS_PlacedSpawner=0},nbt={SelectedItem:{id:"minecraft:spawner"}}] run function ss:players/settype_mainhand
execute as @a[scores={SS_PlacedSpawner=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:spawner"}]},nbt=!{SelectedItem:{id:"minecraft:spawner"}}] run function ss:players/settype_offhand

#search spawners
execute as @a[scores={SS_PlacedSpawner=1..}] at @s run function ss:spawner/search
scoreboard players set @a SS_PlacedSpawner 0

scoreboard players reset @a[nbt=!{SelectedItem:{id:"minecraft:spawner"}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:spawner"}]}] SS_Type

#kill spawner xp
execute as @e[type=minecraft:experience_orb,nbt={Age:0s}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spawner"}},distance=..1] run kill @s

#update spawner item
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:spawner"}}] run function ss:spawner/update_item