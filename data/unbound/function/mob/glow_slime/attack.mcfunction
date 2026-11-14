playsound entity.slime.death hostile @a[distance=..32] ~ ~ ~ 1 1
playsound block.trial_spawner.spawn_item_begin hostile @a[distance=..32] ~ ~ ~ 1 1.9
playsound block.trial_spawner.spawn_item_begin hostile @a[distance=..32] ~ ~ ~ 2 1.2


playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 1 .8
playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..32] ~ ~ ~ 1 2

#particle electric_spark ~ ~.5 ~ 1 1 1 .05 30 force @a[distance=..32]

particle glow_squid_ink ~ ~-1 ~ .3 .3 .3 .4 15 force @a[distance=..128]
particle glow_squid_ink ~ ~-1 ~ .3 .3 .3 .8 15 force @a[distance=..128]

particle minecraft:wax_off ~ ~ ~ 0 0 0 40 50 normal

execute positioned ~ ~-1 ~ as @e[distance=0.0001..4,type=!#unbound:misc,type=!slime] run damage @s 5 mob_attack by @n[type=slime,distance=..2]