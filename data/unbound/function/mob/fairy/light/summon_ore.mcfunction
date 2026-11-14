function unbound:mob/fairy/light/summon {light:6}

particle ominous_spawning ~ ~-.5 ~ 1 1 1 0 20 force @a[distance=..64]

execute at @s run playsound minecraft:block.eyeblossom.open block @a[distance=..32] ~ ~ ~ .5 1
execute at @s run playsound entity.allay.item_taken block @a[distance=..32] ~ ~ ~ .2 2