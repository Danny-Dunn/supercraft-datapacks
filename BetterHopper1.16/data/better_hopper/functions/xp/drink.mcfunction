advancement revoke @s only better_hopper:better_hopper/trigger/drink

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{bhXpBottle:1b}}]}] store result score @s bh_hopper_xp run data get entity @s Inventory[{Slot:-106b}].tag.xppoints

execute if entity @s[nbt={SelectedItem:{tag:{bhXpBottle:1b}}}] store result score @s bh_hopper_xp run data get entity @s SelectedItem.tag.xppoints

execute if score @s bh_hopper_xp matches 1024.. run function better_hopper:xp/give_xp/1024
execute if score @s bh_hopper_xp matches 512.. run function better_hopper:xp/give_xp/512
execute if score @s bh_hopper_xp matches 256.. run function better_hopper:xp/give_xp/256
execute if score @s bh_hopper_xp matches 128.. run function better_hopper:xp/give_xp/128
execute if score @s bh_hopper_xp matches 64.. run function better_hopper:xp/give_xp/64
execute if score @s bh_hopper_xp matches 32.. run function better_hopper:xp/give_xp/32
execute if score @s bh_hopper_xp matches 16.. run function better_hopper:xp/give_xp/16
execute if score @s bh_hopper_xp matches 8.. run function better_hopper:xp/give_xp/8
execute if score @s bh_hopper_xp matches 4.. run function better_hopper:xp/give_xp/4
execute if score @s bh_hopper_xp matches 2.. run function better_hopper:xp/give_xp/2
execute if score @s bh_hopper_xp matches 1.. run function better_hopper:xp/give_xp/1