playsound minecraft:block.trial_spawner.spawn_item player @a[distance=..16] ~ ~ ~ .6 .5

execute at @n[distance=..7,nbt={HurtTime:10s}] run function unbound:amulets/necrotic/attack_particle
execute unless entity @n[distance=..7,nbt={HurtTime:10s}] positioned ^ ^ ^2.5 run function unbound:amulets/necrotic/attack_particle


advancement revoke @s only unbound:technical/attacked_mob_necrotic_kill