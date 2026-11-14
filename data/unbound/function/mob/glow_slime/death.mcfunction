playsound entity.slime.death hostile @a[distance=..32] ~ ~ ~ 1 1
playsound block.trial_spawner.spawn_item_begin hostile @a[distance=..32] ~ ~ ~ 1 1.9
playsound block.trial_spawner.spawn_item_begin hostile @a[distance=..32] ~ ~ ~ 2 1.2

playsound minecraft:entity.breeze.death block @a[distance=..64] ~ ~ ~ 1 .8


playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..32] ~ ~ ~ 1 2

playsound block.amethyst_cluster.break hostile @a[distance=..32] ~ ~ ~ 1 2
playsound block.amethyst_cluster.break hostile @a[distance=..32] ~ ~ ~ 1 2

scoreboard players reset @s unbound_mob_anim2

data modify entity @s start_interpolation set value 2
data modify entity @s interpolation_duration set value 10
data modify entity @s transformation.left_rotation set value [0.0,0.0,0.691,0.723]

particle glow_squid_ink{roll:180} ~ ~ ~ 0 0 0 .4 30 force @a[distance=..64]
particle sculk_charge{roll:180} ~ ~ ~ 0 0 0 .05 5 force @a[distance=..32]

data modify entity @s item.components."minecraft:custom_model_data".floats set value [4376029]


scoreboard players add @s unbound_mob_anim 0