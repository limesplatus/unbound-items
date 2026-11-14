playsound minecraft:block.trial_spawner.spawn_item player @a[distance=..16] ~ ~ ~ .9 1.2



advancement revoke @s only unbound:technical/attacked_mob_necrotic

execute if predicate unbound:player/falling at @n[distance=..7,nbt={HurtTime:10s}] run function unbound:amulets/necrotic/attack_particle
execute if predicate unbound:player/falling unless entity @n[distance=..7,nbt={HurtTime:10s}] positioned ^ ^ ^2.5 run function unbound:amulets/necrotic/attack_particle

playsound block.iron_door.close player @a[distance=..20] ~ ~ ~ 1 1.8