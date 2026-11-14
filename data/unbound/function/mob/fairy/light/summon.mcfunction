summon marker ~ ~ ~ {Tags:["smithed.entity","unbound_fairy_light"]}

$setblock ~ ~ ~ light[level=$(light)]

execute as @n[type=marker,tag=unbound_fairy_light] at @s run function unbound:mob/fairy/light/a_main

particle ominous_spawning ~ ~-.5 ~ .4 .4 .4 0 5 force @a[distance=..64]
particle wax_off ~ ~-.5 ~ .3 .1 .3 5 2 force @a[distance=..64]

playsound minecraft:block.eyeblossom.open block @a[distance=..32] ~ ~ ~ .2 1
playsound entity.allay.item_taken block @a[distance=..32] ~ ~ ~ .05 2