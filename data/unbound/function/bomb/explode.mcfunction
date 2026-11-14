
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 5 force @a[distance=..128]



particle campfire_cosy_smoke ~ ~ ~ .2 .2 .2 .02 10 force @a[distance=..64]

particle large_smoke ~ ~ ~ 0 0 0 .1 20 force @a[distance=..64]

particle large_smoke ~ ~ ~ 0 0 0 .2 10 force @a[distance=..64]

particle flame ~ ~ ~ 0 0 0 .2 50 force @a[distance=..64]
particle flame ~ ~ ~ 0 0 0 .1 50 force @a[distance=..64]

execute on origin run tag @s add world_entityowner
execute as @e[distance=..2,type=!#unbound:misc] run damage @s 12 unbound:explosion by @n[type=area_effect_cloud,tag=unbound_bomb] from @p[tag=world_entityowner,distance=..64]
execute as @e[distance=2..4,type=!#unbound:misc] run damage @s 6 unbound:explosion by @n[type=area_effect_cloud,tag=unbound_bomb] from @p[tag=world_entityowner,distance=..64]

#hard coded skeleton damage (no owner or from dispenser)

execute unless entity @p[tag=world_entityowner] as @e[distance=..2,type=!#unbound:misc] run damage @s 12 unbound:explosion by @n[type=area_effect_cloud,tag=unbound_bomb]
execute unless entity @p[tag=world_entityowner] as @e[distance=2..4,type=!#unbound:misc] run damage @s 6 unbound:explosion by @n[type=area_effect_cloud,tag=unbound_bomb]


execute on origin run tag @s remove world_entityowner


#execute if block ~ ~ ~ #replaceable run setblock ~ ~ ~ fire

playsound entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 1.1
