execute positioned ^-.3 ^ ^ run function unbound:mob/phantom_rider/summon
execute positioned ^.3 ^ ^ run function unbound:mob/phantom_rider/summon

particle wax_off ~ ~ ~ 0 0 0 100 100 force @a[distance=..128]

execute at @a[distance=..64] run playsound minecraft:entity.skeleton_horse.death hostile @p[distance=..64] ~ ~ ~ .3 .8
execute at @a[distance=..48] run playsound minecraft:entity.phantom.swoop hostile @p[distance=..64] ~ ~ ~ 2 .95
execute at @a[distance=..48] run playsound minecraft:entity.phantom.swoop hostile @p[distance=..64] ~ ~ ~ 2 1
execute at @a[distance=..48] run playsound minecraft:entity.phantom.swoop hostile @p[distance=..64] ~ ~ ~ 2 1

