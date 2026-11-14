

playsound entity.allay.item_taken player @a[distance=..32] ~ ~ ~ .1 2
playsound minecraft:block.amethyst_block.step player @a[distance=..32] ~ ~ ~ 1 1.5

playsound minecraft:block.trial_spawner.spawn_item_begin player @a[distance=..32] ~ ~ ~ .5 2


execute at @n[distance=..10,type=marker,tag=unbound_fairy_in_a_bottle] run particle wax_off ~ ~ ~ .3 .3 .3 5 5 force @a[distance=..64]


#


execute at @n[distance=..10,type=marker,tag=unbound_fairy_in_a_bottle] run function unbound:mob/fairy/summon

execute as @n[distance=..10,type=allay,tag=unbound_fairy] at @s run function unbound:mob/fairy/new_home_pos

execute at @n[distance=..10,type=marker,tag=unbound_fairy_in_a_bottle] at @s run data modify entity @n[distance=..10,type=allay,tag=unbound_fairy] home_pos set from entity @s Pos

execute at @n[distance=..10,type=marker,tag=unbound_fairy_in_a_bottle] at @s run data modify entity @n[distance=..10,type=allay,tag=unbound_fairy] home_radius set value 3

kill @n[distance=..10,type=marker,tag=unbound_fairy_in_a_bottle]

advancement revoke @s only unbound:technical/place/fairy_in_a_bottle

give @s glass_bottle

stopsound @a[distance=..20] * entity.item.pickup
