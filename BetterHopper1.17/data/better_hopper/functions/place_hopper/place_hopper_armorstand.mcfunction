summon armor_stand ~0.5 ~0.1 ~0.5 {Tags:["bh_hopper","bh_hopper_upgrade_basic","bh_hopper_type_basic"],Invulnerable:1,PersistenceRequired:1,NoGravity:1,Marker:1,Invisible:1,Small:0}
scoreboard players set @s bh_hopper_ca 90
data merge block ~ ~1.1 ~ {CustomName: '{"text":"Better Hopper"}'}