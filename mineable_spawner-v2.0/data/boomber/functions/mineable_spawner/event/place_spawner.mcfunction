#define storage boomber:mineable_spawner

execute if data entity @s SelectedItem{id: "minecraft:spawner"} run data modify storage boomber:mineable_spawner item set from entity @s SelectedItem
execute unless data entity @s SelectedItem{id: "minecraft:spawner"} run data modify storage boomber:mineable_spawner item set from entity @s Inventory[{Slot: -106b}]

scoreboard players set #raycast bb.ms.var 0
execute anchored eyes positioned ^ ^ ^0.1 run function boomber:mineable_spawner/raycast/run

advancement revoke @s from boomber:mineable_spawner/event/root