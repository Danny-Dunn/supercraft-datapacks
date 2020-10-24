execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt=!{Item:{id:"minecraft:iron_bars"}},nbt=!{Item:{id:"minecraft:scaffolding"}},nbt=!{Item:{id:"minecraft:emerald"}},nbt=!{Item:{id:"minecraft:gold_ingot"}},nbt=!{Item:{id:"minecraft:diamond"}},nbt=!{Item:{id:"minecraft:netherite_ingot"}},nbt=!{Item:{id:"minecraft:ender_eye"}},distance=..0.5,limit=1] run function better_hopper:item_frame/delete

execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:iron_bars"}},distance=..0.5,limit=1] run function better_hopper:item_frame/iron_bars
execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:scaffolding"}},distance=..0.5,limit=1] run function better_hopper:item_frame/scaffolding
execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:ender_eye"}},distance=..0.5,limit=1] run function better_hopper:item_frame/ender_eye

execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..0.5,limit=1] run function better_hopper:item_frame/gold_ingot
execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:emerald"}},distance=..0.5,limit=1] run function better_hopper:item_frame/emerald
execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:diamond"}},distance=..0.5,limit=1] run function better_hopper:item_frame/diamond
execute if entity @e[type=minecraft:item_frame,tag=bh_hopper_item_frame,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..0.5,limit=1] run function better_hopper:item_frame/netherite_ingot





