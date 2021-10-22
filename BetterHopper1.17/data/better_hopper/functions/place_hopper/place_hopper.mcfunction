advancement revoke @s only better_hopper:better_hopper/trigger/place_hopper
scoreboard players set @s bh_hopper_ca 0
execute as @s anchored eyes positioned ^ ^ ^0 anchored feet run function better_hopper:place_hopper/place_hopper_reccursif