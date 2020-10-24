data remove storage minecraft:hopper Items
data modify storage minecraft:hopper Items merge from block ~ ~-1 ~ Items[{Slot:0b}]
data remove storage minecraft:hopper Items.Slot
data modify block ~ ~-1 ~ Items[{Slot:1b}].Slot set value 0b
data modify block ~ ~-1 ~ Items[{Slot:2b}].Slot set value 1b
data modify block ~ ~-1 ~ Items[{Slot:3b}].Slot set value 2b
data modify block ~ ~-1 ~ Items[{Slot:4b}].Slot set value 3b
data modify block ~ ~-1 ~ Items[{Slot:4b}] merge from storage minecraft:hopper Items

